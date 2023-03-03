//
//  AboutHotelCollectionViewCell.swift
//  findHotelApp
//
//  Created by Phincon on 03/03/23.
//

import UIKit

class AboutHotelCollectionViewCell: UICollectionViewCell {

    static let identifier = "AboutHotelCollectionViewCell"
    
    @IBOutlet weak var hotelImageCollection: UIImageView!{
        didSet{
            hotelImageCollection.image = UIImage(named: "hotel2")
        }
    }
    
    
    
    @IBOutlet weak var hotelNameCollection: UILabel!{
        didSet{
            hotelNameCollection.text = "Permata Indah"
        }
    }
    
    
    
    
    
    @IBOutlet weak var adressHotelCollection: UILabel!{
        didSet{
            adressHotelCollection.text = "orem ipsum dolor sit amet, consectetur adipiscing elit"
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        setUpTable()?
    }

    
    
}
