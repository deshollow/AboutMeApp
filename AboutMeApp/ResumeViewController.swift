//
//  ResumeViewController.swift
//  AboutMeApp
//
//  Created by deshollow on 11.10.2023.
//

import UIKit

class ResumeViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    var person: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = person.person.name
        surnameLabel.text = person.person.surname
        companyLabel.text = person.person.company
        departmentLabel.text = person.person.department
        jobTitleLabel.text = person.person.jobtitle
        
        image.image = UIImage(named: person.person.picture)
    }
    
    override func viewDidLayoutSubviews() {
        image.layer.cornerRadius = image.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let thirdVC = segue.destination as? BioViewController else {return}
        thirdVC.person = person
        thirdVC.title = "\(person.person.name) \(person.person.surname) bio"
        thirdVC.view.backgroundColor = .lightGray
    }
    
}
