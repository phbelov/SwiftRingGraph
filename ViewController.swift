//
//  ViewController.swift
//  SwiftRingGraph
//
//  Created by Филипп Белов on 3/23/16.
//  Copyright © 2016 Philip Belov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bigPercentLabel: UILabel!
    @IBOutlet weak var normalPercentLabel: UILabel!
    @IBOutlet weak var smallPercentLabel: UILabel!
    @IBOutlet weak var bigCircleGraph: CircleGraphView!
    @IBOutlet weak var normalCircleGraph: CircleGraphView!
    @IBOutlet weak var smallCircleGraph: CircleGraphView!
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        bigCircleGraph.endArc = CGFloat(sender.value)
        bigPercentLabel.text = String(format: " %5.2f%%", sender.value * 100)
    }
    @IBAction func normalSliderValueChanged(sender: UISlider) {
        normalCircleGraph.endArc = CGFloat(sender.value)
        normalPercentLabel.text = String(format: " %5.2f%%", sender.value * 100)
    }
    @IBAction func smallSliderValueChanged(sender: UISlider) {
        smallCircleGraph.endArc = CGFloat(sender.value)
        smallPercentLabel.text = String(format: " %5.2f%%", sender.value * 100)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundTrackColor = UIColor(white: 0.25, alpha: 1.0)
        
        bigCircleGraph.arcColor = UIColor(red: 218/255, green: 73/255, blue: 80/255, alpha: 1.0)
        bigCircleGraph.endArc = 0.5
        bigCircleGraph.arcWidth = 50.0
        bigCircleGraph.arcBackgroundColor = backgroundTrackColor
        
        normalCircleGraph.arcColor = UIColor(red: 244/255, green: 116/255, blue: 107/255, alpha: 1.0)
        normalCircleGraph.endArc = 0.5
        normalCircleGraph.arcWidth = 30.0
        normalCircleGraph.arcBackgroundColor = backgroundTrackColor
        
        smallCircleGraph.arcColor = UIColor(red: 255/255, green: 110/255, blue: 103/255, alpha: 1.0)
        smallCircleGraph.endArc = 0.5
        smallCircleGraph.arcWidth = 25.0
        smallCircleGraph.arcBackgroundColor = backgroundTrackColor
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

