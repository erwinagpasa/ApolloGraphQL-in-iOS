//
//  ContentView.swift
//  rocket-launches
//
//  Created by Developer on 21/10/2023.
//
import SpaceXAPI
import SwiftUI

struct ContentView: View {

  @State private var rockets: [RocketsQuery.Data.Rocket] = []

  var body: some View {
    NavigationView {
      VStack{
        List(rockets, id: \.id) { rockets in
          Text(rockets.name!)
         }
      }
      .onAppear(perform: {
        Network.shared.apollo.fetch(query: RocketsQuery()) { result in
          switch result {
          case .success(let graphQLResult):
            if let rockets = graphQLResult.data?.rockets {
              // Unwrap optional values and assign to rockets
              DispatchQueue.main.async {
                self.rockets = rockets.compactMap { $0 }
              }

            }
          case .failure(let error):
            print("Failure Error: \(error)")
          }
        }
      })
      .navigationTitle("Test")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
