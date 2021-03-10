import Foundation

extension Double {
    
    // MARK: Utility method to round off a decimal value to defined digits.
    func roundToDecimal(_ fractionDigits: Int) -> Double {
        let multiplier = pow(10, Double(fractionDigits))
        return Darwin.round(self * multiplier) / multiplier
    }
}
