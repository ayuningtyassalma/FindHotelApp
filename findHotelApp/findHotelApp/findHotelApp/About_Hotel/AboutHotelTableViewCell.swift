//
//  AboutHotelTableViewCell.swift
//  findHotelApp
//
//  Created by Salma Ayu on 03/03/23.
//

import UIKit

class AboutHotelTableViewCell: UITableViewCell {

    
    static let identifier = "AboutHotelTableViewCell"
    
    @IBOutlet weak var aboutMoreHotelIMG: UIImageView!{
        didSet{
            aboutMoreHotelIMG.image = UIImage(named: "hotel")
        }
    }
    
    
    @IBOutlet weak var aboutMoreHotelTittle: UILabel!{
        didSet{
            aboutMoreHotelTittle.text = "Mega Mendung"
        }
    }
    
    
    
    @IBOutlet weak var descriptionLabel: UILabel!{
        didSet{
            descriptionLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
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
