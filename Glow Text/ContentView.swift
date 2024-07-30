//
//  ContentView.swift
//  Glow Text
//
//  Created by Md Alif Hossain on 30/7/24.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    let color: [Color] = [.green,.pink,.blue, .orange]
    let name: [String] = ["STAND","WITH","BANGLADESHI", "STUDENTS","STUDENT", "RIGHTS","JUSTICE"]
    var body: some View {
        VStack {
            Text(name[index % name.count])
                .font(.system(size: 70, weight: .thin))
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .contentTransition(.numericText())
                .frame(width: 250)
                .shadow(color: color[index % color.count], radius: 5)
                .shadow(color: color[index % color.count], radius: 5)
                .shadow(color: color[index % color.count], radius: 50)
                .shadow(color: color[index % color.count], radius: 120)
                .shadow(color: color[index % color.count], radius: 120)
                .shadow(color: color[index % color.count], radius: 200)
            
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                        DispatchQueue.main.async {
                            withAnimation {
                                index = (index + 1) % max(name.count,color.count)
                            }
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
