//
//  ProfileVC.swift
//  EV Roadtrip
//
//  Created by Jayesh Mardiya on 04/08/18.
//  Copyright © 2018 Jayesh Mardiya. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    // MARK:- Declarations -
    
    @IBOutlet weak var btnUsername: UIButton!
    @IBOutlet weak var btnBatterySize: UIButton!
    @IBOutlet weak var btnACChargeRate: UIButton!
    @IBOutlet weak var btnVehicleRange: UIButton!
    
    // MARK:- ViewController LifeCycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK:- Memory Warnings -
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK:- Action Methods -
    
    @IBAction func btnEditClicked(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnBackClicked(_ sender: UIButton) {
        
        model.doLoadDoctorHomeView()
    }
    
    // MARK: - Navigation -

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    }
}
