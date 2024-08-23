//
//  MealDBApp.swift
//  MealDB
//
//  Created by Iker Perea on 22/8/24.
//

import SwiftUI

@main
struct MealDBApp: App {
    @ObservedObject var viewModel = MealViewModel()
    var body: some Scene {
        WindowGroup {
            ExploreView(viewModel: viewModel)
        }
    }
}
