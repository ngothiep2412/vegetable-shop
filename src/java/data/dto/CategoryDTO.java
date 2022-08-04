package data.dto;

/**
 *
 * @author Thiep Ngo
 */
public class CategoryDTO {

    private int categoryID;
    private String categoryName;

    public CategoryDTO() {
        this.categoryID = 0;
        this.categoryName = "";
    }

    public CategoryDTO(int categoryID, String categoryName) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

}
