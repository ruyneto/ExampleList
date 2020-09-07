//
//  MovieListDataSource+Delegate.swift
//  ListProject_Example
//
//  Created by Ruy de Ascenção Neto on 01/09/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
class MovieListDSDelegate:NSObject,UITableViewDataSource,UITableViewDelegate{
    
    var data: [MovieList.ShowList.ViewModel.MovieVM] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = data[indexPath.row].name
        return cell
    }
    
    
}

