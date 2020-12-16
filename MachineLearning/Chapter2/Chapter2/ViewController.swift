//
//  ViewController.swift
//  Chapter2
//
//  Created by Edgar Adrián on 14/12/20.
//

import UIKit
import AVKit
import Vision
import CoreML

class ViewController: UIViewController {
    
    @IBOutlet weak var predictionLabel: UILabel!
    @IBOutlet weak var confidenceLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupSession()
    }

}//ViewController

extension ViewController: AVCaptureVideoDataOutputSampleBufferDelegate {
    
    func setupSession() {
        guard let device = AVCaptureDevice.default(for: .video) else { return }
        guard let input = try? AVCaptureDeviceInput(device: device) else { return }
        
        let session = AVCaptureSession()
        session.sessionPreset = .hd1920x1080
        
        let previewLayer = AVCaptureVideoPreviewLayer(session: session)
        previewLayer.frame = view.frame
        previewLayer.videoGravity = .resizeAspectFill
        imageView.layer.addSublayer(previewLayer)
        
        let output = AVCaptureVideoDataOutput()
        output.setSampleBufferDelegate(self, queue: DispatchQueue(label: "videoQueue"))
        
        session.addOutput(output)
        session.addInput(input)
        session.startRunning()
        
    }//setupSession
    
}//extension AVCaptureVideoDataOutputSampleBufferDelegate

