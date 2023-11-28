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
    }

}
