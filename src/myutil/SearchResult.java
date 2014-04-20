package myutil;

public class SearchResult {
	private Region region;
	private int total;
	private Business[] businessList;
	
	public Region getRegion() {
		return region;
	}
	public void setRegion(Region region) {
		this.region = region;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public Business[] getBusinessList() {
		return businessList;
	}
	public void setBusinessList(Business[] businessList) {
		this.businessList = businessList;
	}

}
