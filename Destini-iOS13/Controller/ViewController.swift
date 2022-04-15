//
//  ViewController.swift
//  Destini-iOS13
//


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLbl: UILabel!
    @IBOutlet weak var choice1Btn: UIButton!
    @IBOutlet weak var choice2Btn: UIButton!
    var storyBrain = StoryBrain()
    
    
    @IBAction func ChosenAction(_ sender: UIButton) {
        storyBrain.setDestiny(sender.currentTitle!)
           updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        updateUI()
    }
    
    func updateUI(){
        storyLbl.text = storyBrain.Storys[storyBrain.currentStory].title
        choice1Btn.setTitle(storyBrain.Storys[storyBrain.currentStory].choice1, for: .normal)
        choice2Btn.setTitle(storyBrain.Storys[storyBrain.currentStory].choice2, for: .normal)
    }

}

