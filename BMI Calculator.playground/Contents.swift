import UIKit

func bmiCalculator(weightInPounds: Double, heightInInches: Double ) -> String {
    let bmiResults = (weightInPounds / heightInInches / heightInInches) * 703
    
    let shortenedBMI = String(format: "%.1f", bmiResults)
    
    var interpretation = ""
    
    if bmiResults > 25 {
        interpretation = "Your are overweight."
    }
    else if bmiResults > 18.5 && bmiResults <= 25 {
        interpretation = "Your are in the normal weight range."
    }
    else {
        interpretation = "You are underweight."
    }
    
    return "Your BMI is \(shortenedBMI) and \(interpretation)"
}

print(bmiCalculator(weightInPounds: 175, heightInInches: 71))
