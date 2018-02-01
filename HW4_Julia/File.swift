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

    private var businessClassSeats: Int //Polina: одной пустой строки достаточно, не забывай подчищать)

    init(typename: String,
         weight: Int,
         passengerCapacity: Int,
         fuel: Int,
         businessClassSeats: Int = 30){

        self.typename = typename
        self.weight = weight
        self.passengerCapacity = passengerCapacity
        self.fuel = fuel
        self.businessClassSeats = businessClassSeats
    }

    func freeSeatsAvailable(_ number: Int)  {
        passengerCapacity -= number
    }

    func AtParkingApron() { //Polina: названия методов с маленькой
        fuel -= fuel / 1
        weight -= weight / 2
       //Polina: что ты тут хотела сделать? Результат данной операции - true, не совсем понимаю что тебе надо
       //Julia: исправила
    }

    func touchDown() {
        fuel -= fuel / 1
        weight -= weight / 3
    }

    private func economyClassSeats() {
        passengerCapacity -= businessClassSeats
    }

    func amountOfEconomyClassSeats() {
        economyClassSeats()
    } //Polina: парочка пустых строк)
}
