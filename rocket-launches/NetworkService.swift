//
//  NetworkService.swift
//  rocket-launches
//
//  Created by Developer on 21/10/2023.
//
import Apollo
import Foundation

final class NetworkService {
  static let shared = NetworkService()
  
  private(set) var apollo = ApolloClient(url: URL(string:"https://spacex-production.up.railway.app/")!)
  private init() {}
}
