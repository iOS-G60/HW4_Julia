//
//  ViewController.swift
//  HW4_Julia
//
//  Created by Шапаренко Юлия on 31.01.2018.
//  Copyright © 2018 Шапаренко Юлия. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var typeNameLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var fuelLabel: UILabel!
    @IBOutlet weak var seatsAvailableLable: UILabel!
    @IBOutlet weak var addPassengersTextField: UITextField!

    let airbus = Aircraft.init(typename: "Airbus 350", weight: 308, passengerCapacity: 365, fuel: 214)

    override func viewDidLoad() {
        super.viewDidLoad()
        print(airbus)
        addPassengersTextField.keyboardType = .decimalPad
        setupData()
    }

    func setupData() {
        typeNameLabel.text = airbus.typename
        weightLabel.text = "\(airbus.weight)"
        fuelLabel.text = "\(airbus.fuel)"
        seatsAvailableLable.text = "\(airbus.passengerCapacity)"
    }

    @IBAction func checkEconomyClassSeats(_ sender: UIButton) {
        airbus.amountOfEconomyClassSeats()
        setupData()
        print("You're welcome to choose from this amount of available economy seats.")
    }

    @IBAction func touchDown(_ sender: UIButton) {
        airbus.touchDown()
        setupData()
        print("The plane has touched down. Welcome to New York! ")
    }

    @IBAction func waitingAtParkingApron(_ sender: UIButton) {
        airbus.AtParkingApron()
        setupData()
        print("Next flight is scheduled tomorrow.")
    }

    @IBAction func addPassengers(_ sender: UIButton) {
        let addedNumberOfPassengers = addPassengersTextField.text
        if let addedNumberOfPassengers = addedNumberOfPassengers {
            if let number = Int(addedNumberOfPassengers) {
                airbus.freeSeatsAvailable(number)
                setupData()
            } else {
                print ("the text entered is not a number")
            }
        }
    }//Polina:  парочка лишних строк пустых, не забывай удалять) //Julia: исправила
}

