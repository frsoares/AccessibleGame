//
//  GameScene.swift
//  AccessibleGame
//
//  Created by Francisco Miranda Soares on 08/08/23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    private var label: SKLabelNode?
    private var raqueteNode: SKSpriteNode!
    private var movingRaquete = false

    override func didMove(to view: SKView) {
        // Get label node from scene and store it for use later
        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
        if let label = self.label {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 2.0))
            label.isAccessibilityElement = false
        }
        self.raqueteNode = self.childNode(withName: "//raquete") as? SKSpriteNode
        self.raqueteNode.isAccessibilityElement = true
        self.raqueteNode.accessibilityTraits = .allowsDirectInteraction
        self.raqueteNode.accessibilityLabel = "raquete"
    }

    func touchDown(atPoint pos: CGPoint) {
        if self.atPoint(pos) == self.raqueteNode {
            self.movingRaquete = true
        }
    }

    func touchMoved(toPoint pos: CGPoint) {
        if movingRaquete {
            let raqueteY = self.raqueteNode.position.y
            self.raqueteNode.position = CGPoint(x: pos.x, y: raqueteY)
        }
    }

    func touchUp(atPoint pos: CGPoint) {
        self.movingRaquete = false
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }

        for touch in touches { self.touchDown(atPoint: touch.location(in: self)) }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches { self.touchMoved(toPoint: touch.location(in: self)) }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches { self.touchUp(atPoint: touch.location(in: self)) }
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches { self.touchUp(atPoint: touch.location(in: self)) }
    }
}
