//
//  SecondScreenOfContactsTableViewController.swift
//  ContactListProject
//
//  Created by Светлана Сенаторова on 19.07.2022.
//

import UIKit

class SecondScreenOfContactsTableViewController: UITableViewController {

    var persons: [Person] = []

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName.uppercased()
    } 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].rows.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondScreenCell", for: indexPath)
//        VARIANT 1
//        var content = cell.defaultContentConfiguration()
//        for _ in 0...numberOfSections(in: tableView.self) {
//            if indexPath.row == 0 {
//                content.text = persons[indexPath.section].phoneNumber
//                content.image = UIImage(systemName: "phone")
//            } else {
//                content.text = persons[indexPath.section].email
//                content.image = UIImage(systemName: "tray")
//            }
//        }
//        VARIANT 2
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsOfContactsVC = segue.destination as? DetailsOfContactsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsOfContactsVC.person = persons[indexPath.section]
    }
   
}
