//
//  FrameworkDismissButton.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Олег Еременко on 11.03.2021.
//

import SwiftUI

struct FrameworkDismissButton: View {
    @Binding var isShowingDetailView: Bool

    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct FrameworkDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDismissButton(isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
