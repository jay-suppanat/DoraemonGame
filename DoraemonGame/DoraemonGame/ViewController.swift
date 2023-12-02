//
//  ViewController.swift
//  DoraemonGame
//
//  Created by Suppanat Chinthumrucks on 3/12/2566 BE.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

  }

  // MARK: Internal

  @IBOutlet weak var cardView: UIButton!
  @IBOutlet weak var randomButton: UIButton!
  @IBOutlet weak var resetButton: UIButton!
  var isOpen = false
  var cardDeck = CardDeckClass()
  var cardName = ""

  @IBAction
  func showCommand(_ sender: UIButton) {
      if self.isOpen == true {
          Haptic.impact(.heavy).generate()
          switch self.cardName {
          case let str where str.contains("2"):
              let alert = UIAlertController(
                  title: "Your Card: 2",
                  message: Constant.Card.command2,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("3"):
              let alert = UIAlertController(
                  title: "Your Card: 3",
                  message: Constant.Card.command3,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("4"):
              let alert = UIAlertController(
                  title: "Your Card: 4",
                  message: Constant.Card.command4,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("5"):
              let alert = UIAlertController(
                  title: "Your Card: 5",
                  message: Constant.Card.command5,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("6"):
              let alert = UIAlertController(
                  title: "Your Card: 6",
                  message: Constant.Card.command6,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("7"):
              let alert = UIAlertController(
                  title: "Your Card: 7",
                  message: Constant.Card.command7,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("8"):
              let alert = UIAlertController(
                  title: "Your Card: 8",
                  message: Constant.Card.command8,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("9"):
              let alert = UIAlertController(
                  title: "Your Card: 9",
                  message: Constant.Card.command9,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("0"):
              let alert = UIAlertController(
                  title: "Your Card: 10",
                  message: Constant.Card.command10,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("J"):
              let alert = UIAlertController(
                  title: "Your Card: J",
                  message: Constant.Card.commandJ,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("Q"):
              let alert = UIAlertController(
                  title: "Your Card: Q",
                  message: Constant.Card.commandQ,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("K"):
              let alert = UIAlertController(
                  title: "Your Card: K",
                  message: Constant.Card.commandK,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          case let str where str.contains("A"):
              let alert = UIAlertController(
                  title: "Your Card: A",
                  message: Constant.Card.commandA,
                  preferredStyle: UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          default:
              print("🚨 showCommand Function Error")
          }
      } else {
          let alert = UIAlertController(
              title: "Alert 🤬",
              message: "Please random card first.",
              preferredStyle: UIAlertController.Style.alert)
          alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
          self.present(alert, animated: true, completion: nil)
      }
  }

  @IBAction
  func randomCard(_ sender: UIButton) {
      Haptic.impact(.heavy).generate()
      if self.cardDeck.cardDeck.kingCard.isEmpty {
          self.cardView.imageView?.image = UIImage(named: "outOfKing")
          let alert = UIAlertController(
              title: "Game End 🎉",
              message: "Press Reset button to fill card deck.",
              preferredStyle: UIAlertController.Style.alert)
          alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
          self.present(alert, animated: true, completion: nil)
          print("🙅🏻‍♂️👑 Out of King 🙅🏻‍♂️👑")
      } else {
          if self.isOpen {
              self.isOpen = false
              let image = UIImage(named: "backCard")
              self.cardView.setImage(image, for: .normal)
              UIView.transition(
                  with: self.cardView,
                  duration: 0.3,
                  options: .transitionFlipFromRight,
                  animations: nil,
                  completion: nil)
          } else {
              let cardResult2 = self.randomCard()
              print("🃏 Card Result: \(cardResult2)")
              print("😍 Total Card Remaining: \(self.cardDeck.cardDeck.cardDeck.count) 😍")
              print("👑 Total King Card Remaining: \(self.cardDeck.cardDeck.kingCard.count) 👑")
              self.isOpen = true
              let image = UIImage(named: cardResult2)
              self.cardView.setImage(image, for: .normal)
              UIView.transition(
                  with: self.cardView,
                  duration: 0.3,
                  options: .transitionFlipFromRight,
                  animations: nil,
                  completion: nil)
          }
      }
  }

  @IBAction
  func resetCard(_ sender: UIButton) {
      Haptic.impact(.heavy).generate()
      self.cardView.setImage(UIImage(named: "backCard"), for: .normal)
      self.cardDeck.cardDeck.cardDeck.removeAll()
      self.cardDeck.cardDeck.cardDeck = Constant.Card.mainCardDeck
      self.cardDeck.cardDeck.kingCard = Constant.Card.mainKingCard
      print("⏪ Reset Card Deck: \(self.cardDeck.cardDeck.cardDeck.count)")
      print("⏪ Reset King Card Deck\(self.cardDeck.cardDeck.kingCard.count)")
  }

  func randomCard() -> String {
      var cardDeckIndex = self.cardDeck.cardDeck.cardDeck.count - 1
      let randomIndex = Int.random(in: 0...cardDeckIndex)
      let cardResult = self.cardDeck.cardDeck.cardDeck[randomIndex]
      self.cardName = cardResult
      if cardResult.contains("K") {
          self.cardDeck.cardDeck.cardDeck.remove(at: randomIndex)
          self.cardDeck.cardDeck.kingCard.remove(at: 0)
      } else {
          self.cardDeck.cardDeck.cardDeck.remove(at: randomIndex)
      }
      cardDeckIndex -= 1
      return cardResult
  }

  func setupViewController() {
      self.cardView.setImage(UIImage(named: "backCard"), for: .normal)
      self.randomButton.setTitle("Random", for: .normal)
      self.resetButton.setTitle("Reset", for: .normal)
      self.randomButton.layer.cornerRadius = 20.0
      self.resetButton.layer.cornerRadius = 20.0
      self.randomButton.backgroundColor = UIColor.systemGreen
      self.resetButton.backgroundColor = UIColor.systemRed
      self.title = Constant.Project.randomCard
      self.navigationController?.navigationBar.prefersLargeTitles = true
      self.navigationItem.largeTitleDisplayMode = .always
  }

}

