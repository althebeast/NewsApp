//
//  NewsView.swift
//  NewsApp
//
//  Created by Alperen Sarışan on 11.12.2023.
//

import SwiftUI

struct NewsView: View {
    
    @State var news = [News]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack{
            ScrollView(showsIndicators: false){
                VStack{
                    ForEach(news) { new in
                        NavigationLink {
                            NewsDetailsView(news: new)
                        }
                    label: {
                            NewsBlocks(news: new)
                        }
                    .navigationTitle("Oyun Haberleri")
                    }
                }
                .ignoresSafeArea()
                .padding(.horizontal)
                .onAppear{
                    news = dataService.getData()
                }
            }
        }
        .accentColor(.white)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
