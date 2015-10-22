//
//  BMCustomTableView.swift
//  Pods
//
//  Created by Barbara Brina on 10/22/15.
//
//

import QuartzCore

public class BMCustomTableView : UITableView {
    
    public func customizeCell(cell: UITableViewCell) {
        
        var rotate: CATransform3D
        
        let value = CGFloat((90.0 * M_PI) / 180.0)
        
        rotate = CATransform3DMakeRotation(value, 0.0, 0.7, 0.4)
        
        rotate.m34 = 1.0 / -600
        
        cell.layer.shadowColor = UIColor.blackColor().CGColor
        cell.layer.shadowOffset = CGSizeMake(10, 10)
        cell.alpha = 0
        
        cell.layer.transform = rotate
        cell.layer.anchorPoint = CGPointMake(0, 0.5)
        
        if(cell.layer.position.x != 0){
            cell.layer.position = CGPointMake(0, cell.layer.position.y);
        }
        
        UIView.beginAnimations("rotate", context: nil)
        UIView.setAnimationDuration(0.8)
        cell.layer.transform = CATransform3DIdentity
        cell.alpha = 1
        cell.layer.shadowOffset = CGSizeMake(0, 0)
        UIView.commitAnimations()
        
    }
}
