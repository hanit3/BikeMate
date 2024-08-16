//
//  MainTabBarController.swift
//  Bikemate
//
//  Created by 박진서 on 2022/02/18.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let _ = BoardManager.shared
        let _ = DatabaseManager.shared
        let _ = UserDatabaseManager.shared

        // Do any additional setup after loading the view.
        
        let profileSB = UIStoryboard(name: "Profile", bundle: nil)
        let profileVC = profileSB.instantiateViewController(withIdentifier: "profileVC") as! ProfileViewController
        profileVC.tabBarItem = UITabBarItem(title: nil,
                                            image: UIImage(systemName: "house"),
                                            selectedImage: UIImage(systemName: "house"))
        
        
        let bikeMapSB = UIStoryboard(name: "Bikemap", bundle: nil)
        let bikeMapVC = bikeMapSB.instantiateViewController(withIdentifier: "bikemapVC") as! BikemapViewController
        bikeMapVC.tabBarItem = UITabBarItem(title: nil,
                                            image: UIImage(systemName: "map"),
                                            selectedImage: UIImage(systemName: "map"))
        
        let bikeListSB = UIStoryboard(name: "Bikelist", bundle: nil)
        let bikeListVC = bikeListSB.instantiateViewController(withIdentifier: "bikelistVC") as! BikeListViewController
        bikeListVC.tabBarItem = UITabBarItem(title: nil,
                                             image: UIImage(systemName: "bicycle"),
                                             selectedImage: UIImage(systemName: "bicycle"))
        
        
        
        let groupSB = UIStoryboard(name: "Group", bundle: nil)
        let beforegroupingVC  = groupSB.instantiateViewController(withIdentifier: "beforegroupingVC") as! BeforeGroupingViewController
        beforegroupingVC.tabBarItem = UITabBarItem(title: nil,
                                         image: UIImage(systemName: "person.3"),
                                        selectedImage: UIImage(systemName: "person.3"))
        viewControllers = [ UINavigationController(rootViewController: profileVC), UINavigationController(rootViewController: bikeMapVC), UINavigationController(rootViewController: bikeListVC) ,UINavigationController(rootViewController: beforegroupingVC)]
        
        [   profileVC,
            bikeMapVC,
            bikeListVC,
            beforegroupingVC ].forEach { $0?.tabBarItem.imageInsets = UIEdgeInsets.init(top: 10,left: 0,bottom: -5,right: 0) }
        
        
        
        
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
    }
    

}
