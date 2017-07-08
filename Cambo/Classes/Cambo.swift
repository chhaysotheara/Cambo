//
//  Cambo.swift
//  Pods
//
//  Created by chhay sotheara on 7/8/17.
//
//

import UIKit

public protocol Cambo {}

extension Cambo where Self: AnyObject {
    public func cambo(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
    
    public func combo<Type>(_ object: Type, block: (_ item :Type) -> Void) -> Type {
        block(object)
        return object
    }
}

extension NSObject: Cambo {}
