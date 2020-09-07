//
//  MovieListViewController.swift
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

protocol MovieListDisplayLogic: class{
    func displayLoading()
    func displayList(movieList:MovieList.ShowList.ViewModel)
}

class MovieListViewController: UIViewController, MovieListDisplayLogic{
    
    func displayLoading(){
        self.view = MovieListLoadingView()
    }
    
    func displayList(movieList:MovieList.ShowList.ViewModel){
        self.view = self.movieListView
        dataSourceDelegate.data =  movieList.movieList
        self.movieListView.listView.reloadData()
    }
    
    var interactor: MovieListBusinessLogic?
    var router: (NSObjectProtocol & MovieListRoutingLogic & MovieListDataPassing)?

    var movieListView: MovieListUIView = {
        let view = MovieListUIView()
        return view
    }()
    
    var dataSourceDelegate:MovieListDSDelegate = {
        let ds = MovieListDSDelegate()
        return ds
    }()
  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup()
  {
    let viewController = self
    let interactor = MovieListInteractor()
    let presenter = MovieListPresenter()
    let router = MovieListRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
    displayLoading()
    interactor.requestMovies()
    movieListView.listView.delegate   = self.dataSourceDelegate
    movieListView.listView.dataSource = self.dataSourceDelegate
  }
  
  // MARK: Routing
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
  {
    if let scene = segue.identifier {
      let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
      if let router = router, router.responds(to: selector) {
        router.perform(selector, with: segue)
      }
    }
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
  }
  
}
