//
//  ViewController.swift
//  findHotelApp
//
//  Created by Salma Ayu on 02/03/23.
//

import UIKit

class ViewController: UIViewController {
    var dataListHotel: [Hotel] =
        [Hotel(hotelName: "Mega Mendung", hotelImage: "hotel", hotelPrice: "IDR 120k", hotelAdress: "Puncak Paas", hotelRatingScore: 3.5),
         Hotel(hotelName: "Mawar Melati", hotelImage: "hotel", hotelPrice: "IDR 350", hotelAdress: "Cikampek Karawang", hotelRatingScore: 4.5),
         Hotel(hotelName: "Villa Matahari", hotelImage: "hotel", hotelPrice: "IDR 400", hotelAdress: "Jl Braga, Bandung" , hotelRatingScore: 4.3),
         Hotel(hotelName: "Mega Mendung", hotelImage: "hotel", hotelPrice: "IDR 120k", hotelAdress: "Puncak Paas", hotelRatingScore: 3.5),
         Hotel(hotelName: "Mawar Melati", hotelImage: "hotel", hotelPrice: "IDR 350", hotelAdress: "Cikampek Karawang", hotelRatingScore: 4.5),
         Hotel(hotelName: "Villa Matahari", hotelImage: "hotel", hotelPrice: "IDR 400", hotelAdress: "Jl Braga, Bandung" , hotelRatingScore: 4.3)
    ]
    
    
    @IBOutlet weak var mainTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        listHotel()
    }
    
    func listHotel (){
        let listHotelNib = UINib(nibName: "HeaderDiscoverTableViewCell", bundle: nil)
        mainTableView.register(listHotelNib, forCellReuseIdentifier: "headerDiscoverTableViewCell" )
        
        let collectionViewNib = UINib(nibName: CollectionTableViewCell.identifier, bundle: nil)
        mainTableView.register(collectionViewNib, forCellReuseIdentifier: "CollectionTableViewCell")
        
        let hotelNearbyViewNib = UINib(nibName: "HotelNearbyTableViewCell", bundle: nil)
        mainTableView.register(hotelNearbyViewNib, forCellReuseIdentifier: HotelNearbyTableViewCell.identifier)
    
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }

}; extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            
            //cell in section
            return 1
        case 1:
            return 1
        case 2:
            return dataListHotel.count
        default:
            break
        }
        
        return dataListHotel.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = mainTableView.dequeueReusableCell(withIdentifier: "headerDiscoverTableViewCell", for: indexPath) as? HeaderDiscoverTableViewCell else {
                return UITableViewCell()
            }
            
        
            
            return cell
            
        case 1:
            guard let cell = mainTableView.dequeueReusableCell(withIdentifier: "CollectionTableViewCell", for: indexPath) as? CollectionTableViewCell  else {
                return UITableViewCell()}
            
            //pasing data ke tableview
            cell.passingHotel = dataListHotel
            cell.setupCell()
            return cell
            
        case 2 :
            guard let cell = mainTableView.dequeueReusableCell(withIdentifier: "HotelNearbyCell", for: indexPath) as? HotelNearbyTableViewCell  else {
                return UITableViewCell()}
            
            cell.hotelNearbyIMG.image = UIImage(named: dataListHotel [indexPath.row].hotelImage)
            cell.hotelName.text = dataListHotel[indexPath.row].hotelName
            cell.hotelPrice.text = dataListHotel[indexPath.row].hotelPrice
            cell.hotelAdressNearby.text = dataListHotel[indexPath.row].hotelAdress
            
            
            
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 2:
            return 50
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 2:
            let header = HotelsNearbyHeaderSection()
            header.setUpHeader()
            return header
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 100
        case 1:
            return 300
        case 2:
            return 120
        default :
             break
        }
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewMoreHotelNearby = storyboard.instantiateViewController(identifier: "HotelNearbyPageViewController") as? HotelNearbyPage{
            let callPassingData = dataListHotel
            viewMoreHotelNearby.passingHotel2 = callPassingData
            navigationController?.pushViewController(viewMoreHotelNearby, animated: true)
        }
    }
    
    
}

