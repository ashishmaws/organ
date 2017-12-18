package organofunction;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.Test;

public class FooterAbout {
	@Test
	public void test() {

	WebDriver driver = new ChromeDriver();
	driver.get("http://54.206.104.208:8080/dev");
	driver.findElement(By.id("social")).click();
	driver.quit();
}
}
