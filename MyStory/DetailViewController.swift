//
//  DetailViewController.swift
//  MyStory
//
//  Created by Barsha Chaudhary on 1/22/24.
//

import UIKit

class DetailViewController: UIViewController {

    var contextItem: ContextItem?
    
    @IBOutlet weak var subImage: UIImageView!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subImage.image = contextItem?.subImage
        descriptionLabel.text = contextItem?.description
    }
    


}
