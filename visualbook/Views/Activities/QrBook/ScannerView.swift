//
//  ScannerView.swift
//  visualbook
//
//  Created by visual book  on 11/08/2023.
//

import SwiftUI
import AVKit

struct ScannerView: View {
    
    //QR Code Scanner Properties
    @State private var isScanning: Bool = false
    @State private var session: AVCaptureSession = .init()
    @State private var cameraPermission: Permission = .idle
    // QR Scanner AV output
    @State private var qrOutput: AVCaptureMetadataOutput = .init()
    // Error properties
    @State private var errorMessage: String = ""
    @State private var showError: Bool = false
    @Environment(\.openURL) private  var openURL
    // camera QR output delegate
    @StateObject private var qrDelegate = QRScannerDeligate()
    // Scanned Code
    @State private var scannedCode: String = ""
    var body: some View {
        VStack(spacing: 8) {
            Button {
                 
            } label: {
                Image(systemName: "xmark")
                    .font(.title3)
                    .foregroundColor(.blue)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Place the QR code inside the Scan Area")
                .font(.title3)
                .foregroundColor(.black.opacity(0.8))
                    .padding(.top, 20)
            
            Text("Scanning will start automatically")
                .font(.callout)
                .foregroundColor(.gray)
            
            Spacer(minLength: 0)
            
            //Scanner
            GeometryReader{
                let size = $0.size
                
                ZStack{
                    CameraView(frameSize: CGSize(width: size.width, height: size.width), session: $session)
                    
                        .scaleEffect(0.97)
                    
                    
                    ForEach(0...4, id: \.self) {index in
                        let rotation = Double(index) * 90
                        
                        RoundedRectangle(cornerRadius: 2, style: .circular)
                            .trim(from: 0.61, to: 0.64)
                            .stroke(Color(.blue), style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                            .rotationEffect(.init(degrees: rotation))
                    }
                    
                   
                    
                   
                }
                //Square Shape
                .frame(width: size.width, height: size.width)
                // Scanner animation
                .overlay(alignment: .top, content: {
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 2.5)
                        .shadow(color:  .black.opacity(0.8), radius: 8, x: 0 , y: isScanning ? 15 : -15)
                        .offset(y: isScanning ? size.width : 0 )
                })
                
                //to make it center
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            
            Spacer(minLength: 15)
            
            Button {
                if session.isRunning && cameraPermission == .approved {
                    reactivateCamera()
                    activateScannerAnimation()
                }
            } label: {
                Image(systemName: "qrcode.viewfinder")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
                
                
            }
            Spacer(minLength: 45)

        }
        .padding(15)
        // Checking Camera Permission when the view is visible
        .onAppear(perform: checkCameraPermissiom)
        .alert(errorMessage, isPresented: $showError) {
            // showing settings button if access is denied
            if cameraPermission == .denied {
                Button("Settings") {
                    let settingsString = UIApplication.openSettingsURLString
                    if let settingsURL = URL(string: settingsString) {
                        // opening Apps setting
                        openURL(settingsURL)
                    }
                }
                Button("Cancel", role: .cancel) {
                }
            }
        }
        .onChange(of: qrDelegate.scannedCode) { newValue in
            if let code = newValue {
                scannedCode = code
                // when the first scanned code is availible, stop the camera
                session.stopRunning()
                // deactivate scanner animation
                deActivateScannerAnimation()
                // clear data on delegate
                qrDelegate.scannedCode = nil 
            }
        }
        

         
    }
    
    func reactivateCamera() {
        DispatchQueue.global(qos: .background).async {
            session.startRunning()
        }
    }
    
    // activating scanner animation method
    func activateScannerAnimation(){
        withAnimation(.easeInOut(duration: 0.85).delay(0.1).repeatForever(autoreverses: true)) {
            
            isScanning = true
        }
    }
    
    // De activating scanner animation method
    func deActivateScannerAnimation(){
        withAnimation(.easeInOut(duration: 0.85)) {
            
            isScanning = false
        }
    }
    
    // checking camera permission
    
    func checkCameraPermissiom() {
        Task {
            switch AVCaptureDevice.authorizationStatus(for: .video) {
            case.authorized:
                cameraPermission = .approved
                if session.inputs.isEmpty {
                    //New Setup
                    setUpCamera()
                } else {
                    //already existinf
                    session.startRunning()
                }
            case.notDetermined:
                // Requesting Camera Access
                if await  AVCaptureDevice.requestAccess(for: .video) {
                    //permission granted
                    cameraPermission = .approved
                    setUpCamera()
                    
                } else {
                    //permission denied
                    cameraPermission = .denied
                    // Error message
                    presentError("Please provide camera access")
                    
                }
            case.denied,.restricted:
                cameraPermission = .denied
                presentError("Please provide camera access")
            default: break
            }
        }
    }
    
    // Setting up Camera
    func setUpCamera(){
        do{
            // finding back camera
            
            guard let device = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInWideAngleCamera], mediaType: .video, position: .back).devices.first else {
                presentError("UNKNOWN DEVICE ERROR")
                return
            }
            
            // camera input
            let input = try AVCaptureDeviceInput(device: device )
            // checking if input and output can be added to the session
            guard session.canAddInput(input), session.canAddOutput(qrOutput) else {
                presentError("UNKNOWN INPUT/OUTPUT ERROR")
                return
            }
            
            
            
            //Adding input and output to camera session
            session.beginConfiguration()
            session.addInput(input)
            session.addOutput(qrOutput)
            // setting output config to read qrcode
            qrOutput.metadataObjectTypes = [.qr]
            // adding deligate to retrive the fetched qr code from camera
            
            qrOutput.setMetadataObjectsDelegate(qrDelegate, queue: .main)
            session.commitConfiguration()
            // note session must be started on background thread
            DispatchQueue.global(qos: .background).async {
                session.startRunning()
            }
            activateScannerAnimation()
        } catch {
            presentError(error.localizedDescription)
        }
    }
    
    
    // Presenting Error
    func  presentError(_ message: String) {
        errorMessage = message
        showError.toggle()
    }
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ScannerView()
    }
}
