//
//  Constants.swift
//  DoraemonGame
//
//  Created by Suppanat Chinthumrucks on 3/12/2566 BE.
//

import Foundation

enum Constant {

    enum Card {
        static let mainKingCard = ["K", "KK", "KKK", "KKKK"]
        static let mainCardDeck = [
            "2",
            "22",
            "222",
            "2222",
            "3",
            "33",
            "333",
            "3333",
            "4",
            "44",
            "444",
            "4444",
            "5",
            "55",
            "555",
            "5555",
            "6",
            "66",
            "666",
            "6666",
            "7",
            "77",
            "777",
            "7777",
            "8",
            "88",
            "888",
            "8888",
            "9",
            "99",
            "999",
            "9999",
            "0",
            "00",
            "000",
            "0000",
            "J",
            "JJ",
            "JJJ",
            "JJJJ",
            "Q",
            "QQ",
            "QQQ",
            "QQQQ",
            "K",
            "KK",
            "KKK",
            "KKKK",
            "A",
            "AA",
            "AAA",
            "AAAA"
        ]
    }

  enum Command {
    static let command2 = "กินครึ่งแก้ว"
    static let command3 = "คนทางซ้ายกิน"
    static let command4 = "คนทางขวากิน"
    static let command5 = "เลือกใครเป็นบัดดี้ก็ได้\nหรือ\nยกเลิกการเป็นบัดดี้"
    static let command6 = "เลือกหมวดหมู่มา 1 หมวด\nใครตอบผิด ตอบซ้ำ\nตอบไม่ได้ กินหมดแก้ว"
    static let command7 = "เลือกตัวเลขมา 1 ตัว\nห้ามพูดเลขที่มีเลขที่เลือก\nหรือหารด้วยตัวเลขที่เลือกลงตัว"
    static let command8 = "เก็บการ์ดนี้ไว้\nเมื่อใช้จะสามารถไปเข้าห้องน้ำได้\nใช้ตอนไหนก็ได้"
    static let command9 = "ทำท่าจับคางตอนไหนก็ได้\nแล้วให้คนอื่นทำตาม\nใครทำคนสุดท้าย กินหมดแก้ว"
    static let command10 = "สร้างคำขึ้นมา 1 คำ ห้ามพูดคำนี้\nจนกว่าเกมจะจบ"
    static let commandJ = "เลือกใบ้ใครก็ได้ 1 คน\n(จะยกเลิกเมื่อมีคนคุยด้วย)"
    static let commandQ = "สั่งใครกินก็ได้"
    static let commandK = "K ใบแรก: สั่งว่าให้ทำไร\nK ใบสอง: จำนวนเท่าไร\nK ใบสาม: ทำที่ไหน\nK ใบสี่: ให้ใครทำ"
    static let commandA = "กินหมดแก้ว"

    static let commandArray = [
      UserDefault.shared.getCommand2(),
      UserDefault.shared.getCommand3(),
      UserDefault.shared.getCommand4(),
      UserDefault.shared.getCommand5(),
      UserDefault.shared.getCommand6(),
      UserDefault.shared.getCommand7(),
      UserDefault.shared.getCommand8(),
      UserDefault.shared.getCommand9(),
      UserDefault.shared.getCommand10(),
      UserDefault.shared.getCommandJ(),
      UserDefault.shared.getCommandQ(),
      UserDefault.shared.getCommandK(),
      UserDefault.shared.getCommandA(),
    ]
  }

  enum Alert {
    static let randomCardFirst = "Please random card first."
    static let gameEnd = "Game End 🎉"
    static let pleaseReset = "Press Reset button to restart game."
  }

  enum Title {
    static let commandTitle = "Command 🤴🏻"
  }

  enum Wording {
    static let cardArray = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  }

}
