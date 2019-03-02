//
//  MovieListViewModel.swift
//  MovieSearcher
//
//  Created by Esma on 3/2/19.
//  Copyright © 2019 Esma. All rights reserved.
//

import Foundation

final class MovieListViewModel: MovieListViewModelProtocol {
    
    weak var delegate: MovieListViewModelDelegate?
    private let service: ImdbServiceProtocol
    
    init(service: ImdbServiceProtocol) {
        self.service = service
    }
    
    func loadMovies() {
        notify(.setLoading(true))
        service.fetchMovies(title: "", year: "", type: "") { [weak self] (response) in
            guard let `self` = self else { return }
            self.notify(.setLoading(false))
            
            switch response {
            case .success(let result):
                let movies = result.movies
                let presentations = movies.map({ MoviePresentation(title: $0.title, year: $0.year, type: $0.type) })
                self.notify(.showMovieList(presentations))
            case .failure(let error):
                print(error)
            }
        }
    }
    
    private func notify(_ output: MovieListViewModelOutput) {
        delegate?.handleViewModel(output: output)
    }
    
}

