//
//  TabView.swift
//  MealDB
//
//  Created by Iker Perea Trejo on 23/8/24.
//

import SwiftUI

struct Tab: View {
    @ObservedObject var viewModel: MealViewModel
    var body: some View {
        TabView {
            ExploreView(viewModel: viewModel)
                .tabItem {
                    Label("Explorer", systemImage: "house.fill")
                }
            
        }
    }
}

#Preview {
    Tab(viewModel: MealViewModel())
}
