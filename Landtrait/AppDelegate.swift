//
//  AppDelegate.swift
//  Landtrait
//
//  Created by Manuel "StuFF mc" Carrasco Molina on 20/02/2017.
//  Copyright © 2017 SEVEN PRINCIPLES AG. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let splitViewController = self.window!.rootViewController as! UISplitViewController

        // The following 3 lines of samba is because (I don't know why) the width fraction isn't the same in .allVisible and .automatic
        let width = splitViewController.primaryColumnWidth/splitViewController.view.frame.size.width
        splitViewController.preferredDisplayMode = .allVisible
        splitViewController.preferredPrimaryColumnWidthFraction = width
        
        let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
        navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem
        splitViewController.delegate = self
        return true
    }

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        if let vc = window?.rootViewController?.presentedViewController, !vc.isBeingDismissed && vc is ModalNavigationController {
            return .all
        }
        return application.supportedInterfaceOrientations(for: window)
    }

}

