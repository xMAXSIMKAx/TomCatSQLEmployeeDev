package org.example.app.entity;


public class Employee {
    private Long id;
    private String name;
    private String position;
    private String phone;

    public Employee(String name, String position, String phone) {
        this.name = name;
        this.position = position;
        this.phone = phone;
    }

    public Employee(Long id, String name, String position, String phone) {
        this.id = id;
        this.name = name;
        this.position = position;
        this.phone = phone;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPosition() {
        return position;
    }

    public String getPhone() {
        return phone;
    }
}
