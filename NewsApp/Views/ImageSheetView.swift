//
//  ImageSheetView.swift
//  NewsApp
//
//  Created by Alperen Sarışan on 12.12.2023.
//

import SwiftUI

struct ImageSheetView: View {
    
    @Binding var selectedImage: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        ZStack {
            Color(.black)
            VStack(alignment: .trailing){
                Image(systemName: "x.circle")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
                    .onTapGesture {
                        sheetVisible = false
                    }
                
                Image(selectedImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .ignoresSafeArea()
            }
        }
        .ignoresSafeArea()
    }
}

struct ImageSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSheetView(selectedImage: .constant("tdb"), sheetVisible: .constant(false))
    }
}
