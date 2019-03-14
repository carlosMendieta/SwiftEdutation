/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.setUserTrackingMode(.follow, animated: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let width = 1000.0 //meters
        let height = 1000.0
        let region = MKCoordinateRegion(center: center, latitudinalMeters: width, longitudinalMeters: height)
        mapView.setRegion(region, animated: true)
    }

    @IBAction func dropPin(_ sender: UIBarButtonItem) {
        let pin = Pin(coordinate: mapView.userLocation.coordinate)
        mapView.addAnnotation(pin)
    }
    
}

