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
    }
    
    // MARK: - Function
    
    func setLineSize() {
        
        lineSizeButton.menu = UIMenu(children: [
            UIAction(title: "1", image: UIImage(named: "tilde"), handler: { [self] ( _ ) in drawView.strokeWidth = CGFloat(1)}),
            UIAction(title: "2", image: UIImage(named: "tilde"), handler: { [self] ( _ ) in drawView.strokeWidth = CGFloat(2)}),
            UIAction(title: "3", image: UIImage(named: "tilde"), handler: { [self] ( _ ) in drawView.strokeWidth = CGFloat(3)}),
            UIAction(title: "4", image: UIImage(named: "tilde"), handler: { [self] ( _ ) in drawView.strokeWidth = CGFloat(4)}),
            UIAction(title: "5", image: UIImage(named: "tilde"), handler: { [self] ( _ ) in drawView.strokeWidth = CGFloat(5)}),
            UIAction(title: "6", image: UIImage(named: "tilde"), handler: { [self] ( _ ) in drawView.strokeWidth = CGFloat(6)}),
            UIAction(title: "7", image: UIImage(named: "tilde"), handler: { [self] ( _ ) in drawView.strokeWidth = CGFloat(7)}),
            UIAction(title: "8", image: UIImage(named: "tilde"), handler: { [self] ( _ ) in drawView.strokeWidth = CGFloat(8)}),
            UIAction(title: "9", image: UIImage(named: "tilde"), handler: { [self] ( _ ) in drawView.strokeWidth = CGFloat(9)}),
            UIAction(title: "10", image: UIImage(named: "tilde"), handler: { [self] ( _ ) in drawView.strokeWidth = CGFloat(10)})
        ])
        
        lineSizeButton.showsMenuAsPrimaryAction = true
        lineSizeButton.changesSelectionAsPrimaryAction = true
    }
    
    func setColorButton() {
        
        colorButton.menu = UIMenu(children: [
            UIAction(image: UIImage(systemName: "square.fill")?.withTintColor(.black, renderingMode: .alwaysOriginal),
                     handler: { [self] ( _ ) in drawView.strokeColor = .black}),
            UIAction(image: UIImage(systemName: "square.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal),
                     handler: { [self] ( _ ) in drawView.strokeColor = .red}),
            UIAction(image: UIImage(systemName: "square.fill")?.withTintColor(.blue, renderingMode: .alwaysOriginal),
                     handler: { [self] ( _ ) in drawView.strokeColor = .blue}),
            UIAction(image: UIImage(systemName: "square.fill")?.withTintColor(.brown, renderingMode: .alwaysOriginal),
                     handler: { [self] ( _ ) in drawView.strokeColor = .brown}),
            UIAction(image: UIImage(systemName: "square.fill")?.withTintColor(.green, renderingMode: .alwaysOriginal),
                     handler: { [self] ( _ ) in drawView.strokeColor = .green}),
            UIAction(image: UIImage(systemName: "square.fill")?.withTintColor(.white, renderingMode: .alwaysOriginal),
                     handler: { [self] ( _ ) in drawView.strokeColor = .white})
        ])
        
        colorButton.showsMenuAsPrimaryAction = true
        colorButton.changesSelectionAsPrimaryAction = true
    }
    
    // MARK: - IBAction
    @IBAction func clearButtonAction(_ sender: UIButton) {
        drawView.clearCanvasView()
    }
    
    @IBAction func eraserButtonAction(_ sender: UIButton) {
        //drawView.strokeWidth = CGFloat(sender.value)
        print("colorButtonAction")
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
        print("Done")
    }

}
