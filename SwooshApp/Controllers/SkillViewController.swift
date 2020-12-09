//
//  SkillViewController.swift
//  SwooshApp
//
//  Created by Lucas Castelan Prado on 09-12-20.
//

import UIKit

class SkillViewController: UIViewController {

    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("skillViewController player is \(player.desiredLeague!)")
    }
    
}
