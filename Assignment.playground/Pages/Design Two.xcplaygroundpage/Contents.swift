/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Two
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// The loops for the circles
for z in stride(from: 0, through: 100, by: 10) {
    for x in stride(from: 0, through: 400, by: 100) {
        for y in stride(from: 0, through: 400, by: 100) {
            canvas.drawShapesWithBorders = true
            // The color starting from 120
            canvas.borderColor = Color(hue: 120 + z, saturation: 100, brightness: 100, alpha: 100)
            // The Circles
            canvas.drawEllipse(centreX: z / 2 + x, centreY: z / 2 + y, width: z, height: z)
            canvas.drawEllipse(centreX: 100 - z / 2 + x, centreY: 100 - z / 2 + y, width: z, height: z)
            canvas.drawEllipse(centreX: 100 - z / 2 + x, centreY: z / 2 + y, width: z, height: z)
            canvas.drawEllipse(centreX: z / 2 + x, centreY: 100 - z / 2 + y, width: z, height: z)
        }
    }
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
