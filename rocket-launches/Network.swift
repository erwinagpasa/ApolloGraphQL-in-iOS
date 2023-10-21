//
//  Network.swift
//  rocket-launches
//
//  Created by Developer on 21/10/2023.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()

  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://spacex-production.up.railway.app/")!)
  private init() {}
}
