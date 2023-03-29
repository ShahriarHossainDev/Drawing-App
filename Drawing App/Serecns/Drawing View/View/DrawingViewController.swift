//
//  DrawingViewController.swift
//  Drawing App
//
//  Created by Shishir_Mac on 29/3/23.
//

import UIKit
import PencilKit

class DrawingViewController: UIViewController, PKCanvasViewDelegate {
    
    @IBOutlet weak var canvasView: PKCanvasView!
    
    let drawing = PKDrawing()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //canvasView.drawing = drawing
        canvasView.delegate = self
        canvasView.drawingPolicy = .anyInput
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
    
    
    @IBAction func clearBarButtonItem(_ sender: UIBarButtonItem) {
        canvasView.drawing = PKDrawing()
    }
    
    
    @IBAction func saveImageBarButtonAction(_ sender: UIBarButtonItem) {
        let imageVC = self.storyboard?.instantiateViewController(identifier: "imageViews") as! ImageViewController
        
        let img = UIGraphicsImageRenderer(bounds: canvasView.bounds).image { (_) in
            view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
        }
        imageVC.img = img
        
        self.navigationController?.pushViewController(imageVC, animated: true)
    }
    
}
