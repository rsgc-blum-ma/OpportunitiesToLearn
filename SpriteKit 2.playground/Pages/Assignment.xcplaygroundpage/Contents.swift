//: # Pump up the Volume
//: Nyan Cat isn't Nyan Cat without a little tune. Start with what we had on the [previous page](@previous)

import SpriteKit
import PlaygroundSupport

let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)

var scene = SKScene(size: frame.size)

// moving entity

let nyanCat = SKSpriteNode(imageNamed: "MemeSnipe")
nyanCat.position = midPoint
nyanCat.setScale(0.3)
let actionMoveUp = SKAction.moveBy(x: 0, y: 5, duration: 0.15)
let actionWait = SKAction.wait(forDuration: 0.82)
let actionMoveDown = SKAction.moveBy(x: 0, y: -5, duration: 0.15)
let actionSequence = SKAction.sequence([actionMoveUp, actionWait, actionMoveDown])
let actionRepeat = SKAction.repeatForever(actionSequence)
nyanCat.run(actionRepeat)
nyanCat.zPosition = 10  // Ensure sprite is above background
scene.addChild(nyanCat) // Add to the scene

// raining memes










// Falling snow

let emitter = SKEmitterNode()
emitter.particleLifetime = 40
emitter.particleBlendMode = SKBlendMode.alpha
emitter.particleBirthRate = 5
emitter.particleSize = CGSize(width: 1.5,height: CGFloat(arc4random_uniform(4)+6))
emitter.particleColor = SKColor(red: 1, green: 50, blue: 255, alpha: 1)
emitter.position = CGPoint(x:150,y:midPoint.y*2)
emitter.particleSpeed = 250
emitter.particleSpeedRange = 32
emitter.particlePositionRange = CGVector(dx: frame.size.width, dy: frame.size.height)
emitter.emissionAngle = 3*CGFloat.pi/2
emitter.advanceSimulationTime(40)
emitter.particleAlpha = 0.5
emitter.particleAlphaRange = 0.5
scene.addChild(emitter)


let rainbowColors = [
    SKColor(red: 255/255, green: 43/255, blue: 14/255, alpha: 1),
    SKColor(red: 255/255, green: 168/255, blue: 6/255, alpha: 1),
    SKColor(red: 255/255, green: 244/255, blue: 5/255, alpha: 1),
    SKColor(red: 51/255, green: 234/255, blue: 5/255, alpha: 1),
    SKColor(red: 8/255, green: 163/255, blue: 255/255, alpha: 1),
    SKColor(red: 8122255, green: 85/255, blue: 255/255, alpha: 1),
]


var yMultiplier : CGFloat = 0.5

//: Make Nyan Cat even happier!
let actionPlaySound = SKAction.playSoundFileNamed("RobloxMeme.mp3", waitForCompletion: false)
scene.run(actionPlaySound)

//: And show the scene in the liveView

let view = SKView(frame: frame)
view.presentScene(scene)
PlaygroundPage.current.liveView = view

//: OK I'm done.

