/*:
 # Mario
 
 Add your Mario solution (however far you got) to the space below.
 
 Then, commit your work.
 
 Finally, push your work to the remote origin for your repository on GitHub.com.
 
 We will go through this together.
 */

// Add your code below

func levelCost(heights: [Int], maxJump: Int) -> Int {
    
    var lastHeight = 0
    
    for number in heights {
        if lastHeight == 0 {
            lastHeight = number
        } else {
            var jumpHeight = lastHeight - number
            if jumpHeight <= 0 {
                jumpHeight = -jumpHeight
            }
        }
    }
    if energyUsed < lastHeight {
        
        if lastHeight == 0 {
            energyUsed += 1 }
        else {
            energyUsed += 2 * lastHeight
        }
    }
    return energyUsed
}
 
