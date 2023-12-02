//
//  ViewController.swift
//  DoraemonGame
//
//  Created by Suppanat Chinthumrucks on 3/12/2566 BE.
//

import UIKit
import Haptica

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.setupViewController()
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
            self.present(AppCallers().showCommandAlert(title: "2", message: Constant.Command.command2, buttonTitle: "OK"), animated: true)
          case let str where str.contains("3"):
            self.present(AppCallers().showCommandAlert(title: "3", message: Constant.Command.command3, buttonTitle: "OK"), animated: true)
          case let str where str.contains("4"):
            self.present(AppCallers().showCommandAlert(title: "4", message: Constant.Command.command4, buttonTitle: "OK"), animated: true)
          case let str where str.contains("5"):
            self.present(AppCallers().showCommandAlert(title: "5", message: Constant.Command.command5, buttonTitle: "OK"), animated: true)
          case let str where str.contains("6"):
            self.present(AppCallers().showCommandAlert(title: "6", message: Constant.Command.command6, buttonTitle: "OK"), animated: true)
          case let str where str.contains("7"):
            self.present(AppCallers().showCommandAlert(title: "7", message: Constant.Command.command7, buttonTitle: "OK"), animated: true)
          case let str where str.contains("8"):
            self.present(AppCallers().showCommandAlert(title: "8", message: Constant.Command.command8, buttonTitle: "OK"), animated: true)
          case let str where str.contains("9"):
            self.present(AppCallers().showCommandAlert(title: "9", message: Constant.Command.command9, buttonTitle: "OK"), animated: true)
          case let str where str.contains("0"):
            self.present(AppCallers().showCommandAlert(title: "0", message: Constant.Command.command10, buttonTitle: "OK"), animated: true)
          case let str where str.contains("J"):
            self.present(AppCallers().showCommandAlert(title: "J", message: Constant.Command.commandJ, buttonTitle: "OK"), animated: true)
          case let str where str.contains("Q"):
            self.present(AppCallers().showCommandAlert(title: "Q", message: Constant.Command.commandQ, buttonTitle: "OK"), animated: true)
          case let str where str.contains("K"):
            self.present(AppCallers().showCommandAlert(title: "K", message: Constant.Command.commandK, buttonTitle: "OK"), animated: true)
          case let str where str.contains("A"):
            self.present(AppCallers().showCommandAlert(title: "A", message: Constant.Command.commandA, buttonTitle: "OK"), animated: true)
          default:
              print("🚨 showCommand Function Error")
          }
      } else {
          self.present(AppCallers().showCommandAlert(title: "Alert 🤬", message: Constant.Alert.randomCardFirst, buttonTitle: "OK"), animated: true)
      }
  }

  @IBAction
  func randomCard(_ sender: UIButton) {
      Haptic.impact(.heavy).generate()
      if self.cardDeck.cardDeck.kingCard.isEmpty {
          let alert = UIAlertController(
              title: "Game End 🎉",
              message: "Press Reset button to fill card deck.",
              preferredStyle: UIAlertController.Style.alert)
          alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
          self.present(alert, animated: true, completion: nil)
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
    self.view.backgroundColor = .black
      self.cardView.setImage(UIImage(named: "backCard"), for: .normal)
      self.randomButton.setTitle("Random", for: .normal)
      self.resetButton.setTitle("Reset", for: .normal)
      self.randomButton.layer.cornerRadius = 20.0
      self.resetButton.layer.cornerRadius = 20.0
      self.randomButton.backgroundColor = UIColor.systemGreen
      self.resetButton.backgroundColor = UIColor.systemRed
      self.navigationController?.navigationBar.prefersLargeTitles = true
      self.navigationItem.largeTitleDisplayMode = .always
  }

}

