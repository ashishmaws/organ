package organofunction;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.Test;

public class ContactUs {
	@Test
	public void test() {

	WebDriver driver = new ChromeDriver();
	driver.get("http://54.206.104.208:8080/dev/Contactus");
	driver.findElement(By.cssSelector("input[type='text'][placeholder='Username']")).sendKeys("Ashish");
	driver.findElement(By.cssSelector("input[type='text'][placeholder='Phone Number']")).sendKeys("1234567890");
	driver.findElement(By.cssSelector("input[type='text'][placeholder='Email']")).sendKeys("Ashish@gmail.com");
	driver.quit();
	}
	
}
