//
//  MyButton2.swift
//  ScrollViewTest
//
//  Created by Grady Zhuo on 5/16/15.
//  Copyright (c) 2015 Grady Zhuo. All rights reserved.
//

import UIKit

class MyButton2: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        super.touchesBegan(touches, withEvent: event)
        
        self.backgroundColor = UIColor.redColor()
        
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.backgroundColor = UIColor.whiteColor()
    }

}
