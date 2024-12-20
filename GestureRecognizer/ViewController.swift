//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Musa on 21.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    var isMars = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView1.isUserInteractionEnabled = true // imageView'ı tıklanabili yapma
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic)) // tıklandığında hangi func çalışıcak
        
        imageView1.addGestureRecognizer(gestureRecognizer)
        
    }
    
  
    
    @objc func changePic() {
        
        if isMars == true{
            imageView1.image = UIImage(named: "satürn")
            textLabel.text = "Satürn"
            isMars = false
        } else {
            imageView1.image = UIImage(named: "mars")
            textLabel.text = "Mars"
            isMars = true
        }
        
        
        
    }


}

