//
//  DataStore.swift
//  ContactListProject
//
//  Created by Светлана Сенаторова on 19.07.2022.
//


struct DataStore {
    let names: [String]
    let surNames: [String]
    let phoneNumbers: [String]
    let emails: [String]
    
    init(names: [String], surNames: [String], phoneNumbers: [String], emails: [String]) {
        self.names = names
        self.surNames = surNames
        self.phoneNumbers = phoneNumbers
        self.emails = emails
    }
}

let data = DataStore(
    names: [
        "Paul", "Dan", "Kitty", "Ivan", "Jack", "Han",
        "Stewart", "Hannah", "Lora", "Steve", "Natasha", "Comander"
           ],
    surNames: [
        "Hello", "Sparrow", "Solo", "Verkhoven", "Brown",
        "Little", "Racoon", "Montana", "Dern", "Rogers", "Romanoff", "Shepard"
    ],
    phoneNumbers: [
        "768677098", "654098123", "985430711", "220875433",
        "001284532", "451046873", "645301874", "123987640",
        "994733001", "823004477", "899869600", "666444932"
    ],
    emails: [
        "scary@gmail.com", "codeDaVinchi@yahoo.com", "yooohooo@gmail.com",
        "rrrr@ya.ru", "wheresmyboat@someaquatiry.com", "milenium@falcon.com",
        "chese@toeveryone.uk", "blahblah@blah.us",  "moviestar@gmail.com",
        "ilovemyjob@avengers.us", "widow@mail.ru", "n7@alians.com"
    ]
)
