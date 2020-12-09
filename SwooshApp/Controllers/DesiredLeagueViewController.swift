//
//  DesiredLeagueViewController.swift
//  SwooshApp
//
//  Created by Lucas Castelan Prado on 09-12-20.
//

import UIKit

class DesiredLeagueViewController: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        nextButton.isEnabled = false
    }
    
    @IBAction func onNextTapped(_ sender: UIButton) {
       performSegue(withIdentifier: "fromDesiredLeagueToSkill", sender: sender)
    }
    
    @IBAction func onDesiredLeagueTapped(_ sender: UIButton) {
        if let title = sender.currentTitle {
            print("onDesiredLeagueTapped: setting self.player.desiredLeague to \(title.lowercased())")
            player.desiredLeague = title.lowercased()
            nextButton.isEnabled = true
        } else {
            print("onDesiredLeagueTapped: currentTitle is nil")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillViewController = segue.destination as? SkillViewController {
            skillViewController.player = player
        } else {
            print("prepare: couldn't downgrade UIViewController to SkillViewController")
        }
    }
}
