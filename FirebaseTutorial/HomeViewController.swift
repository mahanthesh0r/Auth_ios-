//
//  HomeViewController.swift
//  FirebaseTutorial
//
//  Created by James Dacombe on 16/11/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func homeTourBtn(_ sender: Any) {
        let application = UIApplication.shared
        let secondAppPath = "hometour://"
        let appUrl = URL(string: secondAppPath)!
        let websiteUrl = URL(string: "www.google.com")!
        if application.canOpenURL(appUrl){
            application.open(appUrl,options: [:], completionHandler: nil)
        } else {
            application.open(websiteUrl)
        }
        
    }
    
    
    @IBAction func measuretape(_ sender: Any) {
        let application = UIApplication.shared
        let second1AppPath = "measuretape://"
        let appUrl = URL(string: second1AppPath)!
        let websiteUrl = URL(string: "www.google.com")!
        if application.canOpenURL(appUrl){
            application.open(appUrl,options: [:], completionHandler: nil)
        } else {
            application.open(websiteUrl)
        }
        
    }
    
    @IBAction func logOutAction(sender: AnyObject) {
        
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUp")
                present(vc, animated: true, completion: nil)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
        
    }
}
