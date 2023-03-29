//
//  CanvasViewController.swift
//  Drawing App
//
//  Created by Shishir_Mac on 29/3/23.
//

import UIKit
import PencilKit

class CanvasViewController: UIViewController, PKCanvasViewDelegate {
    
    @IBOutlet weak var canvasView: PKCanvasView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var drawingLabel: UILabel!
    @IBOutlet weak var timeImageView: UIImageView!
    @IBOutlet weak var holdLabel: UILabel!
    
    let drawing = PKDrawing()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        canvasView.delegate = self
        canvasView.drawing = drawing
        
        canvasView.layer.borderWidth = 1
        canvasView.layer.borderColor = UIColor(ciColor: .black).cgColor
        
        drawingLabel.layer.borderWidth = 1
        drawingLabel.layer.borderColor = UIColor(ciColor: .gray).cgColor
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupCanvasView()
    }
    
    private func setupCanvasView() {
        let toolPicker = PKToolPicker()
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        canvasView.becomeFirstResponder()
        canvasView.drawingPolicy = .anyInput
    }
    
    @IBAction func clearButtonAction(_ sender: UIButton) {
        canvasView.drawing = PKDrawing()
    }
    
    @IBAction func saveImageButtonAction(_ sender: UIButton) {
        let img = UIGraphicsImageRenderer(bounds: canvasView.bounds).image { (_) in
            canvasView.drawHierarchy(in: canvasView.bounds, afterScreenUpdates: true)
        }
        
        UIImageWriteToSavedPhotosAlbum(img, nil, nil, nil)
    }
    
}
