//
//  MasterViewController.swift
//  Kitz
//
//  Created by Mazyad Alabduljaleel on 12/19/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var objects = [
        AppzViewController(),
        DatezViewController(),
        NotificationzViewController(),
        StorezViewController(),
    ]
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        guard let navController = segue.destinationViewController as? UINavigationController
            , let viewController = navController.viewControllers.first as? DetailViewController
            , let cell = sender as? UITableViewCell
            else
        {
            return
        }
        
        viewController.viewController = objects[cell.tag]
    }

    // MARK: - Table View

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        let viewController = objects[indexPath.row]
        cell.tag = indexPath.row
        cell.textLabel!.text = viewController.title
        
        return cell
    }
}

