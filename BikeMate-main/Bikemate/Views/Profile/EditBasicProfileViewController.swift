//
//  EditBasicProfileViewController.swift
//  Bikemate
//
//  Created by SC on 2022/02/18.
//

import UIKit

class EditBasicProfileViewController : UIViewController {
    
    
    @IBOutlet weak var nameValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    let ageValues = [Int](20...70)
    let districtValues = ["강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구"]
    
    
    /*
     키보드 내리기
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
//    @IBAction func getNameValue(_ sender: Any) {
//        print(UserModel.shared.name)
        // nameValue.text를 UserModel로 보내기
//        UserModel.shared.name = (nameValue.text)!
//        print(UserModel.shared.name)
//    }
    
}
