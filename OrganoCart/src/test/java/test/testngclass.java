package test;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.Test;

public class testngclass {
	@Test
	public void test() {
		System.setProperty("webdriver.chromedriver.driver","C://Users//Administrator//Desktop//eclipse-jee-juno-SR2-win32-x86_64//eclipse//chromedriver.exe");
		System.out.println("Welcome to Jenkins");
		WebDriver driver=new ChromeDriver();
		driver.get("http://54.252.162.4:8080/Organo");
		System.out.println(driver.getTitle());
		driver.quit();
	}
}