//
//  MovieListUIView.swift
//  ListProject_Example
//
//  Created by Ruy de Ascenção Neto on 31/08/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

protocol BaseView{
    func setupSetps()
    func initSubviews()
    func initLayout()
    func initStyle()
}

class MovieListUIView:UIView{
    
    let listView:UITableView = {
        return UITableView(frame: .zero)
    }()
    
    let loadingView:UITableView = {
        return UITableView(frame: .zero)
    }()
    
    init(){
        super.init(frame: .zero)
        setupSetps()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension MovieListUIView:BaseView{
    func setupSetps() {
          initSubviews()
          initLayout()
          initStyle()
    }
    
    func initSubviews() {
        self.addSubview(self.listView)
    }
    
    func initLayout() {
        listView.snp.makeConstraints({
            c in
//            c.size.equalToSuperview()
            c.bottom.equalToSuperview()
            c.left.equalToSuperview()
            c.right.equalToSuperview()
            c.top.equalToSuperview()
        })
    }
    
    func initStyle() {
        self.backgroundColor = .blue
    }
}
