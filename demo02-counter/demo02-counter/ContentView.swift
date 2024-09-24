//
//  ContentView.swift
//  demo02-counter
//
//  Created by Tri Nguyen on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var people: Int = 0
    @State private var maxCount: Int = 0
    
    var percentFull: Double {
            Double(people) / Double(maxCount)
        }
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Color.red
                    .opacity(percentFull)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Text("\(people) People")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        NavigationLink {
                            SettingsView(maxCount: $maxCount)
                        } label: {
                            Image(systemName: "gear")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.bold)
                        }
                    }
                    .padding()
                    Spacer()
                    HStack {
                        Button {
                            if people > 0 {
                                people -= 1
                            }
                        } label: {
                            Image(systemName: "minus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(.white)
                        }
                        Spacer()
                        Button {
                            if people < maxCount {
                                people += 1
                            }
                        } label: {
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(.white)
                        }
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 20)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
