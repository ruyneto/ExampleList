//
//  MovieList.swift
//  ListProject_Example
//
//  Created by Ruy de Ascenção Neto on 06/09/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation


class MovieListResponse:Codable {
    var page, totalResults, totalPages: Int?
    var results: [Movie]?
    class Movie:Codable{
        var popularity : Double?
        var vote_count : Int?
        var video : Bool?
        var poster_path : String?
        var id : Int?
        var adult : Bool?
        var backdrop_path : String?
        var original_language : String?
        var original_title : String?
        var genre_ids : [Int]?
        var title : String?
        var vote_average : Double?
        var overview : String?
        var release_date : String?
    }
}



