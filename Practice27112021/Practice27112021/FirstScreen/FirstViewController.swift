//
//  ViewController.swift
//  Practice27112021
//
//  Created by Sergey Golovin on 27.11.2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    let code = "123"
    
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func getAuthBtnPressed(_ sender: UIButton) {
        if let text = textField.text {
            print(text)
            let vc = SecondViewController()
            vc.numberTxtFld.text = text
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

