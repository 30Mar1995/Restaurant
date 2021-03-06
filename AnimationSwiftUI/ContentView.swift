//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by Pooja Kadam on 09/08/20.
//  Copyright © 2020 Developer. All rights reserved.
//

import SwiftUI
import SpriteKit



struct ContentView: View {
    
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: 300, height:400)
        scene.scaleMode = .fill
        return scene
    }
    
    
    var body: some View {
        if #available(iOS 14.0, *) {
            SpriteView(scene: scene).frame(width: 200, height: 400)
        } else {
            // Fallback on earlier versions
        }
        
    }
}

class GameScene : SKScene {
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let colors = [SKColor.systemBlue, SKColor.magenta, SKColor.cyan]
        let randomColor = colors.randomElement() ?? SKColor.green
        
        let circle = SKShapeNode(circleOfRadius: 5)
        circle.position = location
        circle.strokeColor = SKColor.black
        circle.fillColor = randomColor
        circle.physicsBody = SKPhysicsBody(circleOfRadius: 5)
        addChild(circle)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
