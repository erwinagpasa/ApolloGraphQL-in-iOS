//
//  LaunchViewModel.swift
//  rocket-launches
//
//  Created by Developer on 21/10/2023.
//

import SpaceXAPI
import Foundation

class LaunchViewModel: ObservableObject {
  
  init(){
    fetch()
  }
  
  func fetch(){
    Network.shared.apollo.fetch(query: RocketsQuery()){ result in
      switch result {
      case .success(let graphQLResult):
        print("Success Result: \(graphQLResult)")
      case .failure(let error):
        print("Failure Error: \(error)")
      }
      
    }
  }
}
