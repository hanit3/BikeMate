//
//  OtherUserModel.swift
//  Bikemate
//
//  Created by new on 2022/02/20.
//

import ObjectMapper

struct OtherUserModel {

    
    var email: String = ""
    var name: String = ""
    var uid: String = ""
    var age: Int = 20
    var gender: Gender = .w
    var location: Location = .Gangnam // 선호 지역구
    var prefer_space: Prefer_space = .river // 주행 선호 장소
    var how_often: How_often = .one // 주 라이딩 횟수
    var prefer_time: Prefer_time = .morning // 주행 선호 시간대
    var boardIds: [String] = []
    
   

}
