//
//  MyButton3.swift
//  ScrollViewTest
//
//  Created by Grady Zhuo on 5/16/15.
//  Copyright (c) 2015 Grady Zhuo. All rights reserved.
//

import UIKit

class MyButton3: UIControl {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    
    override func beginTrackingWithTouch(touch: UITouch, withEvent event: UIEvent) -> Bool {
        
        self.backgroundColor = UIColor.redColor()
        return true
        
    }
    
    override func continueTrackingWithTouch(touch: UITouch, withEvent event: UIEvent) -> Bool {
        
        if self.touchInside {
            self.backgroundColor = UIColor.redColor()
        }else{
            self.backgroundColor = UIColor.yellowColor()
        }
        
        return true
    }

    
    override func endTrackingWithTouch(touch: UITouch, withEvent event: UIEvent) {
        
        self.backgroundColor = UIColor.whiteColor()
        
    }
    
}
