//
//  ViewController.swift
//  datepick
//
//  Created by Cepl on 02/06/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dateTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any setup after loading the view.
        let date  = UIDatePicker()
        date.datePickerMode = .date
        date.addTarget(self, action: #selector(dateChange(date: )), for: UIControl.Event.valueChanged)
        date.frame.size = CGSize(width: 0, height: 300)
        date.preferredDatePickerStyle = .wheels
        dateTF.inputView = date
        dateTF.text = dateformat(date: Date())
    }

    @objc func dateChange(date:UIDatePicker){
        dateTF.text = dateformat(date: date.date)
}
    func dateformat(date: Date) -> String
    {
        let format = DateFormatter()
        format.dateFormat = "DDDD MM YYYY"
        return format.string(from: date)
    }
}
