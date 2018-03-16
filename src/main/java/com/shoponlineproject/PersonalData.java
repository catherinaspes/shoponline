package com.shoponlineproject;

public class PersonalData {


    private String firstname;
    private String lastname;
    private String number;
    private String email;

    public PersonalData(String firstname, String lastname, String number, String email) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.number = number;
        this.email = email;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
