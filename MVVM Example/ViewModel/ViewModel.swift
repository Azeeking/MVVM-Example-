//
//  ViewModel.swift
//  MVVM Example
//
//  Created by Azik on 01.02.2023.
//

import Foundation
import UIKit

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    func userPressedButton(login:String,password:String){
        if login != User.auth[0].login || password != User.auth[0].password {
            statusText.value = "Fail"
            statusColor.value = .red
        } else {
            statusText.value = "Success"
            statusColor.value = .green
        }
    }
}
