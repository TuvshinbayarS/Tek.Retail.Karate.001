package retailTest.api;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import com.ibm.icu.text.SimpleDateFormat;
import net.datafaker.Faker;

public class DataGenerator {

public static String getFullName() {
		
		Faker faker =  new Faker();
		String fullName =faker.name().firstName() + " " +faker.name().lastName();
		return fullName;
	}
	
	public static String getPhoneNumber() {
		Faker faker= new Faker();
		return faker.phoneNumber().cellPhone();
	}
	
	public static String getAddress() {
		Faker faker= new Faker();
		return faker.address().streetAddress();
	}
	
	public static String getApt() {
		Faker faker= new Faker();
		return faker.address().streetAddressNumber();
	}
	
	public static String getCity() {
		Faker faker= new Faker();
		return faker.address().city();
	}
	
	public static String getState() {
		Faker faker= new Faker();
		return faker.address().state();
	}
	
	public static String getZipCode() {
		Faker faker= new Faker();
		return faker.address().zipCode();
	}
	
	public static String getCardNumber() {
		Faker faker= new Faker();
		return faker.number().digits(16);
	}
	
	public static int getExpirationMonth() {
		Faker faker= new Faker();
		return faker.number().numberBetween(1,12);
	}
	public static int getExpirationYear() {
		Faker faker= new Faker();
		return faker.number().numberBetween(2023, 2123);
	}
	
	public static String getCVC() {
		Faker faker= new Faker();
		return faker.number().digits(3);
	}
	
}
