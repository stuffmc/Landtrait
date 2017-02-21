//
//  DetailViewController.swift
//  Landtrait
//
//  Created by Manuel "StuFF mc" Carrasco Molina on 20/02/2017.
//  Copyright © 2017 SEVEN PRINCIPLES AG. All rights reserved.
//

import UIKit

class PresentedViewController: UIViewController {
    
    @IBAction func dismiss(_ sender: Any) {
        navigationController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
