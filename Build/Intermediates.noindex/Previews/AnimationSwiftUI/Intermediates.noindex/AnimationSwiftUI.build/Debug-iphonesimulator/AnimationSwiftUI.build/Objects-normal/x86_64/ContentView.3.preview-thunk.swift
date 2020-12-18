@_private(sourceFile: "ContentView.swift") import AnimationSwiftUI
import SpriteKit
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/pooja/Desktop/AnimationSwiftUI/AnimationSwiftUI/ContentView.swift", line: 57)
        AnyView(__designTimeSelection(ContentView(), "#2271.[4].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension GameScene {
    @_dynamicReplacement(for: touchesMoved(_:with:)) private func __preview__touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        #sourceLocation(file: "/Users/pooja/Desktop/AnimationSwiftUI/AnimationSwiftUI/ContentView.swift", line: 40)
        guard let touch = touches.first else { return }
        let location = touch.location(in: __designTimeSelection(self, "#2271.[3].[1].[1].value.modifier[0].arg[0].value"))
        let colors = [__designTimeSelection(SKColor.green, "#2271.[3].[1].[2].value.[0]"), __designTimeSelection(SKColor.magenta, "#2271.[3].[1].[2].value.[1]"), __designTimeSelection(SKColor.cyan, "#2271.[3].[1].[2].value.[2]")]
        let randomColor = colors.randomElement() ?? SKColor.green
        
        let circle = SKShapeNode(circleOfRadius: __designTimeInteger("#2271.[3].[1].[4].value.arg[0].value", fallback: 5))
        circle.position = location
        circle.strokeColor = SKColor.black
        circle.fillColor = randomColor
        circle.physicsBody = SKPhysicsBody(circleOfRadius: 5)
        __designTimeSelection(addChild(__designTimeSelection(circle, "#2271.[3].[1].[9].arg[0].value")), "#2271.[3].[1].[9]")
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
            __designTimeSelection(SpriteView(scene: __designTimeSelection(scene, "#2271.[2].[1].property.[0].[0].[0].[0].arg[0].value")).frame(width: __designTimeInteger("#2271.[2].[1].property.[0].[0].[0].[0].modifier[0].arg[0].value", fallback: 300), height: __designTimeInteger("#2271.[2].[1].property.[0].[0].[0].[0].modifier[0].arg[1].value", fallback: 400)), "#2271.[2].[1].property.[0].[0].[0].[0]")
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
        return __designTimeSelection(scene, "#2271.[2].[0].property.[0].[3]")
#sourceLocation()
    }
}

typealias ContentView = AnimationSwiftUI.ContentView
typealias GameScene = AnimationSwiftUI.GameScene
typealias ContentView_Previews = AnimationSwiftUI.ContentView_Previews