//
//  ForthViewController.swift
//  Practice27112021
//
//  Created by Sergey Golovin on 27.11.2021.
//

import UIKit

class ForthViewController: UIViewController {
    
    var city: City?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleField: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: city?.image ?? "Moscow")
        titleField.text = city?.name
        textView.text = city?.description
    }
}
