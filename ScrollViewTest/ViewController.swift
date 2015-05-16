//
//  ViewController.swift
//  ScrollViewTest
//
//  Created by Grady Zhuo on 5/16/15.
//  Copyright (c) 2015 Grady Zhuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //add a button
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //register a event when button did touch up inside
        button.addTarget(self, action: "buttonDidTap:", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    
    func buttonDidTap(sender:AnyObject){
        //when button did tap, do something
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

