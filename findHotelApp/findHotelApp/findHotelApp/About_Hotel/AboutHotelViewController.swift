//
//  AboutHotelViewController.swift
//  findHotelApp
//
//  Created by Salma Ayu on 03/03/23.
//

import UIKit

class AboutHotelViewController: UIViewController {
    @IBOutlet weak var aboutHotelTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutMoreHotel()

        // Do any additional setup after loading the view.
    }

    func aboutMoreHotel(){
        let aboutHoteNib = UINib(nibName: AboutHotelTableViewCell.identifier, bundle: nil)
        aboutHotelTableView.register(aboutHoteNib, forCellReuseIdentifier: AboutHotelTableViewCell.identifier)
    

        aboutHotelTableView.delegate = self
        aboutHotelTableView.dataSource = self
        
        
    
    }

}; extension AboutHotelViewController : UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 2
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            guard let cell = aboutHotelTableView.dequeueReusableCell(withIdentifier: AboutHotelTableViewCell.identifier, for: indexPath)  as? AboutHotelTableViewCell  else { return UITableViewCell() }
        
            
            return cell
            
        case 1:
            guard let cell2 = aboutHotelTableView.dequeueReusableCell(withIdentifier: AboutHotelCollectionTableViewCell.identifier, for: indexPath) as? AboutHotelCollectionTableViewCell else{
                return UITableViewCell()
            }
            
            cell2.setUpTable()
            return cell2
        default:
                break
        }
        
        return UITableViewCell()
    }
    
    
    
}
