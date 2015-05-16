//
//  DemoMakeMyButtonsViewController.swift
//  ScrollViewTest
//
//  Created by Grady Zhuo on 5/16/15.
//  Copyright (c) 2015 Grady Zhuo. All rights reserved.
//

import UIKit

class DemoMakeMyButtonsViewController: UIViewController, UIAlertViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func myButton3DidTap(sender:AnyObject){
        
        let alert = UIAlertController(title: "MyButton3 Did Tap", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: { (action) -> Void in
            println("cancel button did click")
        }))
        
        self.showViewController(alert, sender: nil)
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
