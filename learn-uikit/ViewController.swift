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
        
        // how to create view by code
        let frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        let userAvatar = UIImageView(image: UIImage(named: "LOGO"))
        userAvatar.frame = frame
        userAvatar.contentMode = .scaleToFill
        view.addSubview(userAvatar)
        
        // how to listener event by code
        let inputText = UILabel(frame: CGRect(x: 50, y: 200, width: 100, height: 25))
        inputText.text = "DHT"
        inputText.backgroundColor = .lightGray
        inputText.textAlignment = .center
        inputText.textColor = .blue
        view.addSubview(inputText)

        let button = UIButton(frame: CGRect(x: 50, y: 100, width: 100, height: 25))
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(tap), for: .touchDragInside)
        view.addSubview(button)
        
    }
    
    @objc func tap() {
        print("tap tap")
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

