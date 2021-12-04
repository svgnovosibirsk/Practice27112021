//
//  ThirdViewController.swift
//  Practice27112021
//
//  Created by Sergey Golovin on 27.11.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let city = City.cities
    var index = 0

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    @IBAction func logOutBtnPressed(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toForthVC" {
            let detailVC = segue.destination as? ForthViewController
            let item = city[index]
            detailVC?.city = item
        }
    }
}

extension ThirdViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = city[indexPath.row]
        cell.imageView?.image = UIImage(named: item.image)
        
        cell.imageView?.contentMode = .scaleAspectFit
        cell.imageView?.clipsToBounds = true
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item.description
        
        return  cell
    }
}

extension ThirdViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = ForthViewController()
        let item = city[indexPath.row]
        detailVC.city = item
        index = indexPath.row
        performSegue(withIdentifier: "toForthVC", sender: nil)
    }
}


