package TestBeans;

public class SKU {
	private String SKUID; // 保存商品ID
	private String SKUName; // 保存商品名称
	private float unitPrice; // 保存商品单价

	public SKU(String SKUID, String SKUName, float unitPrice) {
		this.SKUID = SKUID;
		this.SKUName = SKUName;
		this.unitPrice = unitPrice;
	}

	public String getSKUID() {
		return SKUID;
	}

	public void setSKUID(String sKUID) {
		SKUID = sKUID;
	}
	public String getSKUName() {
		return SKUName;
	}

	public void setSKUName(String sKUName) {
		SKUName = sKUName;
	}

	public float getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}
}
