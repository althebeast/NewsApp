//
//  NewsBlocks.swift
//  NewsApp
//
//  Created by Alperen Sarışan on 11.12.2023.
//

import SwiftUI

struct NewsBlocks: View {
    
    var news: News
    
    var body: some View {
        
        VStack{
            HStack{
                Text(news.newsName)
                    .font(.title3)
                    .bold()
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                Image(news.newsImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .cornerRadius(10)
            }
            Divider()
                .overlay(Color.black)
        }
        
    }
}

struct NewsBlocks_Previews: PreviewProvider {
    static var previews: some View {
        NewsBlocks(news: News(newsName: "The Day Before Studio Shuts Down Days After Disastrous Launch",
                              newsImage: "tdb",
                              newsLong: """
    Mere days after the messy early access release of The Days Before, the studio behind the project, Fntastic, has announced it's closing down.
    Fntastic announced the news via a post on X (formerly Twitter), stating The Day Before, previously one of Steam's most-wishlisted games, "has failed financially, and we lack the funds to continue." The Day Before did briefly rise to the top of Steam's best-sellers and most-played games list, before dropping off dramatically as negative user reviews for the game poured in..
    """
                                 ))
    }
}
