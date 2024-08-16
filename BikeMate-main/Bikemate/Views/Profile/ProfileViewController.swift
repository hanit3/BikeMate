//
//  ProfileViewController.swift
//  Bikemate
//
//  Created by SC on 2022/02/18.
//

import UIKit

//class ProfileViewController : UIViewController {
class ProfileViewController : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    //    @IBOutlet var pickerAge: UIPickerView!
    //    @IBOutlet var pickerDistrict: UIPickerView!
    
    
    @IBOutlet weak var graphImageViewForSpeed: UIImageView!
    @IBOutlet weak var graphImageViewForDistance: UIImageView!
    @IBOutlet weak var ridesPerWeekButton: UIButton!
    @IBOutlet weak var preferredTimeButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        
        let graphImage : UIImage? = UIImage(named: "graphImage.png")
        graphImageViewForSpeed.image = graphImage
        graphImageViewForDistance.image = graphImage
        generateRidesPerWeekButtonMenus()
        generatePrferredTimeButtonMenus()
        
    }


    let ageValues = [Int](20...70)
    let districtValues = ["강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구",
                          "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구"]
    
    // MARK: - Generating Button Menus for Rides Per Week
    // 주 라이딩 횟수 버튼 메뉴 생성

    func generateRidesPerWeekButtonMenus() {
        
        // 메뉴 버튼 추가법
        var menus = [UIAction]()
        
        // 주 라이딩 횟수 How_often
        // 위에 menus에 메뉴들 넣기
        
        menus.append(UIAction(title: "주 1-2 회") { _ in
            // 여기에 이 메뉴를 눌렀을 때 실행되는 이벤트를 작성
            self.ridesPerWeekButton.setTitle("주 1-2회 ", for: .normal) // 메뉴 버튼의 글자 변경
            UserModel.shared.how_often = .one  // 내 정보에 주 라이딩 횟수 변경,
            // 서버에 내 정보 - 주 라이딩 횟수 변경하는 코드는 이준님이 작성 *필수*

        })
        
        menus.append(UIAction(title: "주 3-4 회") { _ in
            // 여기에 이 메뉴를 눌렀을 때 실행되는 이벤트를 작성
            self.ridesPerWeekButton.setTitle("주 3-4 회", for: .normal) // 메뉴 버튼의 글자 변경
            UserModel.shared.how_often = .two  // 내 정보에 주 라이딩 횟수 변경,
            // 서버에 내 정보 - 주 라이딩 횟수 변경하는 코드는 이준님이 작성 *필수*

        })
        
        menus.append(UIAction(title: "주 5 회 이상") { _ in
            // 여기에 이 메뉴를 눌렀을 때 실행되는 이벤트를 작성
            self.ridesPerWeekButton.setTitle("주 5 회 이상", for: .normal) // 메뉴 버튼의 글자 변경
            UserModel.shared.how_often = .three  // 내 정보에 주 라이딩 횟수 변경,
            // 서버에 내 정보 - 주 라이딩 횟수 변경하는 코드는 이준님이 작성 *필수*

        })
        
        /*
         위에 메뉴들
         메뉴 버튼에 장착
         */
        ridesPerWeekButton.menu = UIMenu(title: "선택", identifier: nil, options: .displayInline, children: menus)
        ridesPerWeekButton.showsMenuAsPrimaryAction = true
        if #available(iOS 15.0, *) {
            ridesPerWeekButton.changesSelectionAsPrimaryAction = true
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    
    // MARK: - Generating Button Menus for Preferred Time
    // 선호 시간대 버튼 메뉴 생성

    func generatePrferredTimeButtonMenus() {
        
        // 메뉴 버튼 추가법
        var menus = [UIAction]()
        
        // 주 라이딩 횟수 Prefer_time
        // 위에 menus에 메뉴들 넣기
        
        menus.append(UIAction(title: "06-09 시") { _ in
            // 여기에 이 메뉴를 눌렀을 때 실행되는 이벤트를 작성
            self.preferredTimeButton.setTitle("06-09 시", for: .normal) // 메뉴 버튼의 글자 변경
            UserModel.shared.prefer_time = .morning  // 내 정보에 선호 시간대 변경,
            // 서버에 내 정보 - 선호 시간대 변경하는 코드는 이준님이 작성 *필수*
        })
        
        menus.append(UIAction(title: "09-12 시") { _ in
            // 여기에 이 메뉴를 눌렀을 때 실행되는 이벤트를 작성
            self.preferredTimeButton.setTitle("09-12 시", for: .normal) // 메뉴 버튼의 글자 변경
            UserModel.shared.prefer_time = .midday  // 내 정보에 선호 시간대 변경,
            // 서버에 내 정보 - 선호 시간대 변경하는 코드는 이준님이 작성 *필수*
        })
        
        menus.append(UIAction(title: "12-15 시") { _ in
            // 여기에 이 메뉴를 눌렀을 때 실행되는 이벤트를 작성
            self.preferredTimeButton.setTitle("12-15 시", for: .normal) // 메뉴 버튼의 글자 변경
            UserModel.shared.prefer_time = .afternoon  // 내 정보에 선호 시간대 변경,
            // 서버에 내 정보 - 선호 시간대 변경하는 코드는 이준님이 작성 *필수*
        })
        
        menus.append(UIAction(title: "15-18 시") { _ in
            // 여기에 이 메뉴를 눌렀을 때 실행되는 이벤트를 작성
            self.preferredTimeButton.setTitle("15-18 시", for: .normal) // 메뉴 버튼의 글자 변경
            UserModel.shared.prefer_time = .evening  // 내 정보에 선호 시간대 변경,
            // 서버에 내 정보 - 선호 시간대 변경하는 코드는 이준님이 작성 *필수*
        })
        
        menus.append(UIAction(title: "18-21 시") { _ in
            // 여기에 이 메뉴를 눌렀을 때 실행되는 이벤트를 작성
            self.preferredTimeButton.setTitle("18-21 시", for: .normal) // 메뉴 버튼의 글자 변경
            UserModel.shared.prefer_time = .night  // 내 정보에 선호 시간대 변경,
            // 서버에 내 정보 - 선호 시간대 변경하는 코드는 이준님이 작성 *필수*
        })
        
        menus.append(UIAction(title: "21-24 시") { _ in
            // 여기에 이 메뉴를 눌렀을 때 실행되는 이벤트를 작성
            self.preferredTimeButton.setTitle("21-24 시", for: .normal) // 메뉴 버튼의 글자 변경
            UserModel.shared.prefer_time = .midnight  // 내 정보에 선호 시간대 변경,
            // 서버에 내 정보 - 선호 시간대 변경하는 코드는 이준님이 작성 *필수*
        })
        
        menus.append(UIAction(title: "00-03 시") { _ in
            // 여기에 이 메뉴를 눌렀을 때 실행되는 이벤트를 작성
            self.preferredTimeButton.setTitle("00-03 시", for: .normal) // 메뉴 버튼의 글자 변경
            UserModel.shared.prefer_time = .dawn  // 내 정보에 선호 시간대 변경,
            // 서버에 내 정보 - 선호 시간대 변경하는 코드는 이준님이 작성 *필수*
        })
        
        menus.append(UIAction(title: "03-06 시") { _ in
            // 여기에 이 메뉴를 눌렀을 때 실행되는 이벤트를 작성
            self.preferredTimeButton.setTitle("03-06 시", for: .normal) // 메뉴 버튼의 글자 변경
            UserModel.shared.prefer_time = .dawn_morning  // 내 정보에 선호 시간대 변경,
            // 서버에 내 정보 - 선호 시간대 변경하는 코드는 이준님이 작성 *필수*
        })
        
        
        /*
         위에 메뉴들
         메뉴 버튼에 장착
         */
        preferredTimeButton.menu = UIMenu(title: "선택", identifier: nil, options: .displayInline, children: menus)
        preferredTimeButton.showsMenuAsPrimaryAction = true
        if #available(iOS 15.0, *) {
            preferredTimeButton.changesSelectionAsPrimaryAction = true
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    
    // MARK: - Setting Pickers
    
//    let ridesPerWeekPicker = UIPickerView()
//    ridesPerWeekPicker.delegate = self  // 오류 나는 이유?
//    self.ridesPerWeekValue.inputView = ridesPerWeekPicker
    
    func setPickerView() {
        // 피커 세팅
//        let ridesPerWeekPicker = UIPickerView()
//        ridesPerWeekPicker.delegate = self
//        ridesPerWeekPicker.dataSource = self
//        yearTextField.tintColor = .clear
            
        /// 텍스트필드 입력 수단 연결
//        ridesPerWeekValue.inputView = ridesPerWeekPicker
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }

    
    // MARK: - View Change Functions
    @IBAction func editBasicProfileButtonClicked(_ sender: Any) {
        guard let editBasicProfileViewController = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(withIdentifier: "editbasicprofileVC") as? EditBasicProfileViewController else { fatalError() }
        
        self.navigationController?.pushViewController(editBasicProfileViewController, animated: true)
    }
    
    
    @IBAction func speedViewButtonClicked(_ sender: Any) {
        guard let cyclingSpeedViewController = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(withIdentifier: "cyclingspeedVC") as? CyclingSpeedViewController else { fatalError() }
        
        self.navigationController?.pushViewController(cyclingSpeedViewController, animated: true)
    }
    
    
    @IBAction func distanceViewButtonClicked(_ sender: Any) {
        guard let cyclingDistanceViewController = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(withIdentifier: "cyclingdistanceVC") as? CyclingDistanceViewController else { fatalError() }
        
        self.navigationController?.pushViewController(cyclingDistanceViewController, animated: true)
    }
    
    
    @IBAction func preferredenvironmentViewButtonClicked(_ sender: Any) {
        guard let preferredEnvironmentViewController = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(withIdentifier: "preferredenvironmentVC") as? PreferredEnvironmentViewController else { fatalError() }
        
        self.navigationController?.pushViewController(preferredEnvironmentViewController, animated: true)
    }
    
    
    @IBAction func recentCyclingHistoryViewButtonClicked(_ sender: Any) {
        guard let recentCyclingHistoryViewController = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(withIdentifier: "recentcyclinghistoryVC") as? RecentCyclingHistoryViewController else { fatalError() }
        
        self.navigationController?.pushViewController(recentCyclingHistoryViewController, animated: true)
        
    }
}

//    extension ProfileViewController : UIPickerViewDelegate, UIPickerViewDataSource {
//        func numberOfComponents(in pickerView: UIPickerView) -> Int {
//            return 1
//        }
//
//        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//            <#code#>
//        }
        
       


    
    //        init
//        viewdidload ....

        
        //push
        
        //데이터 전송 (전환을 하기전에)
        
//        viewController.data = "Test"
        
        

        
        //modal  -> Present
        
//        viewController.modalPresentationStyle = .fullScreen
//        self.present(viewController, animated: true, completion: nil)
    
    

    
//        BoardManager.shared.postNewBoard(num: <#T##String#>, uid: <#T##String#>, userName: <#T##String#>, title: <#T##String#>, content: <#T##String#>, createdAt: <#T##String#>, modifiedAt: <#T##String#>)
        
        

