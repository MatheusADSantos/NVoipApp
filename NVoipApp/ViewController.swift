//
//  ViewController.swift
//  NVoipApp
//
//  Created by macbook-estagio on 21/09/21.
//

import UIKit

class ViewController: UIViewController {
    
//    MARK: - Properties
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var messageTextView: UITextView!
    
//    MARK: - Actions
    @IBAction func sendSMS(_ sender: Any) {
        guard let number = numberField.text, let message = messageTextView.text else { return }
        print("\n\n\nA mensagem '\(message)' será enviada ao número \(number)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardTapped()
        // Do any additional setup after loading the view.
    }
    
}

//MARK: - Extension to UIViewController
extension UIViewController {
    func hideKeyboardTapped() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.hideKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
}

