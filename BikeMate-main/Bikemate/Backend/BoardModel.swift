//
//  BoardModel.swift
//  Bikemate
//
//  Created by new on 2022/02/17.
//

import Foundation

//게시물

class BoardModel {
    
    public let uid: String
    public let userId: String
    public let groupId: String
    public let title: String
    public let content: String
    public let createdAt: String
    public let modifiedAt: String
    
    public init(uid: String, userId: String, title: String, content: String, createdAt: String, modifiedAt: String, groupId: String)
    {
        self.uid = uid
        self.userId = userId
        self.title = title
        self.content = content
        self.createdAt = createdAt
        self.modifiedAt = modifiedAt
        self.groupId = groupId
    }
}

class GroupModel {
    
    public let uid: String = ""
    
    
}
