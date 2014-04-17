package test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import dao.AdministratorDao;
import dao.LocationDao;
import dao.RecommendListDao;
import dao.RestaurantDao;
import dao.ReviewDao;
import dao.ViewHistoryDao;
import service.Service;
import myutil.*;
import entity.*;

public class Test {
	
	public static void main(String[] args) throws Exception{

		LocationDao dao = new LocationDao();
		Location loc = dao.findLocationByPk("2", "1");
		
		RestaurantDao rdao = new RestaurantDao();
		Restaurant rest = rdao.findRestaurantByBusinessId("rest1");
		
		System.out.println(rest.getId());
	}
}
