import UIKit

typealias Bottles = PlasticBottles

class PlasticBottles {
    /// Allows you to convert a 6 digit hexadecimal string into a UIColor instance
    /// - Warning: The "#" symbol is stripped from the beginning of the string submitted here.
    /// - Parameters:
    ///   - hexString: A 6-digit hexadecimal string. Use 6 digits rather than 8, and add the accompanying alpha value in the second parameter
    ///   - alpha: A number between 0.0 and 1.0 indicating how transparent the color is
    /// - Returns: A UIColor defined by the `hexString` parameter
    class func createColorFromHex(_ hexString: String, alpha: CGFloat = 1.0) -> UIColor {
        let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        
        if (hexString.hasPrefix("#")) {
          scanner.scanLocation = 1
        }
        
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
