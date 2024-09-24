//
//  SettingsView.swift
//  demo02-counter
//
//  Created by Tri Nguyen on 9/24/24.
//

import SwiftUI

struct SettingsView: View {
    @Binding var maxCount: Int
    var body: some View {
        Stepper("Max Count: \(maxCount)", value: $maxCount)
            .padding()
            .background(Color.white, in: .rect(cornerRadius: 10))
    }
}

#Preview {
    SettingsView(maxCount: .constant(5))
}
