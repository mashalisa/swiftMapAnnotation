//
//  AnnotationPoint.swift
//  swiftMapAnnotation
//
//  Created by Maria Levitin on 10/27/14.
//  Copyright (c) 2014 Maria. All rights reserved.
//

import UIKit
import MapKit

class AnnotationPoint: NSObject {
    
    var latitute : CLLocationDegrees
    var longtitut : CLLocationDegrees
    var location : CLLocationCoordinate2D?
    var annotation : MKPointAnnotation?
    
    init (lat : CLLocationDegrees,
        long :CLLocationDegrees,
        titleAnn : String)
    {
            self.latitute = lat
            self.longtitut = long
//            setLocation()
//            setAnnotations(titleAnn)
        
        
    }
    
    
    func setLocation ( ) {
        
        location = CLLocationCoordinate2DMake(self.latitute, self.longtitut)
    }
    
    func  setAnnotations (titleAnn:String) {
        
        annotation = MKPointAnnotation()
        annotation?.coordinate = location!
        annotation?.title = titleAnn
        
        
        
    }
}
   

