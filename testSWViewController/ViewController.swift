//
//  ViewController.swift
//  testSWViewController
//
//  Created by Brian Shih on 10/1/16.
//  Copyright © 2016 BrianShih. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menu: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if revealViewController() != nil {
            menu.target = self.revealViewController()
            menu.action = "revealToggle:"
            
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

