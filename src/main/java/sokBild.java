
import javax.persistence.Column;
/**
 *
 * @author Sebastian
 */
public class sokBild {
    private byte[] image;  
 
    @Column(name = "image")
    public byte[] getImage() {
        return this.image;
    }
 
    private String base64Image;
     
    public String getBase64Image() {
        return base64Image;
    }
 
    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }
 
}

