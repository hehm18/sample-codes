//
//  ViewController.swift
//  imagepicker
//
//  Created by Cepl on 01/06/22.
//

import UIKit

class ViewController: UIViewController ,UINavigationControllerDelegate,UIImagePickerControllerDelegate{

    @IBAction func button(_ sender: UIButton) {
        let imagecontroll = UIImagePickerController()
        imagecontroll.delegate = self
        imagecontroll.sourceType = .photoLibrary
        
        self.present(imagecontroll,animated: true,completion: nil)
        
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        image.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.dismiss(animated: true,completion: nil)
    }
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

