package entity;

public class Feedback {
    private int id;
    private String name;
    private String image;
    private String review;
    private float rate;

    public Feedback() {
    }

    public Feedback(int id, String name, String image, String review, float rate) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.review = review;
        this.rate = rate;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }

    @Override
    public String toString() {
        return "Feedback{" + "id=" + id + ", name=" + name + ", image=" + image + ", review=" + review + ", rate=" + rate + '}';
    }
}
