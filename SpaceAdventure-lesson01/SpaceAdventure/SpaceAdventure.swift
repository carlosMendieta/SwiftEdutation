//
//  SpaceAdventure.swift
//  SpaceAdventure
//
//  Created by Carlos Mendieta on 2/27/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
class SpaceAdventure {
    let planetarySystem = PlanetarySystem(name: "Solar System")
    func start(){
        displayIntroduction()
        greetAdventurer()
        print("Let's go on an adventure")
        determineDestination()
    }
    private func displayIntroduction(){
        let numberOfPlanets = 8
        let diameterOfEarth = 24859.82
        print("Welcome to the \(planetarySystem.name)!")
        print("There are \(numberOfPlanets) planets to explore.")
        print("You are currently on Earth, which has a circumference of \(diameterOfEarth) miles.")
    }
    private func message(message: String) -> String {
        print(message)
        return getln()
    }
    private func greetAdventurer() {
        let name = message(message: "What is your name?")
        print("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")
    }
    private func determineDestination() {
        let planets = ["mercurio","venus","tierra","marte","jupiter","saturno","urano","neptuno"]
        var decision = ""
        while !(decision == "Y" || decision == "N") {
            decision = message(message: "Shall I randomly choose a planet for you to visit? (Y or N)")
            if decision == "Y" {
                print("Ok! Traveling to... \(planets.randomElement()!)")
            } else if decision == "N" {
                let planet = message(message: "Ok, name the planet you would like to visit...")
                print("ok, so we are going to \(planet)")
            } else if decision == "Cookies!"{
                print("oh great! I really like cookies!")
            } else {
                print("Sorry, I didn't get that.")
            }
        }
    }
}
