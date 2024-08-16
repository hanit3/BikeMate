//
//  BikeListViewController.swift
//  Bikemate
//
//  Created by 박진서 on 2022/02/20.
//

import UIKit
import CoreLocation
import NMapsMap


class BikeListViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapContainerView: UIView!
    
    private var locationManager: CLLocationManager!
    
    private var mapView: NMFMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setLocationPermission()
        mapView = NMFMapView(frame: mapContainerView.frame)
        mapContainerView.addSubview(mapView)
        mapView.positionMode = .normal
        
        setMapViewLoctaionDefault()
        
    }
    
    
    /*
     현재 위치로 카메라 이동
     */

    private func setMapViewLoctaionDefault() {
        let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: locationManager.location?.coordinate.latitude ?? 0, lng: locationManager.location?.coordinate.longitude ?? 0))
        cameraUpdate.animation = .easeIn
        mapView.moveCamera(cameraUpdate)
    }
    
    private func setLocationPermission() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
    }
    
    private func getLocationUsagePermission() {
        //location4
        self.locationManager.requestWhenInUseAuthorization()

    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
         //location5
         switch status {
         case .authorizedAlways, .authorizedWhenInUse:
             print("GPS 권한 설정됨")
             self.locationManager.startUpdatingLocation() // 중요!

         case .restricted, .notDetermined:
             print("GPS 권한 설정되지 않음")
             getLocationUsagePermission()
         case .denied:
             print("GPS 권한 요청 거부됨")
             getLocationUsagePermission()
         default:
             print("GPS: Default")
         }
    }
}
