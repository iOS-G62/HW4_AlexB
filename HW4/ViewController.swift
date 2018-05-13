//
//  ViewController.swift
//  HW4
//
//  Created by Alexandr on 06.05.2018.
//  Copyright © 2018 Alexandr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var carBrandLabel: UILabel!
    @IBOutlet weak var hasDriverLabel: UILabel!
    @IBOutlet weak var petrolLabel: UILabel!
    @IBOutlet weak var accelerationLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!



    let bmw = Car(brand: "BMW", petrol: 70, acceleration: 50, money: 100, driver: true)
    

    override func viewDidLoad() {
        super.viewDidLoad()

//      Task 1
//        bmw.startDriving()
//        print(bmw.discription)
//
//        bmw.gasStation()
//        print(bmw.discription)
//
//        bmw.policeStoped()
//        print(bmw.discription)
//
//        bmw.accident()
//        print(bmw.discription)

//      Task 2
        updateUI()

        }

    func updateUI () {
        carBrandLabel.text = bmw.brand
        hasDriverLabel.text = "The car has driver = \(bmw.driver)"
        petrolLabel.text = "\(bmw.petrol)"
        accelerationLabel.text = "\(bmw.acceleration)"
        moneyLabel.text = "\(bmw.money)"
    }

    @IBAction func startDriving(_ sender: Any) {
         bmw.startDriving()
         updateUI()
    }

    @IBAction func gasStation(_ sender: Any) {
        bmw.gasStation()
        updateUI()
    }

    @IBAction func policeStopped(_ sender: Any) {
        bmw.policeStoped()
        updateUI()
    }

    @IBAction func accident(_ sender: Any) {
        bmw.accident()
        updateUI()
    }


    }





