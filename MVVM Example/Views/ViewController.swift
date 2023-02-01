//
//  ViewController.swift
//  MVVM Example
//
//  Created by Azik on 01.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var loginField : UITextField!
    @IBOutlet private weak var passwordField: UITextField!
    @IBOutlet private weak var label : UILabel!

    var viewModel = ViewModel()
    
    func initialize() {
        label.textColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialize()
    }

    func bindViewModel() {
        viewModel.statusText.bind { (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        }
        viewModel.statusColor.bind { statusColor in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        }
    }
    
    @IBAction func enterButtonPressed(_ sender: Any){
        viewModel.userPressedButton(login: (loginField.text ?? ""), password: passwordField.text ?? "")
        
    }
    
}

