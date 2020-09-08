//
//  MovieListInteractor.swift
//  ListProject
//
//  Created by Ruy de Ascenção Neto on 31/08/20.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import RxSwift
protocol MovieListBusinessLogic
{
  func requestMovies()
}

protocol MovieListDataStore
{
  //var name: String { get set }
}

class MovieListInteractor: MovieListDataStore{

  var presenter                   :MovieListPresentationLogic?
  private var movieListService    :MovieListService?
  private var disposeBag          :DisposeBag?
  private var movieListDisposable :Disposable?
  //var name: String = ""
  
  // MARK: Do something
  
    init(
        movieListWorker:MovieListService? = MovieListWorker(),
        disposeBag:DisposeBag? = DisposeBag()
        ){
        self.movieListService = movieListWorker
        self.disposeBag       = disposeBag
    }
    
    deinit{
        self.disposeObservables()
    }
}

extension MovieListInteractor:MovieListBusinessLogic{
    func requestMovies() {
        guard let service = self.movieListService else { return }
        guard let mvLisSubscribe = service.getMovieList() else { return }
        self.movieListDisposable = mvLisSubscribe.subscribe(
            onSuccess: {
                success in
                DispatchQueue.main.async {
                    self.presenter?.presentMoviesList(movieList:MovieList.ShowList.Response(movieList: success.results!))
                }
            }
            ,onError: {
                _ in
                DispatchQueue.main.async {
                    self.presenter?.presentError()
                }
            })
    }
    
    func disposeObservables(){
        guard let movieListDisposable = self.movieListDisposable,let dpbag = self.disposeBag else {return}
        movieListDisposable.disposed(by: dpbag)
    }
}