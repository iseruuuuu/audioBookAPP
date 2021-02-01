//
//  ViewController.swift
//  audioBookAPP
//
//  Created by 井関竜太郎 on 2021/01/18.
//

import UIKit

class ViewController: UIViewController {
    
    let speechService = SpeechService()
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var paset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func say(_ sender: Any) {
        speechService.say(textView.text!)
    }

    @IBAction func paset(_ sender: AnyObject) {
       // let board = UIPasteboard.general
        // board.setValue("Copy", forKey: "public.text")

    }
    
    
    @IBAction func stop(_ sender: Any) {
        speechService.stop() //⑨
    }
    
    @IBAction func bacn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func close(_ sender: Any) {
        textView.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textView.resignFirstResponder()
        return true
    }
    
}

