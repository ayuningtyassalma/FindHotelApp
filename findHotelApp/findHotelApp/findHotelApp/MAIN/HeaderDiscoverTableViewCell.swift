//
//  HeaderDiscoverTableViewCell.swift
//  findHotelApp
//
//  Created by Salma  Ayu on 02/03/23.
//

import UIKit

class HeaderDiscoverTableViewCell: UITableViewCell {

    static let identifier = "headerDiscoverTableViewCell"
    
    @IBOutlet weak var headerDiscover1: UILabel!{
        didSet{
            headerDiscover1.text = "Discover place to stay"
        }
    }
    
    
    @IBOutlet weak var headerDiscover2: UILabel!{
        didSet{
            headerDiscover2.text = "perfect place to stay"
        }
    }
    
    
    
    @IBOutlet weak var searchBar: UITextField!{
        didSet {
            searchBar.placeholder = "Search hotel"
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
