//
//  MovieDetailViewModel.swift
//  MovieSearcher
//
//  Created by Esma on 3/3/19.
//  Copyright © 2019 Esma. All rights reserved.
//

import Foundation

final class MovieDetailViewModel: MovieDetailViewModelProtocol {

    weak var delegate: MovieDetailViewModelDelegate?
    private let service: ImdbServiceProtocol
    private let imdbId:String
    
    
    init(service:ImdbServiceProtocol, imdbId: String) {
        self.service = service
        self.imdbId = imdbId
        loadDetails()
    }
    
    func loadDetails() {
        notify(.setLoading(true))
        service.getMovieDetail(with: imdbId) { (response) in
            switch response {
            case .success(let result):
                let details = result.movieDetail
                let presentation = MovieDetailPresentation(title: details.title, year: details.year, genre: details.genre, runTime: details.runTime, rated: details.rated, director: details.director, plot: details.plot, posterUrl: details.posterUrl)
                self.notify(.showDetail(presentation))
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func loadPoster(url: String) {
        //Use Alamofire Image. 
    }
    
    private func notify(_ output: MovieDetailViewModelOutput) {
        delegate?.handleViewModel(output: output)
    }
}
