//
//  MealViewModel.swift
//  MealDB
//
//  Created by Iker Perea Trejo on 22/8/24.
//

import Foundation
import SwiftUI
class MealViewModel: ObservableObject {
    @Published var searchMealData: MealData = MealData(meals: [])
    func searchMeal(searchItem: String) {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/search.php?s=\(searchItem)") else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    do {
                        let decodedData = try JSONDecoder().decode(MealData.self, from: data)
                        self.searchMealData = decodedData
                    } catch {
                        print(error.localizedDescription)
                    }
                }
                if let error = error {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
    func getColorForMeal(for category: String) -> Color {
        if category == "Beef" {
            return .brown
        } else if category == "Breakfast" {
            return .white
        } else if category == "Chicken" {
            return .yellow
        } else if category == "Dessert" {
            return Color(red: 247, green: 220, blue: 199)
        } else if category == "Goat" {
            return Color(red: 211, green: 211, blue: 211)
        } else if category == "Lamb" {
            return .brown
        } else if category == "Miscellaneous" {
            return .red
        } else if category == "Pasta" {
            return .yellow
        } else if category == "Pork" {
            return .pink
        } else if category == "Seafood" {
            return .green
        } else if category == "Side" {
            return .brown
        } else if category == "Starter" {
            return .blue
        } else if category == "Vegan" {
            return .green
        } else if category == "Vegetarian" {
            return .green
        } else {
            return .gray
        }
    }
}

