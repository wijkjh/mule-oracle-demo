package mylibrary;

public class Author implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getInitials() {
        return initials;
    }

    public void setInitials(String initials) {
        this.initials = initials;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastnamePrefix() {
        return lastnamePrefix;
    }

    public void setLastnamePrefix(String lastnamePrefix) {
        this.lastnamePrefix = lastnamePrefix;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    private String lastname;
    private String initials;
    private String firstname;
    private String lastnamePrefix;
    private String name;
    private String dateOfBirth;
    private String nationality;

}
