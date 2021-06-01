//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Burak İmdat on 2.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNum: UITextField!
    @IBOutlet weak var secondNum: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var num1 : Int?
    var num2 : Int?
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func add(_ sender: Any) {
        saveValue()
    
        if let n1 = num1 , let n2 = num2 {
            resultLabel.text = "Sonuç : " + String(n1 + n2)
        }else{
            showAlert()
        }
        
    }
    @IBAction func minus(_ sender: Any) {
        saveValue()
    
        if let n1 = num1 , let n2 = num2 {
            resultLabel.text = "Sonuç : " + String(n1 - n2)
        }else{
            showAlert()
        }
    }
    @IBAction func multi(_ sender: Any) {
        saveValue()
    
        if let n1 = num1 , let n2 = num2 {
            resultLabel.text = "Sonuç : " + String(n1 * n2)
        }else{
            showAlert()
        }
    }
    @IBAction func div(_ sender: Any) {
        saveValue()
    
        if let n1 = num1 , let n2 = num2 {
            resultLabel.text = "Sonuç : " + String(Double(n1) / Double(n2))
        }else{
            showAlert()
        }
    }
    
    fileprivate func showAlert() {
        let alertController = UIAlertController(title: "HATA", message: "Lütfen girilen değerleri kontrol ediniz", preferredStyle: .actionSheet)
        let alertAction =  UIAlertAction(title: "TAMAM", style: .destructive,handler:{action in
            self.clearValue()
        })
        
        alertController.addAction(alertAction)
        
        self.present(alertController, animated: true)
    }
    
    fileprivate func saveValue() {
        num1 = Int(firstNum.text ?? "0")
        num2 = Int(secondNum.text ?? "0")
    }
    
    fileprivate func clearValue() {
        firstNum.text = ""
        secondNum.text = ""
    }
}

