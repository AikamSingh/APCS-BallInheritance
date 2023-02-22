/**
 * The Ball Inheritance project demonstrates object-oriented
 * programming and inheritance in the context of balls moving
 * around on a Processing graphical window.
 */

///////////////////////////////////////////////////////////
// Global variables for the main program declared here
///////////////////////////////////////////////////////////

Ball b;             // A single instance of the Ball class
float deltaT;               // a time-interval for moving the ball
boolean launched;           // true if the ball has been launched
PVector p0, p1;             // Two PVector points, used just at
                            // beginning to identify direction. Each
                            // point has instance variables x,y

///////////////////////////////////////////////////////////
// Global variables and the Processing window initialized
///////////////////////////////////////////////////////////

void setup()
{
    size(900, 700);       // the size of the graphical window
    background(255);      // background color is white
    b = new Ball(30, width/2, height/2, 0, 0);   
    deltaT = 0.3;         // An arbitrary time period
    launched = false;     // flag turns true when ball is launched
}

///////////////////////////////////////////////////////////
// Additional functions to handle interactions with mouse
// (used for launching the ball)
///////////////////////////////////////////////////////////

/**
* Processing function to identify when mouse is pressed.
* Here, first click is captured for "drawing back the bowstring"
*/
void mousePressed()
{
    p0 = new PVector(mouseX, mouseY);
}

/**
* Processing function to identify when "bowstring is released,"
* launching the ball.
*/
void mouseReleased()
{
    p1 = new PVector(mouseX, mouseY);
}

////////////////////////////////////////////////////////////////////////
////////////////////////  Main draw() loop  ////////////////////////////
////////////////////////////////////////////////////////////////////////

void draw()
{
    background(255);             // Clear the screen each time
    if (launched)                 
    {
        b.display();               
        println(b);                // displays ball state in console
        b.move(deltaT);            // changes ball state
    }
    else                         // ball hasn't been launched yet
    {
        // We'll click-drag a line, where the direction of the line
        // indicates the direction of the launch, and the magnitude
        // represents the intial velocity of the launch
        if (p0 != null)    // If we've clicked to start bowstring pull
        {
            if (p1 == null)  // If we haven't released the mouse...
            {
                line(p0.x, p0.y, mouseX, mouseY);   // draw to the mouse location
                                                    // (so we can aim)
            }
            else                                  // We've released the mouse!
            {
                b.setVx( (p0.x - p1.x)/10 );        // Set the ball's initial velocity
                b.setVy( (p0.y - p1.y)/10 );        // in x and y directions as a function
                launched = true;                    // of how far the bowstring was pulled
                                                    // back.
            }
        }  
    }
}
