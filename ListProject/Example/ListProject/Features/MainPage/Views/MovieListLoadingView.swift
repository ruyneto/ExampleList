//
//  MovieListLoadingImage.swift
//  ListProject_Example
//
//  Created by Ruy de Ascenção Neto on 06/09/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class MovieListLoadingView:UIView{

    let imageSpinner:UIActivityIndicatorView = {
        let view = UIActivityIndicatorView()
        if #available(iOS 13.0, *) {
            view.activityIndicatorViewStyle = .large
        } else {
            // Fallback on earlier versions
        }
        view.color = .black
        view.startAnimating()
        return view
    }()
    let labelLoading:UILabel = {
        let view = UILabel(frame: .zero)
        view.textColor = .black
        view.text = "Aguarde, carregando filmes"
        view.textAlignment = .center
        return view
    }()
    
    init(){
        super.init(frame: .zero)
        setupSetps()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MovieListLoadingView:BaseView{
    func setupSetps() {
        initSubviews()
        initLayout()
        initStyle()
    }
    
    func initSubviews() {
        self.addSubview(imageSpinner)
        self.addSubview(labelLoading)
    }
    
    func initLayout() {
        labelLoading.snp.makeConstraints{
            cm in
            cm.left.equalToSuperview().offset(50)
            cm.right.equalToSuperview().offset(-50)
            cm.center.centerY.equalTo(self)
        }
        imageSpinner.snp.makeConstraints {
            cm in
            cm.centerX.equalToSuperview()
            cm.centerY.equalToSuperview().offset(-50)
        }
    }
    
    func initStyle() {
        self.backgroundColor = .white
    }
    
}
