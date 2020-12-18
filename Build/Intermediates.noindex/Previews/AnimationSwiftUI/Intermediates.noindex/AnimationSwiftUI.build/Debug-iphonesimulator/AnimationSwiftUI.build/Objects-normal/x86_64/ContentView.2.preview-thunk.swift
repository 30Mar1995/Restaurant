@_private(sourceFile: "ContentView.swift") import AnimationSwiftUI
import SpriteKit
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/pooja/Desktop/AnimationSwiftUI/AnimationSwiftUI/ContentView.swift", line: 57)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension GameScene {
    @_dynamicReplacement(for: touchesMoved(_:with:)) private func __preview__touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        #sourceLocation(file: "/Users/pooja/Desktop/AnimationSwiftUI/AnimationSwiftUI/ContentView.swift", line: 40)
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let colors = [SKColor.green, SKColor.magenta, SKColor.cyan]
        let randomColor = colors.randomElement() ?? SKColor.green
        
        let circle = SKShapeNode(circleOfRadius: __designTimeInteger("#2271.[3].[1].[4].value.arg[0].value", fallback: 5))
        circle.position = location
        circle.strokeColor = SKColor.black
        circle.fillColor = randomColor
        circle.physicsBody = SKPhysicsBody(circleOfRadius: 5)
        addChild(circle)
#sourceLocation()
    }
}

extension GameScene {
    @_dynamicReplacement(for: didMove(to:)) private func __preview__didMove(to view: SKView) {
        #sourceLocation(file: "/Users/pooja/Desktop/AnimationSwiftUI/AnimationSwiftUI/ContentView.swift", line: 36)
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pooja/Desktop/AnimationSwiftUI/AnimationSwiftUI/ContentView.swift", line: 25)
        if #available(iOS 14.0, *) {
            SpriteView(scene: scene).frame(width: __designTimeInteger("#2271.[2].[1].property.[0].[0].[0].[0].modifier[0].arg[0].value", fallback: 300), height: __designTimeInteger("#2271.[2].[1].property.[0].[0].[0].[0].modifier[0].arg[1].value", fallback: 400))
        } else {
            // Fallback on earlier versions
        }
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: scene) private var __preview__scene: SKScene {
        #sourceLocation(file: "/Users/pooja/Desktop/AnimationSwiftUI/AnimationSwiftUI/ContentView.swift", line: 17)
        let scene = GameScene()
        scene.size = CGSize(width: 300, height:400)
        scene.scaleMode = .fill
        return scene
#sourceLocation()
    }
}

typealias ContentView = AnimationSwiftUI.ContentView
typealias GameScene = AnimationSwiftUI.GameScene
typealias ContentView_Previews = AnimationSwiftUI.ContentView_Previews