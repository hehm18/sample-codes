//
//  DownloadsViewController.swift
//  tabbaricons
//
//  Created by Cepl on 30/05/22.
//

import UIKit

class DownloadsViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let subcell = tableView.dequeueReusableCell(withIdentifier: "Downloadcell3", for: indexPath) as! DownloadsTableViewCell
            subcell.label2.text = Downloads[indexPath.row]
        
        return subcell
        
        
    }
    
   
    
    @IBOutlet weak var tableView: UITableView!
    
    var Downloads = ["FEATURES 1","FEATURES 2","FEATURES 3","FEATURES 4","FEATURES 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
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
