/**
 * write description
 *
 * @author Aikam Singh
 * @version 2/13/23
 */

/**
 * The Ball class models a rouund, 2-d representation of a
 * ball with a radius, an x,y-location, and vX,vY velocities.
 */
public class Ball
{
    // instance variables
    private float radius;
    private float x;
    private float y;
    private float vX;
    private float vY;


    /**
     * Constructs a ball object
     * @param radius a float value
     * @param x the initial x-position on the screen (float)
     * @param y the initial y-position on the screen (float)
     * @param vX the initial velocity in the x-direction (float)
     * @param vY the initial velocity in the y-direction (float)
     */
    public Ball(float radius, float x, float y, float vX, float vY){
        this.radius = radius;
        this.x = x;
        this.y = y;
        this.vX = vX;
        this.vY = vY;
    }
    /*
     * Getters and setters for all instance variables
     */
    public float getX(){
        return x;
    }
    public float getY(){
        return y;
    }
    public float getVx(){
        return vX;
    }
    public float getVy(){
        return vY;
    }
    public float getRadius(){
        return radius;
    }
    public void setX(float x){
        this.x = x;
    }
    public void setY(float y){
        this.y = y;
    }
    public void setVx(float Vx){
        this.vX = Vx;
    }
    public void setVy(float Vy){
        this.vY = Vy;
    }
    public void setRadius(float radius){
        this.radius = radius;
    }


    /**
     * The move method calculates new x- and y-positions based
     * on the current positions, the velocity in each direction,
     * and an amount of time t that has passed (standard physics
     * calculations).
     * @param t a float that indicates an amount of time
     */
    public void move(float t)
    {
        x = x + vX * t;
        y = y + vY * t;
    }

    /**
     * Overrides the toString method to produce more useful information,
     * suitable for println in the console.
     * @return a string representation of the state of the ball object
     */
    public String toString()
    {
        return "Ball[x=" + x + ",y=" + y + ",vX=" + vX + ",vY=" + vY + "]";
    }

    /**
     * The display method calls Processing's ellipse() function to
     * draw the ball at its current position in the graphical window.
     * Note that the ellipse takes x- and y-diameters as parameters,
     * so doubling the radius is required to draw the ball the correct
     * size.
     */
    public void display()
    {
        ellipse(x, y, 2 * radius, 2 * radius);
    }

}
