//: [Previous](@previous)

import Foundation

struct Toy: Codable {
    var name: String
}

struct Employee: Codable {
    var name: String
    var id: Int
    var favoriteToy: Toy
}

let toy = Toy(name: "Penguin")
let employee = Employee(name: "John", id: 97, favoriteToy: toy)

let encoder = JSONEncoder()
let decoder = JSONDecoder()

let snakeData = try encoder.encode(employee)
let snakeString = String(data: snakeData, encoding: .utf8)!
let camelEmployee = try decoder.decode(Employee.self, from: snakeData)

