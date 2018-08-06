//
//  MenuVC.swift
//  EV Roadtrip
//
//  Created by Apple on 06/08/18.
//  Copyright © 2018 Jayesh Mardiya. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {
    
    @IBOutlet weak var tblViewMenu: UITableView!
    @objc var arrMenu = [NSMutableDictionary]()

    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.initObject()
        self.setLayout()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    @objc class func instance() -> MenuVC {
        return model.storyboardHome.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
    }
    
    // MARK:- Other Function
    @objc func setLayout() {
    
        //Reload Table View
        self.tblViewMenu.reloadData()
    }
    
    @objc func initObject() {

            self.arrMenu = [
                ["menuTitle": "OLIVIA HUDSON", "menuIcon": "menu-icon-delay", "menuId": 1],
                ["menuTitle": "ROADTRIPS", "menuIcon": "menu-icon-home", "menuId": 2],
                ["menuTitle": "MY ROUTES", "menuIcon": "menu-icon-caselibrary", "menuId": 3],
                ["menuTitle": "ABOUT APP", "menuIcon": "menu-icon-labs", "menuId": 4],
            ]

    }
    
    @objc func doMenuClicked(_ dictDetail: NSMutableDictionary) {
        
        switch dictDetail["menuId"] as! Int {
        case 1:
            self.slideMenuController()?.changeMainViewController(UINavigationController(rootViewController: HomeVC.instance()), close: true)
            break
        case 2:
            self.slideMenuController()?.changeMainViewController(UINavigationController(rootViewController: HomeVC.instance()), close: true)
            break
        case 3:
            self.slideMenuController()?.changeMainViewController(UINavigationController(rootViewController: HomeVC.instance()), close: true)
            break
        case 4:
            self.slideMenuController()?.changeMainViewController(UINavigationController(rootViewController: HomeVC.instance()), close: true)
            break
        default:
            break
        }
    }
    
    // MARK:- Button Method
}

class MenuCell: UITableViewCell {
    
    @IBOutlet weak var imgViewMenuIcon: UIImageView!
    @IBOutlet weak var lblMenuTitle: UILabel!
}

class MenuCellTop: UITableViewCell {
    
    @IBOutlet weak var imgViewMenuIcon: UIImageView!
    @IBOutlet weak var lblMenuTopTitle: UILabel!
}

extension MenuVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell:MenuCellTop = tableView.dequeueReusableCell(withIdentifier: "MenuCellTop", for: indexPath) as! MenuCellTop
            let dictDetail = self.arrMenu[indexPath.row]
            
            cell.lblMenuTopTitle.text = dictDetail["menuTitle"] as? String
            
            return cell
        }else{
            let cell:MenuCell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuCell
            let dictDetail = self.arrMenu[indexPath.row]
            
            cell.lblMenuTitle.text = dictDetail["menuTitle"] as? String
            
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dictDetail = self.arrMenu[indexPath.row]
        self.doMenuClicked(dictDetail)
    }
}
