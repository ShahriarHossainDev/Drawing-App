//
//  CanvasViewController.swift
//  Drawing App
//
//  Created by Shishir_Mac on 29/3/23.
//

import UIKit

class CanvasViewController: UIViewController{
    
    @IBOutlet weak var drawView: DrawCanvasView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var drawingLabel: UILabel!
    @IBOutlet weak var timeImageView: UIImageView!
    @IBOutlet weak var holdLabel: UILabel!
    
    @IBOutlet weak var toolView: UIView!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var eraserButton: UIButton!
    @IBOutlet weak var colorButton: UIButton!
    @IBOutlet weak var pencilButton: UIButton!
    @IBOutlet weak var lineSizeButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        canvasView.delegate = self
//        canvasView.drawing = drawing
//
        
        drawView.layer.borderWidth = 1
        drawView.layer.borderColor = UIColor(ciColor: .black).cgColor
        
        drawingLabel.layer.borderWidth = 1
        drawingLabel.layer.borderColor = UIColor(ciColor: .black).cgColor
        
        toolView.layer.borderWidth = 1
        toolView.layer.borderColor = UIColor(ciColor: .black).cgColor
        
        doneButton.layer.borderWidth = 1
        doneButton.layer.borderColor = UIColor(ciColor: .black).cgColor
        doneButton.layer.cornerRadius = doneButton.frame.size.height / 2
        
        setLineSize()
        setColorButton()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //setupCanvasView()
    }
    
    // MARK: - Function
    
    func setLineSize() {
        let lineClosure = { (action: UIAction) in
            print(action.title) }
        
        lineSizeButton.menu = UIMenu(children: [
            UIAction(title: "1", handler: lineClosure),
            UIAction(title: "2", handler: lineClosure),
            UIAction(title: "3", handler: lineClosure),
            UIAction(title: "4", handler: lineClosure)
        ])
        
        lineSizeButton.showsMenuAsPrimaryAction = true
        lineSizeButton.changesSelectionAsPrimaryAction = true
    }
    
    func setColorButton() {
        let lineClosure = { (action: UIAction) in
            print(action.title) }
        
        colorButton.menu = UIMenu(children: [
            UIAction(title: "1", handler: lineClosure),
            UIAction(title: "2", handler: lineClosure),
            UIAction(title: "3", handler: lineClosure),
            UIAction(title: "4", handler: lineClosure)
        ])
        
        colorButton.showsMenuAsPrimaryAction = true
        colorButton.changesSelectionAsPrimaryAction = true
    }
    
//    private func setupCanvasView() {
//        let toolPicker = PKToolPicker()
//        toolPicker.setVisible(true, forFirstResponder: canvasView)
//        toolPicker.addObserver(canvasView)
//        canvasView.becomeFirstResponder()
//        //canvasView.drawingPolicy = .anyInput
//    }
    
    // MARK: - IBAction
    @IBAction func clearButtonAction(_ sender: UIButton) {
        drawView.clearCanvasView()
    }
    
    @IBAction func eraserButtonAction(_ sender: UIButton) {
        //drawView.strokeWidth = CGFloat(sender.value)
    }
    
    @IBAction func colorButtonAction(_ sender: UIButton) {
        print("colorButtonAction")
    }
    
    @IBAction func pencilButtonAction(_ sender: UIButton) {
        print("pencilButtonAction")
    }
    
    @IBAction func lineSizeButtonAction(_ sender: UIButton) {
        print("lineSizeButtonAction")
        
    }
    
    @IBAction func doneButtonAction(_ sender: UIButton) {
    }
    //    @IBAction func clearButtonAction(_ sender: UIButton) {
//        canvasView.drawing = PKDrawing()
//    }
//
//    @IBAction func saveImageButtonAction(_ sender: UIButton) {
//        let img = UIGraphicsImageRenderer(bounds: canvasView.bounds).image { (_) in
//            canvasView.drawHierarchy(in: canvasView.bounds, afterScreenUpdates: true)
//        }
//
//        UIImageWriteToSavedPhotosAlbum(img, nil, nil, nil)
//    }
//
}
