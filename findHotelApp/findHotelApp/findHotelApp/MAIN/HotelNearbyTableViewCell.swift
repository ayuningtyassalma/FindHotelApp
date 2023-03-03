//
//  HotelNearbyTableViewCell.swift
//  findHotelApp
//
//  Created by Salma Ayu on 02/03/23.
//

import UIKit

class HotelNearbyTableViewCell: UITableViewCell {

    
    static let identifier = "HotelNearbyCell"
    
    var passingHotel : [Hotel]?
    
    
    @IBOutlet weak var hotelNearbyIMG: UIImageView!
    
    
    @IBOutlet weak var hotelAdressNearby: UILabel!
    
    
    @IBOutlet weak var hotelName: UILabel!
    
    
    
    @IBOutlet weak var hotelPrice: UILabel!
    
    
    
    
    @IBOutlet weak var hotelRating: UIImageView!
    
    
    
    @IBOutlet weak var hotelRatingScore: UILabel!
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
