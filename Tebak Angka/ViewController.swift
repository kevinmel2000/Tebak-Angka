//
//  ViewController.swift
//  Tebak Angka
//
//  Created by R. Kukuh on 30/03/18.
//  Copyright © 2018 R. Kukuh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var userInput: UITextField!
    
    @IBAction func tebakDidPressed(_ sender: Any) {
        
        let randomNumber = String(arc4random_uniform(9) + 1)
        
        if (userInput.text?.isEmpty)! {
            
            resultLabel.text = "Masukkan hanya angka 1-10"
            
            return
        }
        
        if userInput.text == randomNumber {
            
            resultLabel.text = "Tebakanmu benar!"
            
        } else {
            
            resultLabel.text = "Tebakanmu salah! \nAngka yang benar adalah \(randomNumber)"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
