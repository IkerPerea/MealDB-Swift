//
//  ContentView.swift
//  MealDB
//
//  Created by Iker Perea on 22/8/24.
//

import SwiftUI

struct ExploreView: View {
    @State var searchText: String = ""
    @ObservedObject var viewModel: MealViewModel
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Search", text: $searchText)
                    .padding(.all)
                ScrollView {
                    ForEach(viewModel.searchMealData.meals, id: \.idMeal) { data in
                        MealPreviewModule(meal: data, viewModel: viewModel)
                    }
                }
            }
            .onChange(of: searchText) {
                if searchText.isEmpty {
                    
                } else {
                    viewModel.searchMeal(searchItem: searchText)
                }
            }
        }
    }
}

#Preview {
    ExploreView(viewModel: MealViewModel())
}
