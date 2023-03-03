//
//  AboutHotelCollectionTableViewCell.swift
//  findHotelApp
//
//  Created by Phincon on 03/03/23.
//

import UIKit

class AboutHotelCollectionTableViewCell: UITableViewCell, UICollectionViewDelegate {

    
    static let identifier = "AboutHotelCollectionTableViewCell"
    
    
    @IBOutlet weak var aboutHotelCollectionForTableView: UIView!
    
    
    @IBOutlet weak var aboutHotelCollection: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setUpTable(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 320, height: 200)
        layout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        aboutHotelCollection.collectionViewLayout = layout
        aboutHotelCollection.delegate = self
        aboutHotelCollection.dataSource = self
        aboutHotelCollection.register(UINib(nibName: AboutHotelCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: AboutHotelCollectionViewCell.identifier)

    
    };
    
    
}

extension AboutHotelCollectionTableViewCell : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AboutHotelCollectionViewCell.identifier, for: indexPath) as? AboutHotelCollectionViewCell else{
            return UICollectionViewCell()
        }
        
        
        return cell
    }
    
    
    
}
