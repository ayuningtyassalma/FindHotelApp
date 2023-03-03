//
//  DiscoverTableViewCell.swift
//  findHotelApp
//
//  Created by Salma Ayu on 02/03/23.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    
    
    static let identifier = "CollectionTableViewCell"
    
    // kalo udh dipassing, declare sebagai data type
    var passingHotel : [Hotel]?
    
    @IBOutlet weak var tableViewForCollection1: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    func setupCell() {
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = CGSize(width: 350, height: 300)
        flowLayout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        tableViewForCollection1.collectionViewLayout = flowLayout
        tableViewForCollection1.delegate = self
        tableViewForCollection1.dataSource = self
        tableViewForCollection1.register(UINib(nibName: HotelListCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: HotelListCollectionViewCell.identifier)
        tableViewForCollection1.heightAnchor.constraint(equalToConstant: 320).isActive = true
            
    }

   
    
}; extension CollectionTableViewCell : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HotelListCollectionViewCell.identifier, for: indexPath) as? HotelListCollectionViewCell else{
            return UICollectionViewCell()
        }
        
        cell.collectionViewImage.image = UIImage(named: "hotel")
        cell.hotelName.text = passingHotel?[indexPath.row].hotelName
        cell.hotelPrice.text = passingHotel?[indexPath.row].hotelPrice
        cell.ratingLabel.text = "\(passingHotel?[indexPath.row].hotelRatingScore ?? 0)"
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 200, height: 300)
//    }
    
    
    
}
