//
//  FirstScreenOfContactsTableViewController.swift
//  ContactListProject
//
//  Created by Светлана Сенаторова on 19.07.2022.
//

import UIKit

class FirstScreenOfContactsTableViewController: UITableViewController {

    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstScreenCell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        content.image = UIImage(systemName: "person")
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "ShowDetails", sender: person)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsOfContactsVC = segue.destination as? DetailsOfContactsViewController else { return }
        guard let person = sender as? Person else { return }
        detailsOfContactsVC.person = person
    }
}
