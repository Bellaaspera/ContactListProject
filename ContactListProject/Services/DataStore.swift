//
//  DataStore.swift
//  ContactListProject
//
//  Created by Светлана Сенаторова on 19.07.2022.
//


class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Paul", "Dan", "Kitty", "Ivan", "Jack", "Han", "Bruce",
        "Stewart", "Hannah", "Lora", "Steve", "Natasha", "Comander",
        "Luke", "Paddington", "Indiana"
    ]
    let surNames = [
        "Hello", "Sparrow", "Solo", "Verkhoven", "Brown", "Wayn",
        "Little", "Racoon", "Montana", "Dern", "Rogers", "Romanoff",
        "Shepard", "Skywalker", "Brown", "Johnes"
    ]
    let phoneNumbers = [
        "768677098", "654098123", "985430711", "220875433",
        "001284532", "451046873", "645301874", "123987640",
        "994733001", "823004477", "899869600", "666444932",
        "007564003", "676729101", "001101010", "303094589"
    ]
    let emails = [
        "scary@gmail.com", "codeDaVinchi@yahoo.com", "yooohooo@gmail.com",
        "rrrr@ya.ru", "wheresmyboat@someaquatiry.com", "milenium@falcon.com",
        "cheese@toeveryone.uk", "blahblah@blah.us",  "moviestar@gmail.com",
        "ilovemyjob@avengers.us", "widow@mail.ru", "n7@alians.com", "batman@gotem.com",
        "dethstar@determinated.jedi", "auntlucy@wheresmyjam.su", "low@blow.com"
    ]
    
    private init(){}
}
