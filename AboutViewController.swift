//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Carson Clark on 2019-04-24.
//  Copyright © 2019 com.carson. All rights reserved.
//


// note you must connect this view controller to the about view in story board
import UIKit

class AboutViewController: UIViewController {
    
    // when user hits close button, send back to main view
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
        print("close button clicked")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
}
