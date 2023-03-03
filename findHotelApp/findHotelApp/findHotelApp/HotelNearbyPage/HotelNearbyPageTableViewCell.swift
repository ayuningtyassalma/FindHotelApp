//
//  HotelNearbyTableViewCell.swift
//  findHotelApp
//
//  Created by Salma Ayu on 03/03/23.
//

import UIKit

class HotelNearbyPageTableViewCell: UITableViewCell {

    static let identifier = "hotelNearbyPage"
    
    //dipanggil juga
    var passingHotel2 : Hotel?
    
    @IBOutlet weak var hotelImage: UIImageView!
    
    
    @IBOutlet weak var hotelName: UILabel!
    
    
    @IBOutlet weak var hotelAdress: UILabel!
    
    
    
    @IBOutlet weak var hotelPrice: UILabel!
    

    @IBOutlet weak var hotelRatingIMG: UIImageView!{
        didSet{
            hotelRatingIMG.image = UIImage(named: "iconRating")
        }
    }
    
    

    @IBOutlet weak var hotelRatings: UILabel!
    
    func setUpTableViewHotelNearby(passingData: Hotel){
        hotelName.text = passingData.hotelName
        hotelAdress.text = passingData.hotelAdress
        hotelPrice.text = passingData.hotelPrice
        hotelImage.image = UIImage(named: passingData.hotelImage)
        hotelRatings.text = "\(String(describing: passingData.hotelRatingScore))"
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
