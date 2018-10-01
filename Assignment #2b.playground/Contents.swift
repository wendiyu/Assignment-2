

// Created on: September-30-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for slove  hight
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let questionLable = UILabel()
    let secondLable = UILabel()
    let secondTextField = UITextField()
    let highLable = UILabel()
    let answerButton = UIButton()
    let GRAVITY : Float = 9.81 
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "Enter the number of second sine the object dropeed in second."
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        secondLable.text = "Enter second "
        view.addSubview(secondLable)
        secondLable.translatesAutoresizingMaskIntoConstraints = false
        secondLable.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 10).isActive = true
        secondLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        secondTextField.borderStyle = UITextBorderStyle.roundedRect
        secondTextField.placeholder = "Put a whole number in second   "
        view.addSubview(secondTextField)
        secondTextField.translatesAutoresizingMaskIntoConstraints = false
        secondTextField.topAnchor.constraint(equalTo: secondLable.bottomAnchor, constant: 5).isActive = true
        secondTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Answer", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(calculateHigh), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: secondTextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        highLable.text = nil
        view.addSubview(highLable)
        highLable.translatesAutoresizingMaskIntoConstraints = false
        highLable.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        highLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func calculateHigh() {
        // show answers 
        let second : Float =  Float(Int(secondTextField.text!)!)
        
        let high = 100 - 0.5 * GRAVITY * pow(second,2)
        
        highLable.text = "The high is : \(high) m."
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
