//
//  ScrumProgressViewStyle.swift
//  Scrumdinger
//
//  Created by Jean Paul on 16/05/23.
//

import SwiftUI

struct AppProgressViewStyle: ProgressViewStyle {
    var theme: Theme
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(theme.accentColor)
                .frame(height: 20.0)
            ProgressView(configuration)
                .tint(theme.mainColor)
                .frame(height: 12.0)
                .padding(.horizontal)
        }
    }

}

struct AppProgressViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(value: 0.4)
            .progressViewStyle(AppProgressViewStyle(theme: .buttercup))
            .previewLayout(.sizeThatFits)
    }
}
