//
//  Person.swift
//  ContactListProject
//
//  Created by Светлана Сенаторова on 19.07.2022.
//

struct Person {
    let name: String
    let surName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        name + " " + surName
    }
    
    var rows: [String] {
        [phoneNumber, email]
    }
    
    static func getPersons() -> [Person] {
        var randomPersons: [Person] = []
        let names = DataStore.shared.names.shuffled()
        let surNames = DataStore.shared.surNames.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        let arrayIndex = min(
            names.count,
            surNames.count,
            phoneNumbers.count,
            emails.count)
        
        for index in 0..<arrayIndex {
            randomPersons.append(
                Person(
                    name: names[index],
                    surName: surNames[index],
                    phoneNumber: phoneNumbers[index],
                    email: emails[index]
                )
            )
        }
        return randomPersons
    }
}
