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
        let url = URL(string: "https://www.tripadvisor.ru/Hotel_Review-g297967-d6451441-Reviews-Throne_Beach_Resort_Spa-Manavgat_Turkish_Mediterranean_Coast.html")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        // Do any additional setup after loading the view.
    }

    
    
}

