//
//  HistoryViewController.swift
//  tabbaricons
//
//  Created by Cepl on 30/05/22.
//

import UIKit

class HistoryViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    var his = ["https://stackoverflow.com","https://www.cricbuzz.com","https://www.moneycontrol.com","https://blog.com","https://stackoverflow.com","https://stackoverflow.com","https://stackoverflow.com","https://youtube.com","https://fb.com","https://insta.com","https://github.com","https://medium.com","https://url.com","https://twitter.com","https://sunil.com","https://hem.com","https://mac.com","https://mi.com","https://oppo.com","https://video.com","https://audio.com","https://stackoverflow.com"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return his.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sec = tableviewhistory.dequeueReusableCell(withIdentifier: "History", for: indexPath) as! HistoryTableViewCell
        sec.labelhis.text = his[indexPath.row]
        return sec
    }
    

    @IBOutlet weak var tableviewhistory: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewhistory.delegate = self
        tableviewhistory.dataSource = self
        

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
