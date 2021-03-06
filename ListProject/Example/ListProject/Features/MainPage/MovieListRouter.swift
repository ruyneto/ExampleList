//
//  MovieListRouter.swift
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

@objc protocol MovieListRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol MovieListDataPassing
{
  var dataStore: MovieListDataStore? { get }
}

class MovieListRouter: NSObject, MovieListRoutingLogic, MovieListDataPassing
{
  weak var viewController: MovieListViewController?
  var dataStore: MovieListDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: MovieListViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: MovieListDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
