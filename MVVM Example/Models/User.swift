//
//  User.swift
//  MVVM Example
//
//  Created by Azik on 01.02.2023.
//

import Foundation

struct User {
    let login : String?
    let password : String?
}

extension User {
    static var auth = [
        User(login: "Aza", password: "123")
    ]
}
