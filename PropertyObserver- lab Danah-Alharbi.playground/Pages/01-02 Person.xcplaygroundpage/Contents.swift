//: [Previous](@previous)

import Foundation

struct Person {
  
  var clothe: String {
    willSet {
      print("I'm changing from \(clothe) to \(newValue)")
    }
    
    didSet(oldClothe) {
      print("I've just change from \(oldClothe) to \(clothe)")
      if clothe == "White T-shirt" {
        clothe = "Black T-shirt"
      }
    }
  }
}

var person = Person(clothe: "Blue T-shirt")
person.clothe = "White T-shirt"

print("Clothe: \(person.clothe)")


person.clothe = "Black T-shirt"
//: [Next](@next)
