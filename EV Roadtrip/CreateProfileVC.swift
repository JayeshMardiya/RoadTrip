//
//  CreateProfileVC.swift
//  EV Roadtrip
//
//  Created by Jayesh Mardiya on 04/08/18.
//  Copyright © 2018 Jayesh Mardiya. All rights reserved.
//

import UIKit

class CreateProfileVC: UIViewController {

    // MARK:- Declarations -
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtBatterySize: UITextField!
    @IBOutlet weak var txtACChargerRate: UITextField!
    @IBOutlet weak var txtVehicleRange: UITextField!
    
    // MARK:- ViewController LifeCycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK:- Memory Warning -
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- Action Methods -
    
    @IBAction func btnSaveClicked(_ sender: UIButton) {
        
        if self.txtUsername.text == "" {
            
        } else if txtBatterySize.text == "" {
            
        } else if txtACChargerRate.text == "" {
            
        } else if txtVehicleRange.text == "" {
            
        } else {
            
        }
        
        self.performSegue(withIdentifier: "Profile", sender: sender)
    }
    
    // MARK:- Navigation -

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "Profile" {
            let destination = segue.destination as! ProfileVC
            print(destination)
        }
    }
}
