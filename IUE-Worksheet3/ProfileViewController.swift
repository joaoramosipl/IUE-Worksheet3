//
//  ProfileViewController.swift
//  IUE-Worksheet3
//
//  Created by João Ramos on 28/10/2019.
//  Copyright © 2019 João Ramos. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet weak var clickHereButton: UIButton!
    @IBOutlet weak var profileImageViewCenterConstraint: NSLayoutConstraint!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileNameCenterConstraint: NSLayoutConstraint!
    @IBOutlet weak var profileNumberCenterConstraint: NSLayoutConstraint!
    @IBOutlet weak var clickHereButtonCenterConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {

        
        clickHereButton.layer.cornerRadius = 5
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.5,
                     delay: 0,
                     options: [],
                     animations: { [weak self] in
                        self?.profileImageViewCenterConstraint.constant = 0
            }, completion: { [weak self] (bo) in
                UIView.animate(withDuration: 2,
                               delay: 1,
                               animations: { [weak self] in
                    self?.profileImageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                    self?.profileImageView.transform = CGAffineTransform.identity
                })
        })
    
        UIView.animate(withDuration: 0.5,
                       delay: 0.5,
                     options: [],
                     animations: { [weak self] in
                        self?.profileNameCenterConstraint.constant = 0
        }, completion: nil)
        
        
        UIView.animate(withDuration: 0.5,
                     delay: 1,
                     options: [.autoreverse, .repeat],
                     animations: { [weak self] in
                        self?.profileNumberCenterConstraint.constant = 0
        }, completion: nil)
        
        
        UIView.animate(withDuration: 0.5,
                       delay: 1.5,
                     options: [],
                     animations: { [weak self] in
                        self?.clickHereButtonCenterConstraint.constant = 0
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5,
                     delay: 2,
                     options: [.curveEaseInOut, .autoreverse, .repeat],
                     animations: { [weak self] in
                        self?.clickHereButton.frame.size.height *= 1.1
                        self?.clickHereButton.frame.size.width *= 1.1
        }, completion: nil)
    


    }
}
