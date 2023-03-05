//
//  Extensions.swift
//  Fakingram
//
//  Created by thiago.santiago on 04/03/23.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
