//
//  ViewController.swift
//  DogYears
//
//  Created by Dulio Denis on 12/21/14.
//  Copyright (c) 2014 ddApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYears: UILabel!
    @IBOutlet weak var dogAge: UITextField!
    
//MARK: - Action Methods
    @IBAction func calculateDogYears(sender: AnyObject) {
        if (dogAge.text == "") {
            dogYears.text = "Please enter your dog's age"
        } else {
            let age:Int? = dogAge.text.toInt()
            if (age != nil) {
                let dogCalculatedAge:Int = age! * 7
                dogYears.text = "Your dog is " + String(dogCalculatedAge) + " dog years old"
            } else {
                dogYears.text = "Please enter a number"
            }
        }
    }

//MARK: - View Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        dogYears.text = ""
    }
}

