//
//  CyclingDistanceViewController.swift
//  Bikemate
//
//  Created by SC on 2022/02/18.
//

import UIKit

class CyclingDistanceViewController : UIViewController {
    
    @IBOutlet weak var graphImageViewForTheAverage: UIImageView!
    @IBOutlet weak var graphImageViewForTheTotal: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let graphImage : UIImage? = UIImage(named: "graphImage.png")
        graphImageViewForTheAverage.image = graphImage
        graphImageViewForTheTotal.image = graphImage
    }
    
}

