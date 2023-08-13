//
//  String.swift
//  visualbook
//
//  Created by visual book  on 10/08/2023.
//

import Foundation


extension String {
    func isValidEmail() -> Bool {
        let regex = try! NSRegularExpression(pattern: "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,}$", options: .caseInsensitive)
        
        return regex.firstMatch(in: self, range: NSRange(location: 0, length: count )) != nil
    }
}
