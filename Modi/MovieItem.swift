//
//  MovieItem.swift
//  Modi
//
//  Created by ktds 19 on 2017. 8. 18..
//  Copyright © 2017년 cjon. All rights reserved.
//

import Foundation
import UIKit

class MovieItem {
    
    var title:String
    var poster:UIImage
    var ageLimit:Int
    var duration:Int
    
    init(title:String, poster:UIImage, ageLimit:Int, duration:Int) {
        self.title = title
        self.poster = poster
        self.ageLimit = ageLimit
        self.duration = duration
    }
    
}

class MovieDiaryItem: MovieItem {
    
    var starRank : Int
    var comment : String?
    var date : Date
    
    init(title:String, poster:UIImage, ageLimit:Int, duration:Int, starRank : Int, comment : String?, date : Date) {
    
        self.starRank = starRank
        self.comment = comment
        self.date = date
        
        super.init(title: title, poster: poster, ageLimit: ageLimit, duration: duration)
        
    }
}

class MovieInfo: MovieItem {
    
    var rank : Int
    var attendance : Double

    init(title:String, poster:UIImage, ageLimit:Int, duration:Int, rank : Int, attendance : Double) {
        
        self.rank = rank
        self.attendance = attendance
        
        super.init(title: title, poster: poster, ageLimit: ageLimit, duration: duration)
        
    }
}
