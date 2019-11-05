//
//  PhotoCollectionViewCell.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var title: UILabel!

    var photo: Photo? {
        didSet {
            updateViews()
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupSubViews()
    }
    
    
    
    func setupSubViews() {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        addSubview(imageView)
        
        
        let imageViewTopConstraint = NSLayoutConstraint(item: imageView,
                                                        attribute: .top,
                                                        relatedBy: .equal,
                                                        toItem: self,
                                                        attribute: .top,
                                                        multiplier: 1,
                                                        constant: 20)
        
        let imageViewLeadingConstraint = NSLayoutConstraint(item: imageView,
                                                        attribute: .leading,
                                                        relatedBy: .equal,
                                                        toItem: self,
                                                        attribute: .leading,
                                                        multiplier: 1,
                                                        constant: 20)
        
        let imageViewTrailingConstraint = NSLayoutConstraint(item: imageView,
                                                        attribute: .trailing,
                                                        relatedBy: .equal,
                                                        toItem: self,
                                                        attribute: .trailing,
                                                        multiplier: 1,
                                                        constant: 20)
        
        let imageViewHeightConstraint = NSLayoutConstraint(item: imageView,
                                                                  attribute: .height,
                                                                  relatedBy: .equal,
                                                                  toItem: imageView,
                                                                  attribute: .width,
                                                                  multiplier: 1,
                                                                  constant: 0)
        
        NSLayoutConstraint.activate([imageViewTopConstraint, imageViewLeadingConstraint, imageViewTrailingConstraint, imageViewHeightConstraint])
        
        self.imageView = imageView
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        addSubview(label)
        
        let labelTopConstraint = NSLayoutConstraint(item: label, attribute: .top, relatedBy: .equal, toItem: imageView, attribute: .bottom, multiplier: 1, constant: 8)
        let labelLeadingConstraint = NSLayoutConstraint(item: label, attribute: .leading, relatedBy: .equal, toItem: imageView, attribute: .leading, multiplier: 1, constant: 0)
        let labelTrailingConstraint = NSLayoutConstraint(item: label, attribute: .trailing, relatedBy: .equal, toItem: imageView, attribute: .trailing, multiplier: 1, constant: 0)

        
        NSLayoutConstraint.activate([labelTopConstraint, labelLeadingConstraint, labelTrailingConstraint])
        
        self.title = label
    }
    
    private func updateViews() {
        guard let photo = photo else { return }
        title.text = photo.title
        imageView.image = UIImage(data: photo.imageData)
         
    }
    
    
}
