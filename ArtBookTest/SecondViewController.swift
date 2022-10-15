//
//  SecondViewController.swift
//  ArtBookTest
//
//  Created by BARIŞ AKTÜRK on 14.10.2022.
//

import UIKit
import CoreData

class SecondViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
   
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var artistTextField: UITextField!
    @IBOutlet weak var yearTexField: UITextField!
    @IBOutlet weak var CommitTextField: UITextField!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Görsel tıklma
        nameTextField.text = ""
        imageView.isUserInteractionEnabled = true
        let imageRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        imageView.addGestureRecognizer(imageRecognizer)
        
        // keyboard saklama
        let imageRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(imageRecognizer2)
    }
    
    // : Klavyeyi saklma
    @objc func hideKeyboard(){
        view.endEditing(true)
    }
    
    // : Galeriden Görsel Seçme
 @objc func chooseImage(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present (picker,animated: true)
    }
    
    // : Galeriden Çıkma
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
       self.dismiss(animated: true)
    }
    
    
    
    
  // : Save Button
    @IBAction func SaveClickedButton(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true) // Bir önceki V.C. gelme
        
    }
    
}



// 1-) buradaki verileri core dataya kaydetme
// 2-) kaydedilen verileri v.c gösterme
// 3-) gösterilen verileri çağırma
