//
//  ContentView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Олег Еременко on 11.03.2021.
//

import SwiftUI

struct FrameworkGridView: View {

    // StateObject for new, ObservedObject for injected
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(
                        destination: FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView,
                                                         framework: framework)) {
                            FrameworkTitleView(framework: framework)
                        }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .padding(.top, 20)
        }
        .accentColor(Color(.label)) // Setup color for back-button title
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
