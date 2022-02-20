//
//  ContentView.swift
//  SwiftUIAssets
//
//  Created by Macintosh on 20.02.2022.
//

import SwiftUI

struct ContentView: View {
    private let imageUrl:String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        // MARK: -1.Basic
       // AsyncImage(url: URL(string: imageUrl))
        
        //MARK: - 2. Scale
        AsyncImage(url: URL(string: imageUrl),scale: 3.0)
        //default scale value 1.0, greater value will small the image
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
