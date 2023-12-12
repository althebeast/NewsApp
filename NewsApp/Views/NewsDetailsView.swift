//
//  NewsDetailsView.swift
//  NewsApp
//
//  Created by Alperen Sarışan on 11.12.2023.
//

import SwiftUI

struct NewsDetailsView: View {
    
    var news: News
    @State var selectedPhoto = ""
    @State var sheetVisible = false
    
    var body: some View {
        VStack(spacing: 20){
            Image(news.newsImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 400)
                .onTapGesture {
                    sheetVisible = true
                    selectedPhoto = news.newsImage
                }
            
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading ,spacing: 20){
                    Text(news.newsName)
                        .font(.title2)
                        .bold()
                    
                    Text(news.newsLong)
                        .multilineTextAlignment(.leading)
                }
                .padding(.bottom, 20)
            }
            .padding()
            .sheet(isPresented: $sheetVisible) {
                ImageSheetView(selectedImage: $selectedPhoto, sheetVisible: $sheetVisible)
            }
        }
        .ignoresSafeArea()
    }
}

struct NewsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailsView(news: News(newsName: "It's gone", newsImage: "tdb", newsLong: """
    Mere days after the messy early access release of The Days Before, the studio behind the project, Fntastic, has announced it's closing down.
    Fntastic announced the news via a post on X (formerly Twitter), stating The Day Before, previously one of Steam's most-wishlisted games, "has failed financially, and we lack the funds to continue." The Day Before did briefly rise to the top of Steam's best-sellers and most-played games list, before dropping off dramatically as negative user reviews for the game poured in..
    """))
    }
}
