//
//  DemoScrollViewController.swift
//  ScrollViewTest
//
//  Created by Grady Zhuo on 5/16/15.
//  Copyright (c) 2015 Grady Zhuo. All rights reserved.
//

import UIKit

class DemoScrollViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl:UIPageControl!
    @IBOutlet weak var scrollView:UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let screenBounds = UIScreen.mainScreen().bounds
        self.scrollView.contentSize = CGSize(width: screenBounds.width*3, height: screenBounds.height)
        
        let view1 = UIView()
        view1.backgroundColor = UIColor.redColor()
        
        let view2 = UIView()
        view2.backgroundColor = UIColor.orangeColor()
        
        let view3 = UIView()
        view3.backgroundColor = UIColor.yellowColor()
        
        
        view1.frame = CGRect(x: 0, y: 0, width: screenBounds.width, height: screenBounds.height)
        view2.frame = CGRect(x: screenBounds.width, y: 0, width: screenBounds.width, height: screenBounds.height)
        view3.frame = CGRect(x: screenBounds.width*2, y: 0, width: screenBounds.width, height: screenBounds.height)
        
        self.scrollView.addSubview(view1)
        self.scrollView.addSubview(view2)
        self.scrollView.addSubview(view3)

        
        self.scrollView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        let newContentOffset:CGPoint = targetContentOffset.memory
        let getpage = floor(newContentOffset.x / UIScreen.mainScreen().bounds.width)
        self.pageControl.currentPage = Int(getpage)
        
    }
    
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
//        let newContentOffset:CGPoint = scrollView.contentOffset
//        let getpage = floor(newContentOffset.x / UIScreen.mainScreen().bounds.width)
//        self.pageControl.currentPage = Int(getpage)
    }
    
    
    @IBAction func leftPage(sender:AnyObject){
        
        let currentPage = self.pageControl.currentPage
        let newPage = max((currentPage - 1), 0)
        
        let newContentOffsetX = CGFloat(newPage) * UIScreen.mainScreen().bounds.width
        self.scrollView.setContentOffset(CGPoint(x: newContentOffsetX, y: 0), animated: true)
        
        self.pageControl.currentPage = newPage
        
    }
    
    @IBAction func rightPage(sender:AnyObject){
        let currentPage = self.pageControl.currentPage
        let newPage = min((currentPage + 1), 2)
        
        let newContentOffsetX = CGFloat(newPage) * UIScreen.mainScreen().bounds.width
        self.scrollView.setContentOffset(CGPoint(x: newContentOffsetX, y: 0), animated: true)
        
        self.pageControl.currentPage = newPage
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
