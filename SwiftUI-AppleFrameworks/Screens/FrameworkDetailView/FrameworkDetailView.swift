//
//  DetailsView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Олег Еременко on 11.03.2021.
//

import SwiftUI

struct FrameworkDetailView: View {

    @ObservedObject var viewModel: FrameworkDetailModel

    var body: some View {
        VStack {
            FrameworkDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            Spacer()
            FrameworkTitleView(framework: viewModel.framework)
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            Spacer()

            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "https://www.apple.com")!) {
                FrameworksButton(title: "Learn more")
            }

            // SafariView for opening links
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                FrameworksButton(title: "Learn more")
//            }
        }
            // SafariView for opening links
//        .sheet(isPresented: $viewModel.isShowingSafariView) {
//            SafariView(url: URL(string: viewModel.framework.urlString)
//                         ?? URL(string: "https://www.apple.com")!)
//        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailModel(framework: MockData.sampleFramework,
                                                            isShowingDetailView: .constant(false)))
            .preferredColorScheme(.dark)
    }
}
