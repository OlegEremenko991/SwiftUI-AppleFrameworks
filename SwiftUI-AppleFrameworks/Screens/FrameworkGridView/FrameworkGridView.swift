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
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView,
                                    framework: viewModel.selectedFramework ?? MockData.sampleFramework)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
