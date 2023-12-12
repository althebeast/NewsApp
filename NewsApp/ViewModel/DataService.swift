//
//  DataService.swift
//  NewsApp
//
//  Created by Alperen Sarışan on 11.12.2023.
//

import Foundation

struct DataService{
    
    func getData() -> [News]{
        
        return [News(newsName: "The Day Before Studio Shuts Down Days After Disastrous Launch",
                    newsImage: "tdb",
                    newsLong: """
    Mere days after the messy early access release of The Days Before, the studio behind the project, Fntastic, has announced it's closing down.
    Fntastic announced the news via a post on X (formerly Twitter), stating The Day Before, previously one of Steam's most-wishlisted games, "has failed financially, and we lack the funds to continue." The Day Before did briefly rise to the top of Steam's best-sellers and most-played games list, before dropping off dramatically as negative user reviews for the game poured in..
    """),
        
                News(newsName: "Baldur's Gate 3 Xbox Update Fixes Bugged Saves",
                                             newsImage: "bg3",
                                             newsLong: """
    Mere days after the messy early access release of The Days Before, the studio behind the project, Fntastic, has announced it's closing down.
    Fntastic announced the news via a post on X (formerly Twitter), stating The Day Before, previously one of Steam's most-wishlisted games, "has failed financially, and we lack the funds to continue." The Day Before did briefly rise to the top of Steam's best-sellers and most-played games list, before dropping off dramatically as negative user reviews for the game poured in..
    """)]
        
    }

    
}
