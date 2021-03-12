//
//  DetailsView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Олег Еременко on 11.03.2021.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    var framework: Framework

    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
                .padding()
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                FrameworksButton(title: "Learn more")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            if let url = URL(string: framework.urlString) {
                SafariView(url: url)
            }
        })
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(isShowingDetailView: .constant(false),
                            framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
