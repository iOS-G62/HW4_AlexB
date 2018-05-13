//
//  Car.swift
//  HW4
//
//  Created by Alexandr on 09.05.2018.
//  Copyright © 2018 Alexandr. All rights reserved.
//

import Foundation

class Car {


    var brand: String
    var petrol: Int
    var acceleration: Int
    var money: Int
    var driver: Bool
//    Acceleration depends not only on the specifications of the car but also on the skills of the driver
    private let skillsOfDriver: Int

    var discription: String {
        return "brand: \(brand); petrol: \(petrol); acceleration \(acceleration); money: \(money); driver: \(driver)"
    }

    init(brand: String,
         petrol: Int,
         acceleration: Int,
         money: Int,
         driver: Bool) {

        self.brand = brand
        self.petrol = petrol
        self.acceleration = acceleration
        self.money = money
        self.driver = driver
        self.skillsOfDriver = Int(arc4random_uniform(5) + 1)
    }

    func startDriving() {
        if driver == true {
            if acceleration > 40 {
//                If the car is fast, then fuel consumption is greater and acceleration is greater
                self.petrol -= 20
                self.acceleration += 40 * skillsOfDriver
            } else if acceleration <= 40 {
//                If the car is not fast, then the consumption is less and the acceleration is less
                self.petrol -= 10
                self.acceleration += 20 * skillsOfDriver
            }
        } else if driver == false {
            self.petrol = 0
            self.acceleration = 0
            self.money = 0
        }
    }

    func accident() {
        let brokenCar = brand + " crashed"
        self.brand = brokenCar
        self.petrol = 0
        self.acceleration = 0
        self.money = 0
        self.driver = false
    }

    func policeStoped() {
        self.acceleration = 0
        let penalty = arc4random_uniform(2)
        if penalty == 1 {
            self.money -= 10
        }
    }

    func gasStation() {
        self.acceleration = 0
        self.petrol += 50
        self.money -= 10
    }



}
