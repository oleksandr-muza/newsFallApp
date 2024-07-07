//
//  ViewController.swift
//  Newsfall App
//
//  Created by Oleksandr Muza on 07.07.2024.
//

import UIKit

class MainViewController: UIViewController {

    var contentView: MainViewProtocol!
    
    var model: MainModelProtocol!
                
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
  
    func initialSetupState() {
        
        
    }

}

extension MainViewController: MainModelDelegate {
    
}

extension MainViewController: MainViewDelegate {
    
}


