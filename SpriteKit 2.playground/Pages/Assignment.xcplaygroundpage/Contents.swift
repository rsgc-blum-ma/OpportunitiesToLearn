//: # Pump up the Volume
//: Nyan Cat isn't Nyan Cat without a little tune. Start with what we had on the [previous page](@previous)

import SpriteKit
import PlaygroundSupport

let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)

var scene = SKScene(size: frame.size)

// moving entity

let nyanCat = SKSpriteNode(imageNamed: "Gaben")

nyanCat.position = CGPoint(x: frame.size.width / 2.0, y: 175)
nyanCat.setScale(0.18)
let actionFadeIn = SKAction.fadeIn(withDuration: 0.15)
let actionMoveUp = SKAction.moveBy(x: 0, y: 8, duration: 0.15)
let actionWait = SKAction.wait(forDuration: 0.75 )
let actionMoveDown = SKAction.moveBy(x: 0, y: -8, duration: 0.15)
let actionSequence = SKAction.sequence([actionMoveUp, actionWait, actionMoveDown])
let actionRepeat = SKAction.repeatForever(actionSequence)
nyanCat.run(actionRepeat)
nyanCat.zPosition = 10  // Ensure sprite is above background
scene.addChild(nyanCat) // Add to the scene

// Gifts

let Gifts = SKSpriteNode(imageNamed: "Gifts")
Gifts.setScale(0.97)
Gifts.position = CGPoint(x:160,y:100)

Gifts.zPosition = 10
scene.addChild(Gifts)

//Print Happy

let Happy = SKLabelNode(text: "Happy")
Happy.fontSize = 17
Happy.color = SKColor(red: CGFloat(100), green: CGFloat(0.0), blue: CGFloat(0.0), alpha: CGFloat(10.0))
Happy.colorBlendFactor = 1
Happy.fontName = "Helvetica-Bold"
Happy.position = CGPoint(x: 66, y: 205)

scene.addChild(Happy)

//Print Holidays

let Holidays = SKLabelNode(text: "Holidays")
Holidays.fontSize = 17
Holidays.color = SKColor(red: CGFloat(1.0), green: CGFloat(0.0), blue: CGFloat(0.0), alpha: CGFloat(1.0))
Holidays.colorBlendFactor = 1
Holidays.fontName = "Helvetica-Bold"

Holidays.position = CGPoint(x: 250, y: 205)

scene.addChild(Holidays)

// Falling snow

let emitter = SKEmitterNode()
emitter.particleLifetime = 40
emitter.particleBlendMode = SKBlendMode.alpha
emitter.particleBirthRate = 9
emitter.particleSize = CGSize(width: 1.5,height: CGFloat(arc4random_uniform(4)+6))
emitter.particleColor = SKColor(red: 1, green: 50, blue: 255, alpha: 1)
emitter.position = CGPoint(x:150,y:midPoint.y*3)
emitter.particleSpeed = 70
emitter.particleSpeedRange = 20
emitter.particlePositionRange = CGVector(dx: frame.size.width, dy: frame.size.height)
emitter.emissionAngle = 3*CGFloat.pi/2
emitter.advanceSimulationTime(40)
emitter.particleAlpha = 0.5
emitter.particleAlphaRange = 0.5
scene.addChild(emitter)
// our lord

let Jesus = SKSpriteNode(imageNamed: "JesusSnipes")
Jesus.position = CGPoint(x:frame.size.width / 2.0 ,y: 100)
Jesus.setScale(1.1)
let actionMoveUp2 = SKAction.moveBy(x: 0, y: 2, duration: 0.15)
let actionWait2 = SKAction.wait(forDuration: 0.75 )
let actionMoveDown2 = SKAction.moveBy(x: 0, y: -2, duration: 0.15)
let actionSequence2 = SKAction.sequence([actionMoveUp2, actionWait2, actionMoveDown2])
let actionRepeat2 = SKAction.repeatForever(actionSequence2)
Jesus.run(actionRepeat2)
scene.addChild(Jesus)

var yMultiplier : CGFloat = 0.5

//: Make Nyan Cat even happier!
let actionPlaySound = SKAction.playSoundFileNamed("GabeSong.mp3", waitForCompletion: false)
scene.run(actionPlaySound)

//: And show the scene in the liveView

let view = SKView(frame: frame)
view.presentScene(scene)
PlaygroundPage.current.liveView = view

//: OK I'm done.

