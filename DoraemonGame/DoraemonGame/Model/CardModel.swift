//
//  CardModel.swift
//  DoraemonGame
//
//  Created by Suppanat Chinthumrucks on 3/12/2566 BE.
//

import Foundation

struct CardDeckStruct {
  var cardDeck: [String]
  var kingCard: [String]

  init(cardDeck: [String], kingCard: [String]) {
    self.cardDeck = cardDeck
    self.kingCard = kingCard
  }
}

// MARK: - CardDeckClass

class CardDeckClass {
  var cardDeck = CardDeckStruct(cardDeck: [
    "2", "22", "222", "2222",
    "3", "33", "333", "3333",
    "4", "44", "444", "4444",
    "5", "55", "555", "5555",
    "6", "66", "666", "6666",
    "7", "77", "777", "7777",
    "8", "88", "888", "8888",
    "9", "99", "999", "9999",
    "0", "00", "000", "0000",
    "J", "JJ", "JJJ", "JJJJ",
    "Q", "QQ", "QQQ", "QQQQ",
    "K", "KK", "KKK", "KKKK",
    "A", "AA", "AAA", "AAAA"
  ], kingCard: ["K", "KK", "KKK", "KKKK"])
}
