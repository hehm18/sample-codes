//
//  ViewController.swift
//  stackview tableview
//
//  Created by Cepl on 18/05/22.
//

import UIKit
struct Heroes:Codable{
    let localized_name : String
    let attack_type : String
}
class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
   
    var heroes = [Heroes]()
    
    @IBOutlet weak var tableview: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        // Do any additional setup after loading the view.
        self.tableview.register(UINib(nibName: "newTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        let url = URL(string: "https://api.opendota.com/api/herostats")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil{
                do{
                    self.heroes = try JSONDecoder().decode([Heroes].self, from: data!)
                }catch{
                    print("no")
                }
                DispatchQueue.main.async {
                    self.tableview.reloadData()
                }
            }
        }.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let subcell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! newTableViewCell
        subcell.titlelbl.text = heroes[indexPath.row].attack_type
        subcell.subtitlelbl.text = heroes[indexPath.row].localized_name
        subcell.layer.cornerRadius = 6
        subcell.selectionStyle = .none
        subcell.lbl1.text = heroes[indexPath.section].attack_type
        subcell.lbl2.text = heroes[indexPath.section].attack_type
       


        return subcell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
 
    
}
