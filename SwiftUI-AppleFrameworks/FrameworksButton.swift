//
//  FrameworksButton.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Олег Еременко on 11.03.2021.
//

import SwiftUI

struct FrameworksButton: View {
    var title: String

    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct FrameworksButton_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksButton(title: "Learn more")
            .preferredColorScheme(.dark)
    }
}
