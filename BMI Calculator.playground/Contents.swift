import UIKit

func bmiCalculator(weightInPounds: Double, heightInInches: Double ) -> String {
    let bmiResults = (weightInPounds / heightInInches / heightInInches) * 703
    
    let shortenedBMI = String(format: "%.1f", bmiResults)
    
    var interpretation = ""
    
    if bmiResults > 25 {
        interpretation = "you are overweight."
    }
    else if bmiResults > 18.5 && bmiResults <= 25 {
        interpretation = "you are in the normal weight range."
    }
    else {
        interpretation = "you are underweight."
    }
    
    return "Your BMI is \(shortenedBMI) and \(interpretation)"
}

print(bmiCalculator(weightInPounds: 127, heightInInches: 67))
