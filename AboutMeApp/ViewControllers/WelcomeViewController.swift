//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by deshollow on 06.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var greetingUser: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingUser.text = "Welcome, \(user.login)!"
        
    }
}
