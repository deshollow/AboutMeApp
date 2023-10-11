//
//  Model.swift
//  AboutMeApp
//
//  Created by deshollow on 11.10.2023.
//

import Foundation
import UIKit


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person(
                name: "Alexei",
                surname: "Demin",
                company: "Apple",
                department: "App dev",
                jobtitle: "Junior Swift dev",
                picture: "myname",
                description: Description(
                    info: """
Donda West:
...that she wrote, "Speech to the Young: Speech to the Progress-Toward
Say to them,
say to the down-keepers,
the sun-slappers,
the self-soilers,
the harmony-hushers,
Even if you are not ready for day
it cannot always be night.👻
"""
                    
                )
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let department: String
    let jobtitle: String
    let picture: String
    let description: Description
}

struct Description {
    let info: String
}






