//
//  ViewController.swift
//  swiftMapAnnotation
//
//  Created by Maria Levitin on 10/27/14.
//  Copyright (c) 2014 Maria. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var latDelta : CLLocationDegrees
        var longDelta : CLLocationDegrees
        
        longDelta = 0.01
        latDelta = 0.01
        
        var span : MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        var point1: AnnotationPoint = AnnotationPoint(lat: 32.357868, long: 34.934164, titleAnn: "guy's house")
       
        var point2: AnnotationPoint = AnnotationPoint(lat: 32.361233, long: 34.867452, titleAnn: "coffee neto bita naharon")
        var point3: AnnotationPoint = AnnotationPoint(lat: 32.381214, long: 34.882611, titleAnn: "shabtai pizza")
         point1.setLocation()
         point2.setLocation()
         point3.setLocation()
         point1.setAnnotations("coffee neto bita naharon")
         point2.setAnnotations("guy's house")
         point3.setAnnotations("shabtai pizza")
        var points = [point1, point2, point3]
       

        for point in points {
           
            
        var theRegion : MKCoordinateRegion = MKCoordinateRegionMake(point.location!, span)
        
        self.mapView.setRegion(theRegion, animated: true)
        self.mapView.addAnnotation(point.annotation)
        // Do any additional setup after loading the view, typically from a nib.
        }
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

