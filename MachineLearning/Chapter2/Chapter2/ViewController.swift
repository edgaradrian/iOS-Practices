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
        output.setSampleBufferDelegate(self, queue: DispatchQueue(label: "myVideoQueue"))
        
        session.addOutput(output)
        session.addInput(input)
        session.startRunning()
        
    }//setupSession
    
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        
        guard let pixelBuffer: CVPixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else {
            return
        }
        
        guard let model = try? VNCoreMLModel(for: MobileNet(configuration: MLModelConfiguration()).model) else {
            return
        }
        
        let request = VNCoreMLRequest(model: model) { (data, error) in
            
            guard let results = data.results as? [VNClassificationObservation] else {
                return
            }
            
            guard let first = results.first else { return }
            
            let confidence = first.confidence * 100
            
            DispatchQueue.main.async {
                self.predictionLabel.text = first.identifier.capitalized
                self.confidenceLabel.text = String(confidence) + "%"
            }
            
        }
        
    }//captureOutput
    
}//extension AVCaptureVideoDataOutputSampleBufferDelegate

