//
//  File.swift
//  HW4_Julia
//
//  Created by Шапаренко Юлия on 31.01.2018.
//  Copyright © 2018 Шапаренко Юлия. All rights reserved.
//

import Foundation

class Aircraft {

    let typename: String
    var weight: Int
    var passengerCapacity: Int
    var fuel: Int

    private var preparationsForNextFlight: Bool
    private var businessClassSeats: Int


    init(typename: String,
         weight: Int,
         passengerCapacity: Int,
         fuel: Int,
         preparationsForNextFlight: Bool = false,
         businessClassSeats: Int = 30){

        self.typename = typename
        self.weight = weight
        self.passengerCapacity = passengerCapacity
        self.fuel = fuel
        self.preparationsForNextFlight = preparationsForNextFlight
        self.businessClassSeats = businessClassSeats
    }

    func freeSeatsAvailable(_ number: Int)  {
        passengerCapacity -= number
    }

    func AtParkingApron() {
        fuel -= fuel / 1
        weight -= weight / 2
        if preparationsForNextFlight {
            fuel == fuel
        }
    }

    func touchDown() {
        fuel -= fuel / 1
        weight -= weight / 2
    }

    private func economyClassSeats() {
        passengerCapacity -= businessClassSeats
    }

    func amountOfEconomyClassSeats() {
        economyClassSeats()
    }


}
