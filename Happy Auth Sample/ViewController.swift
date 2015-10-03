//
//  ViewController.swift
//  Happy Auth Sample
//
//  Created by Donald McKendrick on 10/3/15.
//  Copyright © 2015 donaldmckendrick.com. All rights reserved.
//

import UIKit
let facebookLogin = FBSDKLoginManager()

class ViewController: UIViewController, FBSDKLoginButtonDelegate {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let loginView: FBSDKLoginButton = FBSDKLoginButton()
    loginView.center = self.view.center
    self.view.addSubview(loginView)
    let horizonalContraints = NSLayoutConstraint(item: loginView, attribute:
      .LeadingMargin, relatedBy: .Equal, toItem: view,
      attribute: .LeadingMargin, multiplier: 1.0,
      constant: 20)
    let horizonal2Contraints = NSLayoutConstraint(item: loginView, attribute:
      .TrailingMargin, relatedBy: .Equal, toItem: view,
      attribute: .TrailingMargin, multiplier: 1.0,
      constant: -20)
    
    let pinBottom = NSLayoutConstraint(item: loginView, attribute:
      .Bottom, relatedBy: .Equal, toItem: view,
      attribute: .Bottom, multiplier: 1.0,
      constant: -20)
    
    let heightContraints = NSLayoutConstraint(item: loginView, attribute:
      .Height, relatedBy: .Equal, toItem: nil,
      attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0,
      constant: 50)
    
    loginView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activateConstraints([horizonalContraints, horizonal2Contraints, pinBottom, heightContraints])
    loginView.delegate = self

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
    print("User Logged In")
    print(result)
    
  }
  
  func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
    print("User Logged Out")
  }

  
  

}

