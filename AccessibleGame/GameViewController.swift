//
//  GameViewController.swift
//  AccessibleGame
//
//  Created by Francisco Miranda Soares on 08/08/23.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let view = self.view as? SKView {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill

                // Present the scene
                view.presentScene(scene)
            }

            view.ignoresSiblingOrder = true

            view.showsFPS = true
            view.showsNodeCount = true
            /*
             // se você descomentar este bloco de código e o voice over estiver ligado,
             // a cena toda fica com interação direta, mas perde uma indicação do local
             // da "raquete". O local pode ser importante! Neste exemplo, por exemplo,
             // é interessante ter indicação do local da raquete porque é preciso tocar
             // nela para movê-la.

            if UIAccessibility.isVoiceOverRunning {
                self.view.isAccessibilityElement = true
                self.view.accessibilityTraits = .allowsDirectInteraction
            }
             */
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
