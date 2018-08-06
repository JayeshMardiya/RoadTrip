//
//  HomeVC.swift
//  EV Roadtrip
//
//  Created by Apple on 06/08/18.
//  Copyright © 2018 Jayesh Mardiya. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.3215686275, green: 0.3843137255, blue: 0.4274509804, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.title = "Roadtrips"
        // Do any additional setup after loading the view.
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
   
       self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc class func instance() -> HomeVC {
        return model.storyboardHome.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
    }
    
    // MARK:- Button Method
    @IBAction func doMenuClicked(_ sender: Any) {
        self.slideMenuController()?.openLeft()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
