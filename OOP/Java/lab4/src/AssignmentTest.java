
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
/**
 * Testing class for Assignment Object.
 * @author Manvir
 * @version 09/10/17
 */
public class AssignmentTest
{
    /**
     * The name of the Assignment item.
     */
    private static final String NAME = "Unit Testing";
    
    /**
     * The month of the Assignment item.
     */
    private static final int DAY = 1;
    
    /**
     * The day of the Assignment item.
     */
    private static final int MONTH = 9;
    
    /**
     * The month of the Assignment item.
     */
    private static final int HOUR = 23;
    
    /**
     * The minute of the Assignment item.
     */
    private static final int MINUTE = 59;
    
    /**
     * The score of the Assignment item.
     */
    private static final double SCORE = 0.93;
    
    /**
     * The totalPoints of the Assignment item.
     */
    private static final double TOTALPOINTS = 0.99;
    
    /**
     * The totalWeight of the Assignment item.
     */
	private static final double TOTALWEIGHT = 0.30;
	
	/**
     * A double value
     */
	private static final double ACCURACY = 0.000001;
	
	/**
     * The object of the Assignment class.
     */
    private static Assignment item;
    
    /**
     * Set up object for testing.
     */
    @BeforeClass
    public static void assignmentTestSetup() 
    {
        item = new Assignment(NAME, MONTH, DAY, HOUR, MINUTE);
        item.setScore(SCORE);
        item.setTotalPoints(TOTALPOINTS);
        item.setTotalWeight(TOTALWEIGHT);
    }
    
    /**
     * Test the getter for name.
     */
    @Test 
    public void assignmentGetNameTest()
    {
        Assert.assertTrue("Get name of the Assignment item", NAME.equals(item.getName()));
    }
    
    /**
     * Test the getter for month.
     */
    @Test
    public void assignmentGetMonthTest()
    {
        Assert.assertEquals("Get month of the Assignment item", MONTH, item.getMonth());
    }
    
    /**
     * Test the getter for day.
     */
    @Test
    public void assignmentGetDayTest()
    {
        Assert.assertEquals("Get day of the Assignment item", DAY, item.getDay());
    }
    
    /**
     * Test the getter for hour.
     */
    @Test
    public void assignmentGetHourTest()
    {
        Assert.assertEquals("Get hour of the Assignment item", HOUR, item.getHour());
    }
    
    /**
     * Test the getter for minute.
     */
    @Test
    public void gradedItemGetMinuteTest()
    { 
        Assert.assertEquals("Get hour of the Assignment item", MINUTE, item.getMinute());
    }
    
    /**
     * Test the getter for score.
     */
    @Test
    public void assignmentGetScoreTest()
    {
        Assert.assertEquals("Get score of the Assignment item", SCORE, item.getScore(), ACCURACY);
    }
    
    /**
     * Test the getter for totalPoints.
     */
    @Test
    public void assignmentGetTotalPointsTest()
    {
        Assert.assertEquals("Get totalPoints of the Assignment item", TOTALPOINTS, item.getTotalPoints(), ACCURACY);
    } 
    
    /**
     * Test the getter for totalWeight.
     */
    @Test 
    public void assignmentGetTotalWeightTest()
    { 
        Assert.assertEquals("Get totalWeight of the Assignment item", TOTALWEIGHT, item.getTotalWeight(), ACCURACY);
    }
    
    /**
     * Test the setter for score.
     */
    @Test 
    public void assignmentSetGradeTest()
    {
        item.setScore(0.93);
        Assert.assertEquals("Set score of the Assignment item", 0.93, item.getScore(), ACCURACY);
        item.setScore(SCORE);
    }
    
    /**
     * Test the setter for totalPoints.
     */
    @Test
    public void assignmentSetTotalPointsTest()
    {
        item.setTotalPoints(0.99);
        Assert.assertEquals("Set totalPoints of the Assignment item", 0.99, item.getTotalPoints(), ACCURACY);
        item.setTotalPoints(TOTALPOINTS);
    }
    
    /**
     * Test the setter for totalWeight.
     */
    @Test
    public void assignmentSettotalWeightTest()
    {
        item.setTotalWeight(0.30);       
        Assert.assertEquals("Set totalWeight of the Assignment item", 0.30, item.getTotalWeight(), ACCURACY);
        item.setTotalWeight(TOTALWEIGHT); 
    }
    
    /**
     * Test the toString.
     */

    @Test
    public void assignmentToStringTest()
    {
        String expected = String.format(
                "%s (date: %02d-%02d at %02d:%02d): score = %.2f; totalPoints = %.2f; totalWeight = %.2f",
                NAME, MONTH, DAY, HOUR, MINUTE, SCORE, TOTALPOINTS, TOTALWEIGHT);
        
        Assert.assertTrue(expected.equals(item.toString()));
    }
}
