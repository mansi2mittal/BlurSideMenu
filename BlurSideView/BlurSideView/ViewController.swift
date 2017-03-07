//
//  ViewController.swift
//  BlurSideView
//
//  Created by Appinventiv on 04/03/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , SideBarDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    var sideBar : SideBar = SideBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        sideBar.delegate = self
       
        sideBar = SideBar(sourceView: self.view, menuItems: ["FirstItem" , "SecondItem" , "ThirdItem"])
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sideBarDidSelectButtonAtIndex(index: Int) {
        
    }


}

