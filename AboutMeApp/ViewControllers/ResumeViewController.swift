//
//  ResumeViewController.swift
//  AboutMeApp
//
//  Created by deshollow on 11.10.2023.
//

import UIKit

final class ResumeViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.company
        departmentLabel.text = user.person.department
        jobTitleLabel.text = user.person.jobtitle
        
        image.image = UIImage(named: user.person.picture)
    }
    
    override func viewDidLayoutSubviews() {
        image.layer.cornerRadius = image.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let thirdVC = segue.destination as? BioViewController else {return}
        thirdVC.user = user
        thirdVC.title = "\(user.person.name) \(user.person.surname) bio"
    }
    
}
