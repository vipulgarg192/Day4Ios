//
//  ViewController.swift
//  Day4Ios
//
//  Created by MacStudent on 2019-07-03.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource{
    
   
    @IBOutlet weak var lblCourseName: UILabel!
    
    @IBOutlet weak var pickerCourseName: UIPickerView!
    
    var courseArray = ["Android Fundamentals", "iOS Fundamentals", "Swift Programming", "Database Design", "Programming in Java", "Web Development in PHP", "Machine Learning", "Data Analytics with R", "Learn Ruby - The Hard Way", "Data Structures in C++"]
    
       var collageArray = ["Lambton", "Humber", "Centennial", "Langara", "Northern"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pickerCourseName.delegate = self
        pickerCourseName.dataSource = self
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (component == 0) {
            return collageArray.count;
        }
        else {
            return courseArray.count;
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if (component == 0) {
            return collageArray[row];
        }
        else {
            return courseArray[row];
        }
    
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblCourseName.text = courseArray[row]
    }
    
}

