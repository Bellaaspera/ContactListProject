//
//  SecondScreenOfContactsTableViewController.swift
//  ContactListProject
//
//  Created by Светлана Сенаторова on 19.07.2022.
//

import UIKit

class SecondScreenOfContactsTableViewController: UITableViewController {

    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    } 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondScreenCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        for _ in 0...numberOfSections(in: tableView.self) {
            if indexPath.row == 0 {
                content.text = "✆ " + persons[indexPath.section].phoneNumber
            } else {
                content.text = "✉︎ " + persons[indexPath.section].email
            }
        }
        
        cell.contentConfiguration = content
        return cell
    }
    

}
