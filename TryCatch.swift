//
//  VolSphere.swift
//
//  Created by Van
//  Created on 2024-02-21
//  Version 1.0
//  Copyright (c) 2024 Van Nguyen. All rights reserved.
//
//  Calculate and display the volume a the sphere with the given radius

import Foundation

// Enum to represent custom errors
enum CalculationError: Error {
    case negativeRadius
    case invalidInput
}

// Ask the user to enter the radius of the sphere
print("Enter the radius of the sphere: ")

// Read the input from the user
if let input = readLine(), let radius = Double(input) {
    do {
        guard radius >= 0 else {
            throw CalculationError.negativeRadius
        }

        // Calculate the volume of the sphere
        let volume = (4.0 / 3.0) * Double.pi * pow(radius, 3)

        // Format the result with units and rounded to 3 decimal places
        let formattedVolume = String(format: "%.3f", volume)
        print("The volume of the sphere with radius \(radius) units is: \(formattedVolume) units^3")
    } catch {
        // Catch any error and inform the user
        print("An error occurred: \(error). Program terminated.")
    }
} else {
    // If the input is not a valid number, inform the user
    print("Invalid input. Please enter a valid number. Program terminated.")
}


