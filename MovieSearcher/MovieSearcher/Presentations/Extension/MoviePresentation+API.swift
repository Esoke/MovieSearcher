//
//  MoviePresentation+API.swift
//  MovieSearcher
//
//  Created by Esma on 3/2/19.
//  Copyright © 2019 Esma. All rights reserved.
//

import Foundation

extension MoviePresentation {
    //convenient initalizer is created to enable initializing the presentation object with a single parameter.
    convenience init(movie: Movie) {
        self.init(title: movie.title, year: movie.year, type: movie.type)
    }
}
