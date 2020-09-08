//
//  ViewController.swift
//  SeeFoodExample
//
//  Created by Edgar Ruiz on 07/09/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    let imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePicker.delegate = self
        self.imagePicker.sourceType = .camera
        self.imagePicker.allowsEditing = false
        
    }//viewDidLoad
    
    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
    }//cameraTapped


}//ViewController

extension ViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = image
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
}//extension UIImagePickerController

extension ViewController: UINavigationControllerDelegate {
    
}

