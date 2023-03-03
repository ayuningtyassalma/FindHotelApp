//
//  HotelsNearbyHeaderSection.swift
//  findHotelApp
//
//  Created by Salma Ayu on 02/03/23.
//

import UIKit

class HotelsNearbyHeaderSection: UITableViewHeaderFooterView {
    
    private lazy var headerTittleLabel: UILabel = {
        let headerLabel = UILabel()
        headerLabel.text = "Hotels Nearby"
        headerLabel.font = UIFont.boldSystemFont(ofSize: 20)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        return headerLabel
    }()

    
    func setUpHeader()  {
        self.addSubview(headerTittleLabel)
        
        
        NSLayoutConstraint.activate([
            headerTittleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            headerTittleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            headerTittleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            headerTittleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30)
            
        ])
        
    }

}
