//
//  TabBarScreenController.swift
//  ContactListProject
//
//  Created by Светлана Сенаторова on 22.07.2022.
//

import UIKit

class TabBarScreenController: UITabBarController {

    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let firstNavigationVC = self.viewControllers?.first as?
                UINavigationController else { return }
        guard let firstVC = firstNavigationVC.topViewController as?
                FirstScreenOfContactsTableViewController else { return }
        firstVC.persons = persons
        guard let secondNavigationVC = self.viewControllers?.last as?
                UINavigationController else { return }
        guard let secondVC = secondNavigationVC.topViewController as?
                SecondScreenOfContactsTableViewController else { return }
        secondVC.persons = persons
    }

}
