//
//  CyclingSpeedViewController.swift
//  Bikemate
//
//  Created by SC on 2022/02/18.
//

import UIKit

class CyclingSpeedViewController : UIViewController {
    
    
    @IBOutlet weak var graphImageViewForTheAverage: UIImageView!
    @IBOutlet weak var graphImageViewForTheHighest: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let graphImage : UIImage? = UIImage(named: "graphImage.png")
        graphImageViewForTheAverage.image = graphImage
        graphImageViewForTheHighest.image = graphImage
    }
    
}

