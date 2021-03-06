//
//  Constants.swift
//  MovieSearcher
//
//  Created by Esma on 3/3/19.
//  Copyright © 2019 Esma. All rights reserved.
//

import UIKit

///Contains app constants.
enum Constants {
    
    ///Alert error title.
    static var ErrorTitle:String {
        return "Ops!"
    }
    ///Alert actions
    enum Actions {
        static var Ok:String {
            return "OK"
        }
    }
    
    ///Keys for MovieList scene.
    enum MovieList {
        static var NoMovies:String {
            return "No items to show."
        }
        
        ///Bar button titles
        enum BarButton {
            static var Search:String {
                return "Search"
            }
        }
        
        ///Error messages.
        enum Errors {
            static var NeedToEnterTitle:String {
                return "You must enter a title."
            }
            static var ValidYear:String {
                return "Please enter a valid year."
            }
            static var NoCellFound:String {
                return "Cell cannot be found!"
            }
        }
    }
    
    enum MovieDetail {
        enum Errors{
            static var NoDetails:String {
                return "Can't retrive the details."
            }
        }
    }
    
}


enum Storyboard {
    static var Main:UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    enum Name {
        static var Main:String {
            return "Main"
        }
    }
}

enum Cell {
    enum NibName {
        static var Movie:String{
            return "MovieTableViewCell"
        }
    }
    enum Identifier {
        static var Movie:String {
            return "MovieTableViewCell"
        }
    }
}

enum ViewController {
    enum Identifier {
        static var MovieList:String {
            return "MovieListViewController"
        }
        static var MovieDetail:String {
            return "MovieDetailViewController"
        }
    }
}


