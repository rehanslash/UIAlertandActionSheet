//
//  ViewController.swift
//  Alert and Action- Demo
//
//  Created by HigherVisibility on 04/06/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func AlertActionBTn(_ sender: Any) {
    
        let alert = UIAlertController(title: "Hello", message: "This is testing", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            print("Alert Test")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
            
            print("Cancel")
            
        }))
        self.present(alert, animated: true)
        
        
    }
    
    
    
    @IBAction func ActionSheetBtn(_ sender: Any) {
       
       let alert = UIAlertController(title: "Hello", message: "Testing Action Sheet", preferredStyle:.actionSheet)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            print("Action Test")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
            print("Cancel")
        }))
        
        alert.addAction(UIAlertAction(title: "Nice", style: .default, handler: { (action) in
            print("Nice")
        }))
        self.present(alert, animated: true,completion: {
            
          print("Completion")
            
        })
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

