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
    
    static func getPersons() -> [Person] {
        var randomPersons: [Person] = []
        for _ in 1...data.names.count {
            randomPersons.append(
                Person(
                name: data.names[Int.random(in: 0..<data.names.count)],
                surName: data.surNames[Int.random(in: 0..<data.surNames.count)],
                phoneNumber: data.phoneNumbers[Int.random(in: 0..<data.phoneNumbers.count)],
                email: data.emails[Int.random(in: 0..<data.emails.count)]
                )
            )
        }
        return randomPersons
    }
}
