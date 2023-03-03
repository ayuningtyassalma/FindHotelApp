//
//  HotelListCollectionViewCell.swift
//  findHotelApp
//
//  Created by Salma Ayu on 02/03/23.
//

import UIKit

class HotelListCollectionViewCell: UICollectionViewCell {

    static let identifier = "HotelListCollectionViewCell"
    
    @IBOutlet weak var collectionViewImage: UIImageView!
    
    
    
    @IBOutlet weak var hotelName: UILabel!
    
    
    
    
    @IBOutlet weak var hotelPrice: UILabel!
    
    
    
  
    @IBOutlet weak var ratingIcon: UIImageView!{
        didSet{
            ratingIcon.image = UIImage(named: "iconRating")
        }
    }
    
    
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
