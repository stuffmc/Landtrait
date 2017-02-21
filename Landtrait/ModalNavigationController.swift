//
//  DetailViewController.swift
//  Landtrait
//
//  Created by Manuel "StuFF mc" Carrasco Molina on 20/02/2017.
//  Copyright © 2017 SEVEN PRINCIPLES AG. All rights reserved.
//

import UIKit

class ModalNavigationController: UINavigationController {

    override var shouldAutorotate: Bool { get {
        return true
    } }
    
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .all
    }
}

