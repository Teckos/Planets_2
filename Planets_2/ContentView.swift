//
//  ContentView.swift
//  Planets_2
//
//  Created by Teck Hao Tea on 04/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { proxy in
                    Image("voieLactée")
                        .resizable()
                        .frame(width: proxy.size.width, height: proxy.size.height)
                        .scaledToFit()
                        .clipShape(Rectangle())
                        .modifier(ImageModifier(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
