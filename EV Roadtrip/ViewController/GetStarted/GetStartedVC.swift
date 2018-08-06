//
//  GetStartedVC.swift
//  EV Roadtrip
//
//  Created by Jayesh Mardiya on 04/08/18.
//  Copyright © 2018 Jayesh Mardiya. All rights reserved.
//

import UIKit

class GetStartedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func btnTapGetStart(_ sender: Any) {
        model.doLoadDoctorHomeView()
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
