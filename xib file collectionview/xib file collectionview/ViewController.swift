//
//  ViewController.swift
//  xib file collectionview
//
//  Created by Cepl on 16/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    
    
    let data = ["one","two"," three"]
    let titlename = ["section-1","section-1","section-3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.tableview.delegate = self
        self.tableview.dataSource = self
        // Do any additional setup after loading the view.
    }


}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell{
            cell.titlelbl?.text = self.data[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    internal func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 18))
        let label = UILabel(frame: CGRect(x: 20, y: 20, width: 50, height: 50))
        
        label.backgroundColor = UIColor.black
        

        self.view.addSubview(view)

        return view
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titlename[section]
}
    

}
