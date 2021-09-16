//
//  HashtagLikeCollectionViewFlowLayout.swift
//  Birzoom
//
//  Created by Administrator on 16/09/21.
//

import UIKit

class HashtagLikeCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let attributes = super.layoutAttributesForElements(in: rect)

        var leftMargin = sectionInset.left
        var maxY: CGFloat = -1.0
        attributes?.forEach { layoutAttribute in
            if layoutAttribute.frame.origin.y >= maxY {
                leftMargin = sectionInset.left
            }
            layoutAttribute.frame.origin.x = leftMargin
            leftMargin += layoutAttribute.frame.width + 25
            maxY = max(layoutAttribute.frame.maxY , maxY)
        }

        return attributes
    }
    
}

