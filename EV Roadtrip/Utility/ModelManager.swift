//
//  ModelManager.swift
//  
//
//  Created by Apple on 09/01/17.
//  Copyright © 2017 Openxcell. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

enum ForceUpdateStatus: String {
    
    case disabled       = "disabled"
    case forceUpdate    = "force_update"
    case askForUpdate   = "ask_for_update"
    case upToDate       = "up_to_date"
}

class ModelManager: NSObject {
    
    @objc static let sharedInstance = ModelManager()
    @objc let storyboardMain: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    @objc let storyboardHome: UIStoryboard = UIStoryboard(name: "Home", bundle: nil)
    @objc let storyboardCase: UIStoryboard = UIStoryboard(name: "Dashboard", bundle: nil)
    
    private override init(){
        super.init()
    }
    
    @objc func doLoadDoctorHomeView() {
        
        let navController: UINavigationController = UINavigationController(rootViewController: HomeVC.instance())
        let slideMenuController = SlideMenuController(mainViewController: navController, leftMenuViewController: MenuVC.instance())
        SlideMenuOptions.contentViewScale = 1.0
        SlideMenuOptions.hideStatusBar = false
        SlideMenuOptions.animationDuration = 0.2
        SlideMenuOptions.panFromBezel = false
        SlideMenuOptions.leftViewWidth = (300*screenWidth)/320
        slideMenuController.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.3215686275, green: 0.3843137255, blue: 0.4274509804, alpha: 1)
        slideMenuController.navigationController?.navigationBar.isTranslucent = false
        UIView.transition(with: appDelegate.window!, duration: 0.3, options: .transitionCrossDissolve, animations: {
            appDelegate.window?.rootViewController = slideMenuController
            appDelegate.window?.makeKeyAndVisible()
        }, completion: { completed in
          
        })
    }
}
