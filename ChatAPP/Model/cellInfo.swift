//
//  cellInfo.swift
//  ChatAPP
//
//  Created by 賴柏穎 on 2021/7/15.
//

import Foundation

enum Gender {
    case girl
    case boy
}
enum TalkPeople {
    case me
    case otherPeople
}
enum Image: String {
    case chaeSongHwa = "chaeSongHwa"
    case ahnJeongWon = "ahnJeongWon"
    case kimJunWan = "kimJunWan"
    case leeIkJun = "leeIkJun"
    case yangSeokHyeong = "yangSeokHyeong"
}
enum Name: String {
    case chaeSongHwa = "채송화(Chae Song-hwa)"
    case ahnJeongWon = "안정원(Ahn Jeong-won)"
    case kimJunWan = "김준완 (Kim Jun-wan)"
    case leeIkJun = "이익준 (Lee Ik-jun)"
    case yangSeokHyeong = "양석형 (Yang Seok-hyeong)"
}


struct CellInfo {
    var talkPeople: TalkPeople
    var gender: Gender
    var image: Image
    var name: Name
    var chatContent: String
}

var cellInfos: [CellInfo] = [
    CellInfo(talkPeople: .otherPeople, gender: .girl, image: .chaeSongHwa, name: .chaeSongHwa, chatContent: "Hello!"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .ahnJeongWon, name: .ahnJeongWon, chatContent: "What's up?"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .kimJunWan, name: .kimJunWan, chatContent: "What's up?"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .yangSeokHyeong, name: .yangSeokHyeong, chatContent: "What's up?")
]
