//
//  FrameworkGridViewModel.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Олег Еременко on 11.03.2021.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    @Published var isShowingDetailView = false

    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
