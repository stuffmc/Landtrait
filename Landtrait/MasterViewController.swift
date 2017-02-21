//
//  MasterViewController.swift
//  Landtrait
//
//  Created by Manuel "StuFF mc" Carrasco Molina on 20/02/2017.
//  Copyright © 2017 SEVEN PRINCIPLES AG. All rights reserved.
//

import UIKit


class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        if let split = self.splitViewController {
            let controllers = split.viewControllers
            self.detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        self.clearsSelectionOnViewWillAppear = self.splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
            controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
            controller.navigationItem.leftItemsSupplementBackButton = true
        }
    }

    // MARK: - Table View

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

}

