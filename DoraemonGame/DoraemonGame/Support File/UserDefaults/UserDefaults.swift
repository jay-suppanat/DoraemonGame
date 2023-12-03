//
//  UserDefaults.swift
//  DoraemonGame
//
//  Created by Suppanat Chinthumrucks on 3/12/2566 BE.
//

import Foundation

class UserDefault {
  static var shared = UserDefault()
  let userDefaults = UserDefaults.standard

  func setCommand2(command2: String) {
    self.userDefaults.set(command2, forKey: UserDefaultsKey.command2Key)
  }

  func getCommand2() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.command2Key) ?? Constant.Command.command2
  }

  func setCommand3(command3: String) {
    self.userDefaults.set(command3, forKey: UserDefaultsKey.command3Key)
  }

  func getCommand3() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.command3Key) ?? Constant.Command.command3
  }

  func setCommand4(command4: String) {
    self.userDefaults.set(command4, forKey: UserDefaultsKey.command4Key)
  }

  func getCommand4() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.command4Key) ?? Constant.Command.command4
  }

  func setCommand5(command5: String) {
    self.userDefaults.set(command5, forKey: UserDefaultsKey.command5Key)
  }

  func getCommand5() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.command5Key) ?? Constant.Command.command5
  }

  func setCommand6(command6: String) {
    self.userDefaults.set(command6, forKey: UserDefaultsKey.command6Key)
  }

  func getCommand6() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.command6Key) ?? Constant.Command.command6
  }

  func setCommand7(command7: String) {
    self.userDefaults.set(command7, forKey: UserDefaultsKey.command7Key)
  }

  func getCommand7() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.command7Key) ?? Constant.Command.command7
  }

  func setCommand8(command8: String) {
    self.userDefaults.set(command8, forKey: UserDefaultsKey.command8Key)
  }

  func getCommand8() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.command8Key) ?? Constant.Command.command8
  }

  func setCommand9(command9: String) {
    self.userDefaults.set(command9, forKey: UserDefaultsKey.command9Key)
  }

  func getCommand9() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.command9Key) ?? Constant.Command.command9
  }

  func setCommand10(command10: String) {
    self.userDefaults.set(command10, forKey: UserDefaultsKey.command10Key)
  }

  func getCommand10() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.command10Key) ?? Constant.Command.command10
  }

  func setCommandJ(commandJ: String) {
    self.userDefaults.set(commandJ, forKey: UserDefaultsKey.commandJKey)
  }

  func getCommandJ() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.commandJKey) ?? Constant.Command.commandJ
  }

  func setCommandQ(commandQ: String) {
    self.userDefaults.set(commandQ, forKey: UserDefaultsKey.commandQKey)
  }

  func getCommandQ() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.commandQKey) ?? Constant.Command.commandQ
  }

  func setCommandK(commandK: String) {
    self.userDefaults.set(commandK, forKey: UserDefaultsKey.commandKKey)
  }

  func getCommandK() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.commandKKey) ?? Constant.Command.commandK
  }

  func setCommandA(commandA: String) {
    self.userDefaults.set(commandA, forKey: UserDefaultsKey.commandAKey)
  }

  func getCommandA() -> String {
    return self.userDefaults.string(forKey: UserDefaultsKey.commandAKey) ?? Constant.Command.commandA
  }
}
