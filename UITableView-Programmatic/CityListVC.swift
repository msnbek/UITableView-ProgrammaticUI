//
//  ViewController.swift
//  UITableView-Programmatic
//
//  Created by Mahmut Senbek on 25.01.2023.
//

import UIKit

class CityListVC: UIViewController {

    
    
var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "City's"
        view.backgroundColor = .systemGray
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func configureTableView() {
        
        view.addSubview(tableView)
        //set delegates
        // set row height
        //set register cells
        //set constraints
    }

    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    
  

}


//MARK: - TableViewDelegate
extension CityListVC : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}

