import UIKit

class ViewController: UIViewController {
    @IBOutlet var displayNumber: UILabel!
    
    var leftOperand = "0"
    var rightOperand = "0"
    var operation = ""
    var isWorkingWithLeftOperandNow = true
    
    @IBAction func on9(_ sender: Any) {
        appendToCurrentOperand(char: "9")
    }
    
    func appendToCurrentOperand(char: String) {
        if isWorkingWithLeftOperandNow {
            leftOperand += char
            displayNumber.text = leftOperand
        } else {
            rightOperand += char
            displayNumber.text = rightOperand
        }
    }
    
    @IBAction func onMultiply(_ sender: Any) {
        applyOperation(newOperation: "*")
    }
    
    @IBAction func onResult(_ sender: Any) {
        let left = Float(leftOperand) ?? 0.0
        let right = Float(rightOperand) ?? 0.0
        let result = left * right
        displayNumber.text = result.description
        isWorkingWithLeftOperandNow = true;
    }
    
    func applyOperation(newOperation: String) {
        isWorkingWithLeftOperandNow = false
        operation = newOperation
    }
    
    func calculateResult() {}
}
