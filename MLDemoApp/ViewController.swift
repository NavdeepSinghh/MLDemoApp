//
//  ViewController.swift
//  MLDemoApp
//
//  Created by Navdeep Singh on 21/10/19.
//  Copyright © 2019 Navdeep Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    // MARK: IBOutlets...................
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var cameraButton: UIButton!
    @IBOutlet var photoLibraryButton: UIButton!
    @IBOutlet var resultsView: UIView!
    @IBOutlet var resultsLabel: UILabel!
    @IBOutlet var resultsConstraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
        resultsLabel.text = "Take a photo or choose from library"
    }

    // MARK: IBActions...................
    @IBAction func takeImageWithCamera(_ sender: Any) {
        presentPicker(with: .camera)
    }

    @IBAction func pickImageFromLibrary(_ sender: Any) {
        presentPicker(with: .photoLibrary)
    }

    func presentPicker(with sourceType: UIImagePickerController.SourceType) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = sourceType
        present(picker, animated: true)
        hideResultsView()
    }

    func hideResultsView() {
        self.resultsView.alpha = 0
    }

    // MARK: Function to classify image using the ML Model
    func classify(image: UIImage) {

    }

}

