//
//  CityCell.swift
//  UITableView-Programmatic
//
//  Created by Mahmut Senbek on 25.01.2023.
//

import UIKit

class CityCell: UITableViewCell {
    
    var cityImageView = UIImageView()
    var cityNameLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(cityImageView)
        addSubview(cityNameLabel)
        
        configureImage()
        configureCityLabel()
        
        setImageConstraints()
        setCityNameLabelConstraints()
        
         // self.containerView.addSubview(cityImageView)
       // self.containerView.addSubview(cityNameLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let containerView:UIView = {
      let view = UIView()
      view.translatesAutoresizingMaskIntoConstraints = false
      view.clipsToBounds = true // this will make sure its children do not go out of the boundary
      return view
    }()
    
    func set(city : City) {
        cityImageView.image = city.image
        cityNameLabel.text = city.title
    }
    
    func configureImage() {
        cityImageView.layer.cornerRadius = 10
        cityImageView.clipsToBounds = true
        
        
    }
    
    func configureCityLabel() {
        cityNameLabel.numberOfLines = 0
        cityNameLabel.adjustsFontSizeToFitWidth = true
        
    }
    
    func setImageConstraints() {
        cityNameLabel.translatesAutoresizingMaskIntoConstraints = false
        cityImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        cityImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
     //   cityImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
      //  cityImageView.widthAnchor.constraint(equalTo: cityImageView.heightAnchor, multiplier: 16/9).isActive = true
        cityImageView.frame = CGRect(x: 15 , y: 10, width: 60, height: 80)
        cityImageView.contentMode = .scaleAspectFill
        
    }
    
    func setCityNameLabelConstraints() {
        cityNameLabel.translatesAutoresizingMaskIntoConstraints = false
        cityNameLabel.leadingAnchor.constraint(equalTo: cityImageView.trailingAnchor, constant: 20).isActive = true
        cityNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        cityNameLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        cityNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -12).isActive = true
        
    }
    
    
    
}
