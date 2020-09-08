//
//  MovieListErrorView.swift
//  ListProject_Example
//
//  Created by Ruy de Ascenção Neto on 07/09/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
class MovieListErrorView:UIView{
    
    var imageErrorView:UIImageView = {
        let image     = UIImage(named: "error")
        let imageView = UIImageView(image: image)
        return imageView
    }()

    
    var labelAviso:UILabel = {
        let labelAviso = UILabel(frame: .zero)
        labelAviso.textColor = .black
        labelAviso.text = "Opa, houve um erro, tente novamente."
        labelAviso.textAlignment = .center
        return labelAviso
    }()
    
    var buttonRestart:UIButton = {
        let botao = UIButton()
        botao.backgroundColor = .blue
        botao.setTitle( "Tentar Novamente", for: .normal )
        botao.titleLabel!.textColor = .black
        return botao
    }()
    
    
    init(){
        super.init(frame: .zero)
        setupSetps()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MovieListErrorView:BaseView{
    func setupSetps() {
        initSubviews()
        initLayout()
        initStyle()
    }
    
    func initSubviews() {
        self.addSubview(self.imageErrorView)
        self.addSubview(self.labelAviso)
        self.addSubview(self.buttonRestart)
    }
    
    func initLayout() {
        self.labelAviso.snp.makeConstraints{
            mc in
            mc.centerX.equalToSuperview()
            mc.centerY.equalToSuperview().offset(50)
            mc.left.equalTo(self).offset(20)
            mc.right.equalTo(self).offset(-20)
        }
        
        self.imageErrorView.snp.makeConstraints{
            mc in
            mc.centerY.equalToSuperview().offset(-50)
            mc.centerX.equalToSuperview()
        }
        self.buttonRestart.snp.makeConstraints{
            mc in
            mc.centerX.equalToSuperview()
            mc.centerY.equalToSuperview().offset(100)
            mc.left.equalToSuperview().offset(100)
            mc.right.equalToSuperview().offset(-100)
            mc.height.equalTo(50)
        }
    }
    
    func initStyle() {
        self.backgroundColor = .white
    }
    
}
