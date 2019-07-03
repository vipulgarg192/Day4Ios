//
//  ViewController.swift
//  Day4Ios
//
//  Created by MacStudent on 2019-07-03.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

enum PickerType:Int{
case Collage = 0
case Course = 1
}

class ViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource{

@IBOutlet weak var lblCourseName: UILabel!

@IBOutlet weak var pickerCourseName: UIPickerView!

@IBOutlet weak var txtCollageName: UITextField!
@IBOutlet weak var txtCourseName: UITextField!

@IBOutlet weak var btnCourseAdd: UIButton!

@IBOutlet weak var btnAddCollage: UIButton!

var courseArray = ["Android Fundamentals", "iOS Fundamentals", "Swift Programming", "Database Design", "Programming in Java", "Web Development in PHP", "Machine Learning", "Data Analytics with R", "Learn Ruby - The Hard Way", "Data Structures in C++"]

   var collageArray = ["Lambton", "Humber", "Centennial", "Langara", "Northern"]

override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    pickerCourseName.delegate = self
    pickerCourseName.dataSource = self
    txtCourseName.delegate = self
    txtCollageName.delegate = self
}

@IBAction func AddCollageData(_ sender: UIButton) {
    
  
    
    collageArray.append(txtCollageName.text!)
    
    pickerCourseName.reloadComponent(0)

    
}
@IBAction func AddCourse(_ sender: UIButton) {
    courseArray.append(txtCourseName.text!)
    pickerCourseName.reloadComponent(1)
}
func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 2
}

func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    if (component == PickerType.Collage.rawValue) {
        return collageArray.count;
    }
    else {
        return courseArray.count;
    }

}

func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
    if (component == PickerType.Collage.rawValue) {
        return collageArray[row];
    }
    else {
        return courseArray[row];
    }

}

func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    lblCourseName.text = courseArray[row]
    
//    let strCollageName = self.collageArray[pickerCourseName.selectedRow(inComponent: PickerType.Collage.rawValue)]
//    let strCourseName = self.courseArray[pickerCourseName.selectedRow(inComponent: PickerType.Course.rawValue)]
//
//    self.lblCourseName.text = "\(strCollageName) - \(strCourseName)"
}
    

}

extension ViewController:UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if !textField.text!.isEmpty {
            if textField.tag==1{
                collageArray.append(txtCollageName.text!)
                
                pickerCourseName.reloadComponent(0)
                
            }else{
                courseArray.append(txtCourseName.text!)
                pickerCourseName.reloadComponent(1)
                
            }
        }
       
        return true
    }
}

