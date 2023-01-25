//
//  ViewController.swift
//  UITableView-Programmatic
//
//  Created by Mahmut Senbek on 25.01.2023.
//

import UIKit

class CityListVC: UIViewController {

    var tableView = UITableView()
    
    var cities : [City] = []
    
    struct Cells {
        static let cityCell =  "CityCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "City's"
       cities = fetchData()
        configureTableView()
        
    }
    
    func configureTableView() {
        
        view.addSubview(tableView)
        //set delegates
        setTableViewDelegates()
        // set row height
        tableView.rowHeight = 100
        //set register cells
        tableView.register(CityCell.self, forCellReuseIdentifier: Cells.cityCell)
        //set constraints
        tableView.pin(to: view)
    }

    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    
  

}


//MARK: - TableViewDelegateMethods
extension CityListVC : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.cityCell, for: indexPath) as! CityCell
        let city = cities[indexPath.row]
        
        //cell.contentView .addSubview(cell)
        print(city)
        cell.set(city: city)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}


extension CityListVC {
    
    func fetchData() -> [City] {
        
        let city1 = City(title: "İstanbul", image: UIImage(named:"ıstanbul")!)
        let city2 = City(title: "Paris", image: UIImage(named:"paris")!)
        let city3 = City(title: "New York", image: UIImage(named:"newyork")!)
        let city4 = City(title: "Pekin", image: UIImage(named:"pekin")!)
        let city5 = City(title: "Tokyo", image: UIImage(named:"tokyo")!)
        let city6 = City(title: "Berlin", image: UIImage(named:"berlin")!)
        
        return [city1, city2 , city3 , city4 , city5 , city6]
    }
    
    
}

