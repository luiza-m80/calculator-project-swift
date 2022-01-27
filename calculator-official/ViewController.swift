//
//  ViewController.swift
//  calculator-official
//
//  Created by Luiza Menezes Vieira de Souza on 26/01/22.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlets SOMAR
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var valueASumTextField: UITextField!
    @IBOutlet weak var valueBSumTextField: UITextField!
    
    //MARK: - Outlets SUBTRAÇÃO
    @IBOutlet weak var subtLabel: UILabel!
    @IBOutlet weak var valueASubtTextField: UITextField!
    @IBOutlet weak var valueBSubtTextField: UITextField!
    
    //MARK: - Outlets MULTIPLICAÇÃO
    @IBOutlet weak var multiLabel: UILabel!
    @IBOutlet weak var valueAMultiTextField: UITextField!
    @IBOutlet weak var valueBMultiTextField: UITextField!
    
    //MARK: - Outlets DIVISÃO
    @IBOutlet weak var divisionLabel: UILabel!
    @IBOutlet weak var valueADivTextField: UITextField!
    @IBOutlet weak var valueBDivTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Actions SUM
    @IBAction func didTappedSumButton(_ sender: UIButton) {
        //MARK: - Value A
        guard let valueAString = valueASumTextField.text, let valueA = Double(valueAString) else {
            let alertController = UIAlertController(title: "Houve um erro", message: "Insira um valor válido no campo A, pois o valor inserido não é válido - \(String(describing: valueASumTextField.text))", preferredStyle: .alert)
            
            //MARK: - Alerts color change
            alertController.view.tintColor = UIColor.red
            valueASumTextField.backgroundColor = UIColor.init(red: 228.0/255.0, green: 77.0/255.0, blue: 46.0/255.0, alpha: 1.0)
            
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                print("OK Action clicked")
                self.valueASumTextField.backgroundColor = UIColor.clear
            }
            alertController.addAction(okAction)
            present(alertController, animated: true) {
                print("Completion was called")
            }
            return
        }
        //MARK: - Value B
        guard let valueBString = valueBSumTextField.text, let valueB = Double(valueBString) else {
            let alertController = UIAlertController(title: "Houve um erro", message: "Insira um valor válido no campo B, pois o valor inserido não é válido - \(String(describing: valueBSumTextField.text))", preferredStyle: .alert)
            
            //MARK: - Alerts color change
            alertController.view.tintColor = UIColor.red
            valueBSumTextField.backgroundColor = UIColor.init(red: 228.0/255.0, green: 77.0/255.0, blue: 46.0/255.0, alpha: 1.0)
            
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.valueBSumTextField.backgroundColor = UIColor.clear
                print("OK Action clicked")
            }
            
            alertController.addAction(okAction)
            
            present(alertController, animated: true) {
                print("Completion was called")
            }
            return
        }
        //MARK: - Operation
        let sum = valueA + valueB
        sumLabel.text = String(sum)
        
    }
    
    //MARK: - Actions SUBTRACTION
    @IBAction func didTappedSubtractionButton(_ sender: UIButton) {
        
        guard let valueAString = valueASubtTextField.text, let valueA = Double(valueAString) else {
            
            let alertController = UIAlertController(title: "Houve um problema", message: "Insira um valor válido no campo B, pois o valor inserido não é válido - \(String(describing: valueASubtTextField.text))", preferredStyle: .alert)
            
            //MARK: - Alerts color change
            alertController.view.tintColor = UIColor.red
            valueASubtTextField.backgroundColor = UIColor.init(red: 80.0/255.0, green: 200.0/255.0, blue: 120.0/255.0, alpha: 1.0)
                        
            let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.valueASubtTextField.backgroundColor = UIColor.clear
                print("OK action clicked")
            }
            
            alertController.addAction(alertAction)
            present(alertController, animated: true) {
                print("Completion was called")
            }
            return
        }
        
        guard let valueBString = valueBSubtTextField.text, let valueB = Double(valueBString) else {
            
            let alertController = UIAlertController(title: "Houve um problema", message: "Insira um valor válido no campo B, pois o valor inserido não é válido - \(String(describing: valueBSubtTextField.text))", preferredStyle: .alert)
            
            //MARK: - Alerts color change
            alertController.view.tintColor = UIColor.red
            valueBSubtTextField.backgroundColor = UIColor.init(red: 80.0/255.0, green: 200.0/255.0, blue: 120.0/255.0, alpha: 1.0)
            
            let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.valueBSubtTextField.backgroundColor = UIColor.clear
                print("OK action clicked")
            }
            
            alertController.addAction(alertAction)
            present(alertController, animated: true) {
                print("Completion was called")
            }
            return
        }
        //MARK: - Operation
        let subt = valueA - valueB
        subtLabel.text = String(subt)
    }
    
    //MARK: - Actions MULTIPLY
    @IBAction func didTappedMultiplyButton(_ sender: UIButton) {
        guard let valueAString = valueAMultiTextField.text, let valueA = Double(valueAString) else {
            let alertController = UIAlertController(title: "Houve um problema", message: "Insira um valor válido no campo A, pois o valor inserido não pode ser multiplicado - \(String(describing: valueAMultiTextField.text))", preferredStyle: .alert)
            
            //MARK: - Alerts color change
            alertController.view.tintColor = UIColor.red
            valueAMultiTextField.backgroundColor = UIColor.init(red: 30.0/255.0, green: 144/255.0, blue: 255/255.0, alpha: 1.0)
            
            let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.valueAMultiTextField.backgroundColor = UIColor.clear
                print("OK action clicked")
            }
            
            alertController.addAction(alertAction)
            present(alertController, animated: true) {
                print("Completion was called")
            }
            return
        }
        guard let valueBString = valueBMultiTextField.text, let valueB = Double(valueBString) else {
            let alertController = UIAlertController(title: "Houve um problema", message: "Insira um valor válido no campo B, pois o valor inserido não pode ser multiplicado - \(String(describing: valueBMultiTextField.text))", preferredStyle: .alert)
            
            //MARK: - Alerts color change
            alertController.view.tintColor = UIColor.red
            valueBMultiTextField.backgroundColor = UIColor.init(red: 30.0/255.0, green: 144/255.0, blue: 255/255.0, alpha: 1.0)
            
            let alertAction = UIAlertAction(title: "OK", style: .default) {_ in
                self.valueBMultiTextField.backgroundColor = UIColor.clear
                print("Ok action clicked")
            }
            alertController.addAction(alertAction)
            present(alertController, animated: true) {
                print("Completion was called")
            }
            return
        }
        
        //MARK: - Operation
        let multi = valueA * valueB
        multiLabel.text = String(multi)
    }
    
    //MARK: - Actions DIVISION
    @IBAction func didTappedDivisionButton(_ sender: UIButton) {
        guard let valueAString = valueADivTextField.text, let valueA = Double(valueAString) else {
            let alertController = UIAlertController(title: "Houve um problema", message: "O valor inserido não é válido, pois não pode ser dividido - \(String(describing: valueADivTextField.text))", preferredStyle: .alert)
            
            //MARK: - Alerts color change
            alertController.view.tintColor = UIColor.red
            valueADivTextField.backgroundColor = UIColor.init(red: 255.0/255.0, green: 179.0/255.0, blue: 71/255.0, alpha: 1.0)
            
            let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.valueADivTextField.backgroundColor = UIColor.clear
                print("OK was clicked")
            }
            alertController.addAction(alertAction)
            present(alertController, animated: true) {
                print("Completion was called")
            }
            return
        }
        guard let valueBString = valueBDivTextField.text, let valueB = Double(valueBString) else {
            let alertController = UIAlertController(title: "Houve um problema", message: "Insira um valor válido, pois o valor inserido não pode ser dividido - \(String(describing: valueBDivTextField.text))", preferredStyle: .alert)
            //MARK: - Alerts color change
            alertController.view.tintColor = UIColor.red
            valueBDivTextField.backgroundColor = UIColor.init(red: 255.0/255.0, green: 179.0/255.0, blue: 71/255.0, alpha: 1.0)
            
            let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.valueBDivTextField.backgroundColor = UIColor.clear
                print("OK was clicked")
            }
            alertController.addAction(alertAction)
            present(alertController, animated: true) {
                print("Completion was called")
            }
            return
        }
        //MARK: - Operation
        let div = valueA / valueB
        divisionLabel.text = String(div)
    }

}

