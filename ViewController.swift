//
//  ViewController.swift
//  ProgramaticViews
//
//  Created by Edgar Adrián on 01/09/18.
//  Copyright © 2018 Edgar Adrián. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    var mapView : MKMapView!
    
    //Button
    let botonZoomUP : UIButton = {
        let boton = UIButton()
        boton.backgroundColor = UIColor.blue
        boton.setTitle("+", for: .normal)
        boton.tag = 1
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.addTarget(self, action: #selector(ViewController.zoom(_:)), for: .touchUpInside)
        return boton
    }()
    
    //Button
    let botonZoomDown : UIButton = {
       let boton = UIButton()
        boton.setTitle("-", for: .normal)
        boton.backgroundColor = UIColor.blue
        boton.tag = 2
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.addTarget(self, action: #selector(ViewController.zoom(_:)), for: .touchUpInside)
       return boton
    }()
    
    override func loadView() {
        
        mapView = MKMapView()
        
        view = mapView
        
        view.addSubview(botonZoomUP)
        view.addSubview(botonZoomDown)
    }//loadView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //Configuracion de la vista
    func setupView() {
        
        let margenes = view.layoutMarginsGuide
        let safeArea = view.safeAreaLayoutGuide
        
        //Constraints botonZoomUP
        botonZoomUP.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        botonZoomUP.leadingAnchor.constraint(equalTo: margenes.leadingAnchor).isActive = true
        botonZoomUP.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        //Constraint botonZoomDown
        botonZoomDown.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        botonZoomDown.trailingAnchor.constraint(equalTo: margenes.trailingAnchor).isActive = true
        botonZoomDown.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
    }//setupView
    
    @objc func zoom(_ sender: UIButton) {
        var region = mapView.region
        var span = region.span
        switch sender.tag {
        case 1:
            span.latitudeDelta *= 1.1
            span.longitudeDelta *= 1.1
        default:
            span.latitudeDelta /= 1.1
            span.longitudeDelta /= 1.1
        }
        region.span = span
        mapView.region = region
    }//zoom

}

