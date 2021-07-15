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
    CellInfo(talkPeople: .me, gender: .boy, image: .leeIkJun, name: .leeIkJun, chatContent: "碩亨"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .yangSeokHyeong, name: .yangSeokHyeong, chatContent: "恩？"),
    CellInfo(talkPeople: .me, gender: .boy, image: .leeIkJun, name: .leeIkJun, chatContent: "我不想跟你媽分享我前列腺的問題"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .yangSeokHyeong, name: .yangSeokHyeong, chatContent: "我跟我媽說你最近上很常跑廁所 也說你頻尿和殘尿的狀況很嚴重"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .kimJunWan, name: .kimJunWan, chatContent: "喂！蔡頌和！閔教授跟你男友又不一樣，閔教授跟我毫無關係啊！而且那是工作，你們兩個是情侶，我哪有權利說三道四啊"),
    CellInfo(talkPeople: .otherPeople, gender: .girl, image: .chaeSongHwa, name: .chaeSongHwa, chatContent: "有人叫你說三道四嗎？你就把看到的事實告訴我啊"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .kimJunWan, name: .kimJunWan, chatContent: "那你做得到嗎？"),
    CellInfo(talkPeople: .otherPeople, gender: .girl, image: .chaeSongHwa, name: .chaeSongHwa, chatContent: "我可以！"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .kimJunWan, name: .kimJunWan, chatContent: "少騙人了！"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .ahnJeongWon, name: .ahnJeongWon, chatContent: "喂！"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .ahnJeongWon, name: .ahnJeongWon, chatContent: "刀削麵可以吃了，先吃完再吵"),
    CellInfo(talkPeople: .otherPeople, gender: .girl, image: .chaeSongHwa, name: .chaeSongHwa, chatContent: "要是我 看到你女友跟別的男人在一起，我一定毫不考慮就打給你！"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .kimJunWan, name: .kimJunWan, chatContent: "唉唷，站著說話不腰疼喔"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .kimJunWan, name: .kimJunWan, chatContent: "我一開始就不喜歡張教授那傢伙了"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .kimJunWan, name: .kimJunWan, chatContent: "給我辣椒粉"),
    CellInfo(talkPeople: .otherPeople, gender: .girl, image: .chaeSongHwa, name: .chaeSongHwa, chatContent: "給你"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .ahnJeongWon, name: .ahnJeongWon, chatContent: "碩亨，聽說你買了一台超大的電視啊？"),
    CellInfo(talkPeople: .me, gender: .boy, image: .leeIkJun, name: .leeIkJun, chatContent: "碩亨和電視在談戀愛啊"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .yangSeokHyeong, name: .yangSeokHyeong, chatContent: "我是花了點錢"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .ahnJeongWon, name: .ahnJeongWon, chatContent: "下次練團的時候，我要上去看看"),
    CellInfo(talkPeople: .otherPeople, gender: .boy, image: .yangSeokHyeong, name: .yangSeokHyeong, chatContent: "對了，我們下次練團室什麼時候？這週末如何？"),
    CellInfo(talkPeople: .otherPeople, gender: .girl, image: .chaeSongHwa, name: .chaeSongHwa, chatContent: "我週末有手術"),

]
