//
//  ViewController.swift
//  learn-uikit
//
//  Created by Thạnh Dương Hoàng on 21/06/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("view did load")
        
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        let us = usernameTextField.text ?? ""
        let pw = passwordTextField.text ?? ""
        print("User name: \(us) - Password: \(pw)")
        let vc2 = ViewController2()
        self.present(vc2, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
        
//        let vc2 = ViewController2()
//        self.present(vc2, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
}

