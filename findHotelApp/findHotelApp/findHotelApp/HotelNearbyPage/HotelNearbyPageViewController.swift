//
//  HotelNearbyPageViewController.swift
//  findHotelApp
//
//  Created by Salma Ayu on 03/03/23.
//

import UIKit

class HotelNearbyPage: UIViewController {

    @IBOutlet weak var hotelNearbyPage: UITableView!
    
    //manggil data type dari array of hotel ke dalam var
    var passingHotel2 : [Hotel]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableViewHotelNearby()
    }
    
    func setUpTableViewHotelNearby(){
        let listHotelNearbyNib = UINib(nibName: "HotelNearbyPageTableViewCell", bundle: nil)
        
        hotelNearbyPage.register(listHotelNearbyNib, forCellReuseIdentifier: "hotelNearbyPage")
        hotelNearbyPage.delegate = self
        hotelNearbyPage.dataSource = self
    }


}; extension HotelNearbyPage : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passingHotel2!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = hotelNearbyPage.dequeueReusableCell(withIdentifier: "hotelNearbyPage", for: indexPath)as? HotelNearbyPageTableViewCell, let passingDataHotel = passingHotel2? [indexPath.row]  else { return UITableViewCell()
        }
        
        //terus dia dijagain didalem guard let
        //kalo sifatnya optional kalo engga,
        //langsung aja ketik di bawah(luar guard let) buat dipake
        
        
        //assign data passingDataHotel ke passingHotel2
        cell.setUpTableViewHotelNearby(passingData: passingDataHotel)
        cell.passingHotel2 =  passingDataHotel
        return cell
    }
    
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewMoreAbout = storyboard.instantiateViewController(identifier: "AboutHotelViewController") as? AboutHotelViewController{
            navigationController?.pushViewController(viewMoreAbout, animated: true)
        }
    }
}
