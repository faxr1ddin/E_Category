//
//  MainCollectionViewCell.swift
//  E_Category
//
//  Created by Faxriddin Mo'ydinxonov on 25/12/23.
//

import UIKit
import SnapKit

class MainCollectionViewCell: UICollectionViewCell {
    
    //MARK: - ProPorties -
    
    static let identifier: String = "MainCollectionViewCell"
    
    let eNumLabel: UILabel = {
        let label = UILabel()
        label.text = "E102"
        label.font = .systemFont(ofSize: 22)
        return label
    }()
    
    let eNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Tartrazina"
        label.textColor = #colorLiteral(red: 0.7456118464, green: 0.7456118464, blue: 0.7456118464, alpha: 1)
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.text = "HALAL"
        label.backgroundColor = .green
        label.textAlignment = .center
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpItems()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //func setUpItems
    
    func setUpItems() {
        
        //eNumLabel
        
        self.addSubview(eNumLabel)
        eNumLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(self.snp.left).offset(20)
        }
        
        //eNameLabel
        
        self.addSubview(eNameLabel)
        eNameLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(eNumLabel.snp.right).offset(40)
        }
        
        //resultLabel
        
        self.addSubview(resultLabel)
        resultLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(eNameLabel.snp.right).offset(40)
            make.width.equalTo(self.snp.width).multipliedBy(0.32)
            make.height.equalTo(self.snp.height).multipliedBy(0.4)
        }
    }
}
