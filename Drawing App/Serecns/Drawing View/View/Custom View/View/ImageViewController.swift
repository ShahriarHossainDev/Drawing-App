//
//  ImageViewController.swift
//  Drawing App
//
//  Created by Shishir_Mac on 29/3/23.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    var img = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = img
        // Do any additional setup after loading the view.
    }

}
