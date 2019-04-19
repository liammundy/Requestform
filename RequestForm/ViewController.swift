//
//  ViewController.swift
//  RequestForm
//
//  Created by keck on 3/20/19.
//  Copyright © 2019 Cate School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, YPSignatureDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var advisorsignature: YPDrawSignatureView!
    @IBOutlet var advisorsigbuttons: [UIView]!
    @IBOutlet weak var advisorsigpic: UIImageView!
    @IBOutlet weak var studentsigpic: UIImageView!
    @IBOutlet weak var coachsigpic: UIImageView!
    @IBAction func showadvisorsig(_ sender: UIButton) {
        self.advisorsignature.isHidden = false
    }
    @IBAction func clearadvisorsig(_ sender: UIButton) {
        self.advisorsignature.clear()
    }
    
    @IBAction func saveadvisorsig(_ sender: UIButton) {
        if let signatureImage = self.advisorsignature.getSignature(scale: 10) {
            
            // Saving signatureImage from the line above to the Photo Roll.
            // The first time you do this, the app asks for access to your pictures.
            //UIImageWriteToSavedPhotosAlbum(signatureImage, nil, nil, nil)
            
            // Since the Signature is now saved to the Photo Roll, the View can be cleared anyway.
            self.advisorsignature.clear()
            self.advisorsignature.isHidden = true
            advisorsigpic.image = signatureImage
            //advisorsigpic.isHidden = false
        }
    }
    
    @IBOutlet weak var studentsignature: YPDrawSignatureView!
    
    
    @IBAction func showstudentsig(_ sender: UIButton) {
        self.studentsignature.isHidden = false
    }
    @IBAction func clearstudentsig(_ sender: UIButton) {
        self.studentsignature.clear()
    }
    
    @IBAction func savestudentsig(_ sender: UIButton) {
        if let signatureImage = self.studentsignature.getSignature(scale: 10) {
            
            // Saving signatureImage from the line above to the Photo Roll.
            // The first time you do this, the app asks for access to your pictures.
            //UIImageWriteToSavedPhotosAlbum(signatureImage, nil, nil, nil)
            
            // Since the Signature is now saved to the Photo Roll, the View can be cleared anyway.
            self.studentsignature.clear()
            self.studentsignature.isHidden = true
            studentsigpic.image = signatureImage
        }
    }
    @IBOutlet weak var coachsignature: YPDrawSignatureView!
    @IBAction func showcoachsig(_ sender: UIButton) {
        self.coachsignature.isHidden = false
    }
    @IBAction func clearcoachsig(_ sender: Any) {
        self.coachsignature.clear()
    }
    @IBAction func savecoachsig(_ sender: UIButton) {
        if let signatureImage = self.coachsignature.getSignature(scale: 10) {
            
            // Saving signatureImage from the line above to the Photo Roll.
            // The first time you do this, the app asks for access to your pictures.
            //UIImageWriteToSavedPhotosAlbum(signatureImage, nil, nil, nil)
            
            // Since the Signature is now saved to the Photo Roll, the View can be cleared anyway.
            self.coachsignature.clear()
            self.coachsignature.isHidden = true
            coachsigpic.image = signatureImage
        }
    }
    
    
    
    
    func didStart(_ view : YPDrawSignatureView) {
        print("Started Drawing")
    }
    
    func didFinish(_ view : YPDrawSignatureView) {
        print("Finished Drawing")
    }
}

