//
//  DetailsOfContactsViewController.swift
//  ContactListProject
//
//  Created by Светлана Сенаторова on 19.07.2022.
//

import UIKit

class DetailsOfContactsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person.fullName
        phoneNumberLabel.text = "✆ " + person.phoneNumber
        emailLabel.text = "✉︎ " + person.email
    }
}
