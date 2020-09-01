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

class MovieListUIView:UIView,BaseView{
    func setupSetps() {
          initSubviews()
          initLayout()
          initStyle()
    }
    
    func initSubviews() {
        
    }
    
    func initLayout() {
        <#code#>
    }
    
    func initStyle() {
        <#code#>
    }
    
    init(){
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


