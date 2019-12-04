//: [Previous](@previous)

import Foundation
struct Toy {
    var name: String
}

struct Employee {
    var name: String
    var id: Int
    var favoriteToy: Toy
}

let toy = Toy(name: "Penguin")
let employee = Employee(name: "John Appleseed", id: 77, favoriteToy: toy)



