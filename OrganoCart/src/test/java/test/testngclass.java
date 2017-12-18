package test;
import static org.testng.Assert.assertEquals;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.Test;

public class testngclass {
	@Test
	public void test() {
		System.out.println("Welcome to Jenkins");
		WebDriver driver=new ChromeDriver();
		driver.get("http://54.206.104.208:8080/dev");
		System.out.println(driver.getTitle());
		assertEquals("Home-O", driver.getTitle() );
		driver.quit();
}

}
