//
//  UIView + Ext..swift
//  UITableView-Programmatic
//
//  Created by Mahmut Senbek on 25.01.2023.
//

import UIKit


extension UIView {
    //Tüm edgelere yapısık view üretmek.
    func pin( to superView: UIView) {
        
        
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
   
        
    }
    
    
}
