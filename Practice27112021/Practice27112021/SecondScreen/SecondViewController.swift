//
//  SecondViewController.swift
//  Practice27112021
//
//  Created by Sergey Golovin on 27.11.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var numberTxtFld: UITextField!
    @IBOutlet weak var codeTxtFld: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideCodeTxtAndLoginBtn()
        configButtons()
    }
    
    @IBAction func getAuthBtnPressed(_ sender: UIButton) {
        
        if let text = numberTxtFld.text {
            print(text)
            showCodeTxtAndLoginBtn()
        }
    }
    
    @IBAction func LogInBtnPressed(_ sender: UIButton) {
       if isValid() {
           performSegue(withIdentifier: "toThirdVC", sender: nil)
       }
    }
    
    private func isValid() -> Bool {
        return numberTxtFld.text == codeTxtFld.text
    }
    
    private func hideCodeTxtAndLoginBtn() {
        codeTxtFld.isHidden = true
        loginBtn.isHidden = true
    }
    
    private func showCodeTxtAndLoginBtn() {
        codeTxtFld.isHidden = false
        loginBtn.isHidden = false
    }
    
    private func configButtons() {
        loginBtn.layer.cornerRadius = 10
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        numberTxtFld.text = ""
        codeTxtFld.text = ""
    }
}
