//
//  FrameworkDetailModel.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Олег Еременко on 28.03.2021.
//

import SwiftUI

final class FrameworkDetailModel: ObservableObject {

    let framework: Framework
    var isShowingDetailView: Binding<Bool>
    @Published var isShowingSafariView = false

    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }

}
