package organofunction;

import static org.testng.Assert.assertEquals;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.Test;


public class OrganoHeading {
	@Test
	public void test() {

	WebDriver driver = new ChromeDriver();
	driver.get("http://54.206.104.208:8080/dev/pLogin");
	driver.findElement(By.cssSelector("input[type='text'][placeholder='Email Id']")).sendKeys("v.arjunyadav@gmail.com");
	assertEquals("Login-Organocart", driver.getTitle() );
	driver.quit();

	}

}
