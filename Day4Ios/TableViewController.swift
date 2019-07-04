//
//  TableViewController.swift
//  Day4Ios
//
//  Created by MacStudent on 2019-07-03.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class TableViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    @IBOutlet weak var tableView1: UITableView!
    var courseArray = ["Android Fundamentals", "iOS Fundamentals", "Swift Programming", "Database Design", "Programming in Java", "Web Development in PHP", "Machine Learning", "Data Analytics with R", "Learn Ruby - The Hard Way", "Data Structures in C++"]


    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView1.delegate = self
        self.tableView1.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courseArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "CellCourse")
        
        cell.textLabel?.text = self.courseArray[indexPath.row]
        return cell
    }
    

    
    override func viewDidAppear(_ animated: Bool) {
       
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.courseArray[indexPath.row])
    }
    
   
}
