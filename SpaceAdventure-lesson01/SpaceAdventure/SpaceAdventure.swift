//
//  SpaceAdventure.swift
//  SpaceAdventure
//
//  Created by Carlos Mendieta on 2/27/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
class SpaceAdventure {
    let myPlanetarySystem: PlanetarySystem
    func start(){
        displayIntroduction()
        greetAdventurer()
        print("Let's go on an adventure")
        determineDestination()
    }
    private func displayIntroduction(){
        let diameterOfEarth = 24859.82
        print("Welcome to the \(myPlanetarySystem.name)!")
        if myPlanetarySystem.planets.count == 1 {
            print("There are \(myPlanetarySystem.planets.count) planet to explore.")
        } else {
            print("There are \(myPlanetarySystem.planets.count) planets to explore.")
        }
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
        var decision = ""
        while !(decision == "Y" || decision == "N") {
            decision = message(message: "Shall I randomly choose a planet for you to visit? (Y or N)")
            if decision == "Y" {
                if myPlanetarySystem.planets.isEmpty {
                    print("sorry, we don't have planets at this moment, try later.")
                } else{
                    visit(planetName: myPlanetarySystem.planets.randomElement()!.name)
                }
            } else if decision == "N" {
                let planet = message(message: "Ok, name the planet you would like to visit...")
                visit(planetName: planet)
            } else if decision == "Cookies!"{
                print("oh great! I really like cookies!")
            } else {
                print("Sorry, I didn't get that.")
            }
        }
    }
    private func visit(planetName: String){
        var found = false
        for planet in myPlanetarySystem.planets {
            if planet.name == planetName {
                print("Ok! Traveling to... \(planet.name). \(planet.description)")
                found.toggle()
            }
        }
        if !found {print("Sorry, we don't know that planet.")}
    }
    init(myPlanetarySystem: PlanetarySystem) {
        self.myPlanetarySystem = myPlanetarySystem
    }
    
}
