//
//  ViewController.swift
//  sampledesign
//
//  Created by Cepl on 20/05/22.
//

import UIKit
struct Heroes: Codable{
    let localized_name : String
    let attack_type : String
}

class ViewController: UIViewController,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let subcell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewTableViewCell
        subcell.title.text = heroes[indexPath.row].attack_type
        subcell.sidebar.layer.cornerRadius = 3
        subcell.sidebar.layer.masksToBounds = true
        return subcell
    }
    
    @IBOutlet weak var tableview: UITableView!
    var heroes = [Heroes]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        getdata()
        // Do any additional setup after loading the view.
        self.tableview.register(UINib(nibName: "NewTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }

    func getdata() {
        let url = URL(string: "https://api.opendota.com/api/herostats")
        URLSession.shared.dataTask(with: url!) { (data, response, error ) in
            if error == nil {
                do {
                    self.heroes = try JSONDecoder().decode([Heroes].self, from: data!)
                    
                    
                }catch{
                    print("error")
                }
                DispatchQueue.main.async {
                    self.tableview.reloadData()
                }
            }
        }.resume()
    }
}

