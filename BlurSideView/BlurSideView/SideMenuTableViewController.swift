//
//  SideMenuTableViewController.swift
//  BlurSideView
//
//  Created by Appinventiv on 04/03/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit

protocol SideBarTableViewControllerDelegate{
    func sideBarControlDidSelectRow(indexPath:NSIndexPath)
}

class SideBarTableViewController: UITableViewController {
    
    var delegate:SideBarTableViewControllerDelegate?
    var tableData:Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    // MARK: - Table view data source
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
            cell!.backgroundColor = UIColor.clear
            cell!.textLabel?.textColor = UIColor.darkText
            
            let selectedView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: cell!.frame.size.width, height: cell!.frame.size.height))
            selectedView.backgroundColor = UIColor.black
            
            cell!.selectedBackgroundView = selectedView
        }
        
        
        cell!.textLabel?.text = tableData[indexPath.row]
        
        return cell!
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 45
    }
    
    
     func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        delegate?.sideBarControlDidSelectRow(indexPath: indexPath)
    }
    
}
