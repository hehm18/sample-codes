//
//  ViewController.swift
//  tabbaricons
//
//  Created by Cepl on 30/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func button1(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Tabbarcontroller") as! UITabBarController
        self.navigationController?.pushViewController(vc, animated: true)
        present(vc, animated: true,completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
        
}

