//
//  ContentView.swift
//  SwiftUIAssets
//
//  Created by Macintosh on 20.02.2022.
//

import SwiftUI

extension Image{
    func ImageModifier() -> some View{
        self
            .resizable()
            .scaledToFit()
    }
    
    func IconModifier() -> some View{
        self
            .ImageModifier()
            .frame(maxWidth:128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}


struct ContentView: View {
    private let imageUrl:String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        // MARK: -1.Basic
       // AsyncImage(url: URL(string: imageUrl))
        
        //MARK: - 2. Scale
        //AsyncImage(url: URL(string: imageUrl),scale: 3.0)
        //default scale value 1.0, greater value will small the image
        
        //MARK: - 3. Placeholder
//        AsyncImage(url: URL(string: imageUrl)) {image in
//            image
//                .resizable()
//                .scaledToFit()
//        } placeholder: {
//            Image(systemName: "photo.circle.fill")
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth:128)
//                .foregroundColor(.purple)
//                .opacity(0.5)
//        }.padding(40)
        
    //MARK:- 4. Using extension
//        AsyncImage(url: URL(string: imageUrl)) {image in
//            image.ImageModifier()
//        } placeholder: {
//            Image(systemName: "photo.circle.fill")
//                .IconModifier()
//        }.padding(40)
        
        //MARK:- 4. Phase
            AsyncImage(url: URL(string: imageUrl)) {phase in
                //SUCCESS: The image succesfully loaded.
                //FAILURE: The image failed to load with an error
                //EMPTY: No images loaded
                if let image = phase.image {
                    image.ImageModifier()
                }
                else if phase.error != nil{
                    Image(systemName: "ant.circle.fill").IconModifier()
                }
                else {
                    Image(systemName: "photo.circle.fill").IconModifier()
                }
            }.padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
