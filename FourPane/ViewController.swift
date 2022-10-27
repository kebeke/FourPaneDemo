//
//  ViewController.swift
//  FourPane
//
//  Created by Johnny Bravo on 27/10/2022.
//

import UIKit
import MapKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    
    @IBOutlet weak var webView: WKWebView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.thronebeachresort.com/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        // Do any additional setup after loading the view.
       let initialLocation = CLLocation(latitude: 36.673653496769205, longitude: 31.639222883902683)
        mapView.centerLocation(initialLocation)
    }

    
    
}

extension MKMapView {
    func centerLocation(_ location: CLLocation, rerionRadius: CLLocationDistance = 1000) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: rerionRadius, longitudinalMeters: rerionRadius)
        setRegion(coordinateRegion, animated: true)
    }
}
