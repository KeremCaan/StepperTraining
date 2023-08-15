//
//  ViewController.swift
//  NeonAcademySteppers
//
//  Created by Kerem Caan on 1.08.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let stepper : UIStepper = UIStepper()
    let imageView: UIImageView = UIImageView()
    let label: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    func configureUI() {
        
        view.addSubview(label)
        label.textAlignment = .center
        label.text = "0"
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(275)
            make.centerX.equalToSuperview()
            make.width.equalTo(400)
        }
        
        view.addSubview(imageView)
        imageView.image = UIImage(named: "barbie")
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(350)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(300)
        }
        
        
        view.addSubview(stepper)
        stepper.backgroundColor = .systemPink
        stepper.minimumValue = 0
        stepper.maximumValue = 50
        stepper.stepValue = 5
        stepper.addTarget(self, action: #selector(stepperChanged), for: .touchUpInside)
        stepper.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(200)
            make.centerX.equalToSuperview()
        }
    }
    
    @objc func stepperChanged() {
        label.text = "\(Int(stepper.value))"
    }
    

}

