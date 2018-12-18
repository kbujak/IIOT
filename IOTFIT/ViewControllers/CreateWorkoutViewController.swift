//
//  ViewController.swift
//  IOTFIT
//
//  Created by Krystian Bujak on 18/12/2018.
//  Copyright © 2018 Krystian Bujak. All rights reserved.
//

import UIKit
import PureLayout

class CreateWorkoutViewController: UIViewController {
    let containerView = UIView()
    let workoutTimeTitleLabel = UILabel(forAutoLayout: ())
    let workoutTimeLabel = UILabel()
    let workoutDistanceTitleLabel = UILabel()
    let workoutDistanceLabel = UILabel()
    let pauseButton = UIButton()
    let startButton = UIButton()
    
    private lazy var tabBarHeight = {
        tabBarController?.tabBar.frame.height ?? 50
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(containerView)
        [workoutTimeTitleLabel,
         workoutTimeLabel,
         workoutDistanceTitleLabel,
         workoutDistanceLabel,
         pauseButton,
         startButton].forEach { self.containerView.addSubview($0) }
        
        containerView.autoPinEdgesToSuperviewEdges()
        containerView.backgroundColor = .white
        
        setupWorkoutTimeTitleLabel()
        setupWorkoutTimeLabel()
        setupWorkoutDistanceTitleLabel()
        setupWorkoutDistanceLabel()
        setupPausetButton()
        setupStopButton()
    }
}

extension CreateWorkoutViewController {
    private func setupWorkoutTimeTitleLabel(){
        workoutTimeTitleLabel.autoPinEdge(.left, to: .left, of: containerView, withOffset: 20)
        workoutTimeTitleLabel.autoPinEdge(.top, to: .top, of: containerView, withOffset: 20)
        workoutTimeTitleLabel.autoPinEdge(.right, to: .right, of: containerView, withOffset: -20)
        workoutTimeTitleLabel.autoSetDimension(.height, toSize: 30)
        workoutTimeTitleLabel.text = "Workout Time"
        workoutTimeTitleLabel.textAlignment = .center
        workoutTimeTitleLabel.font = UIFont.preferredFont(forTextStyle: .title3)
        workoutTimeTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    private func setupWorkoutTimeLabel() {
        workoutTimeLabel.autoPinEdge(.top, to: .bottom, of: workoutTimeTitleLabel, withOffset: 10)
        workoutTimeLabel.autoPinEdge(.left, to: .left, of: containerView, withOffset: 20)
        workoutTimeLabel.autoPinEdge(.right, to: .right, of: containerView, withOffset: -20)
        workoutTimeLabel.autoSetDimension(.height, toSize: 50)
        workoutTimeLabel.text = "0 hrs 00 mins"
        workoutTimeLabel.textAlignment = .center
        workoutTimeLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        workoutTimeLabel.adjustsFontSizeToFitWidth = true
    }
    
    private func setupWorkoutDistanceTitleLabel() {
        workoutDistanceTitleLabel.autoPinEdge(.top, to: .bottom, of: workoutTimeLabel, withOffset: 10)
        workoutDistanceTitleLabel.autoPinEdge(.left, to: .left, of: containerView, withOffset: 20)
        workoutDistanceTitleLabel.autoPinEdge(.right, to: .right, of: containerView, withOffset: -20)
        workoutDistanceTitleLabel.autoSetDimension(.height, toSize: 30)
        workoutDistanceTitleLabel.text = "Workout Distance"
        workoutDistanceTitleLabel.textAlignment = .center
        workoutDistanceTitleLabel.font = UIFont.preferredFont(forTextStyle: .title3)
        workoutDistanceTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    private func setupWorkoutDistanceLabel() {
        workoutDistanceLabel.autoPinEdge(.top, to: .bottom, of: workoutDistanceTitleLabel, withOffset: 10)
        workoutDistanceLabel.autoPinEdge(.left, to: .left, of: containerView, withOffset: 20)
        workoutDistanceLabel.autoPinEdge(.right, to: .right, of: containerView, withOffset: -20)
        workoutDistanceLabel.autoSetDimension(.height, toSize: 50, relation: .greaterThanOrEqual)
        workoutDistanceLabel.text = "0 meters"
        workoutDistanceLabel.textAlignment = .center
        workoutDistanceLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        workoutDistanceLabel.adjustsFontSizeToFitWidth = true
    }
    
    private func setupPausetButton() {
        pauseButton.autoPinEdge(.left, to: .left, of: containerView, withOffset: 20)
        pauseButton.autoPinEdge(.right, to: .right, of: containerView, withOffset: -20)
        pauseButton.autoSetDimension(.height, toSize: 60)
        pauseButton.setTitle("Pause", for: .normal)
        pauseButton.titleLabel?.textAlignment = .center
        pauseButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        pauseButton.titleLabel?.adjustsFontSizeToFitWidth = true
        pauseButton.setTitleColor(.white, for: .normal)
        pauseButton.backgroundColor = UIColor(displayP3Red: 248/255, green: 122/255, blue: 113/255, alpha: 1/0)
    }
    
    private func setupStopButton() {
        startButton.autoPinEdge(.top, to: .bottom, of: pauseButton, withOffset: 20)
        startButton.autoPinEdge(.left, to: .left, of: containerView, withOffset: 20)
        startButton.autoPinEdge(.right, to: .right, of: containerView, withOffset: -20)
        startButton.autoPinEdge(.bottom, to: .bottom, of: containerView, withOffset: -20 - tabBarHeight)
        startButton.autoSetDimension(.height, toSize: 60)
        startButton.setTitle("Start", for: .normal)
        startButton.titleLabel?.textAlignment = .center
        startButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        startButton.titleLabel?.adjustsFontSizeToFitWidth = true
        startButton.setTitleColor(.white, for: .normal)
        startButton.backgroundColor = UIColor(displayP3Red: 96/255, green: 171/255, blue: 255/255, alpha: 1/0)
    }
}

