//
//  ViewController.swift
//  EV Roadtrip
//
//  Created by Jayesh Mardiya on 03/08/18.
//  Copyright © 2018 Jayesh Mardiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    // MARK:- Declarations -
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    // MARK:- ViewController LifeCycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        self.scrollView.contentSize = CGSize(width: self.scrollView.frame.size.width * 4,height: self.scrollView.frame.size.height)
        pageControl.addTarget(self, action: #selector(self.changePage(sender:)), for: UIControlEvents.valueChanged)
    }
    
    // MARK:- Memory Warning -
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- Action Methods -
    
    @IBAction func btnLetsGoClicked(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "CreateProfile", sender: sender)
    }
    
    // MARK:- Custom Methods -
    
    @objc func changePage(sender: AnyObject) -> () {
        let x = CGFloat(pageControl.currentPage) * scrollView.frame.size.width
        scrollView.setContentOffset(CGPoint(x:x, y:0), animated: true)
    }
    
    // MARK:- ScrollView Delegate -
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let x = scrollView.contentOffset.x
        let w = scrollView.bounds.size.width
        pageControl.currentPage = Int(x/w)
    }

    // MARK: - Navigation
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "CreateProfile" {
            let destination = segue.destination as! CreateProfileVC
            print(destination)
        }
    }
}

