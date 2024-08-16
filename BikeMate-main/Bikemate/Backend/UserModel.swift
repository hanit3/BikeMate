//
//  UserModel.swift
//  FirebaseTest
//
//  Created by new on 2022/02/18.
//

import ObjectMapper
import Accelerate

class UserModel: Mappable {
    
    static let shared = UserModel()
    
    var email: String = ""
    var name: String = ""
    var uid: String = ""
    var groupid: String? // 사용자가 그룹 추천을 받을 경우 해당 그룹 id 부여.
    var age: Int = 20
    var gender: Gender = .w
    var location: Location = .Gangnam // 선호 지역구
    var prefer_space: Prefer_space = .river // 주행 선호 장소
    var how_often: How_often = .one // 주 라이딩 횟수
    var prefer_time: Prefer_time = .morning // 주행 선호 시간대
    
    private init() {}
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        email <- map["email"]
        name <- map["name"]
        uid <- map["uid"]
        age <- map["age"]
        gender <- map["gender"]
        location <- map["location"]
        prefer_space <- map["prefer_space"]
        how_often <- map["how_often"]
        prefer_time <- map["prefer_time"]
    }
}

enum Gender: Int{
    case w
    case m
}

enum Location: Int {
    case Jongno
    case jung
    case Yongsan
    case Gwangjin
    case Dongdaemun
    case Jungnang
    case Seongbuk
    case Gangbuk
    case Dobong
    case Nowon
    case Eunpyeong
    case Seodaemun
    case Mapo
    case Yangcheon
    case Gangseo
    case Guro
    case Geumcheon
    case Yeongdeungpo
    case Dongjak
    case Gwanak
    case Seocho
    case Gangnam
    case Songpa
    case Gangdong
}


enum Prefer_space: Int{
    case mountain
    case river
    case city_road
    case park
}

enum How_often: Int{
    case one // 1-2회
    case two // 3-4회
    case three // 5회 이상
}

enum Prefer_time: Int{

    case morning // 06-09
    case midday // 09-12
    case afternoon // 12-15
    case evening // 15-18
    case night // 18-21
    case midnight // 21-24
    case dawn // 00-03
    case dawn_morning // 03-06
    
}

