package test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import dao.AdministratorDao;
import dao.RecommendListDao;
import dao.RestaurantDao;
import dao.ReviewDao;
import dao.ViewHistoryDao;
import service.Service;
import myutil.*;
import entity.*;

public class Test {
	
	public static void main(String[] args) throws Exception{

		service.Service serv = new Service();
		
		serv.userRegister("anthony", "213", null, null, null, null, null);
		
		
		
	}
}
