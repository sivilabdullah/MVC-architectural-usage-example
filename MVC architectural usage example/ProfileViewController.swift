//
//  ProfileViewController.swift
//  MVC architectural usage example
//
//  Created by abdullah's Monterey on 2.01.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    // MARK: - Variables
    
    @IBOutlet weak var nameLabel: UILabel!
    var name: String? 
    
    //MARK: - Functions
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
