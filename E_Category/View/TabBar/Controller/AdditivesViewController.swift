//
//  AdditivesViewController.swift
//  E_Category
//
//  Created by Faxriddin Mo'ydinxonov on 27/11/23.
//

import UIKit
import SnapKit

class AdditivesViewController: UIViewController {
    
    //MARK: - Proporties -
    
    let searchBar: UISearchBar = {
        let bar = UISearchBar()
        bar.placeholder = "Enter text"
        return bar
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view settings
        
        view.backgroundColor = .systemBackground
        initView()
    }
    
    func initView() {
        
        //searchBar
        view.addSubview(searchBar)
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(view.snp.centerY).multipliedBy(0.2)
            make.centerX.equalToSuperview()
            make.width.equalTo(view.snp.width).multipliedBy(0.96)
            make.height.equalTo(view.snp.height).multipliedBy(0.08)
        }
        
        //layout and mainCV
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .vertical
        
        let mainCV = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(mainCV)
        mainCV.delegate = self
        mainCV.dataSource = self
        mainCV.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: MainCollectionViewCell.identifier)
        mainCV.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
            make.width.height.equalToSuperview()
        }
    }
}

extension AdditivesViewController: UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    //uiCollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.identifier, for: indexPath)
        
        //cell settings
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = #colorLiteral(red: 0.7960784435, green: 0.7960784435, blue: 0.7960784435, alpha: 1)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) - 50, height: (view.frame.height) / 10)
    }
    
}
