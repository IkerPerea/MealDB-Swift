//
//  MealPreviewModule.swift
//  MealDB
//
//  Created by Iker Perea Trejo on 23/8/24.
//

import SwiftUI
import SDWebImageSwiftUI
struct MealPreviewModule: View {
    @State var meal: Meal
    @ObservedObject var viewModel: MealViewModel
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20.0)
                .frame(minWidth: 330, maxWidth: 330, minHeight: 100, idealHeight: 100, maxHeight: 300)
                .foregroundStyle(viewModel.getColorForMeal(for: meal.strCategory))
                .overlay {
                    HStack {
                        VStack {
                            HStack {
                                Text(meal.strMeal)
                                    .font(.headline)
                                    .bold()
                                    .lineLimit(1)
                                    .foregroundStyle(.primary)
                                    .padding(.leading)
                                    .padding(.top)
                                Spacer()
                            }
                            HStack {
                                Text(meal.strCategory)
                                    .font(.subheadline)
                                    .padding(.leading)
                                Spacer()
                            }
                            Spacer()
                        }
                        WebImage(url: URL(string: meal.strMealThumb))
                            .resizable()
                            .frame(width: 75, height: 75)
                            .padding(.all)
                    }
                }
        }
    }
}

#Preview {
    MealPreviewModule(meal: Meal(idMeal: "", strMeal: "", strDrinkAlternate: "", strCategory: "", strArea: "", strInstructions: "", strMealThumb: "", strTags: "", strYoutube: "", strIngredient1: "", strIngredient2: "", strIngredient3: "", strIngredient4: "", strIngredient5: "", strIngredient6: "", strIngredient7: "", strIngredient8: "", strIngredient9: "", strIngredient10: "", strIngredient11: "", strIngredient12: "", strIngredient13: "", strIngredient14: "", strIngredient15: "", strIngredient16: "", strIngredient17: "", strIngredient18: "", strIngredient19: "", strIngredient20: "", strMeasure1: "", strMeasure2: "", strMeasure3: "", strMeasure4: "", strMeasure5: "", strMeasure6: "", strMeasure7: "", strMeasure8: "", strMeasure9: "", strMeasure10: "", strMeasure11: "", strMeasure12: "", strMeasure13: "", strMeasure14: "", strMeasure15: "", strMeasure16: "", strMeasure17: "", strMeasure18: "", strMeasure19: "", strMeasure20: "", strSource: "", strImageSource: "", strCreativeCommonsConfirmed: "", dateModified: ""), viewModel: MealViewModel())
}
