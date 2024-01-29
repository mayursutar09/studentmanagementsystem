package com.example.demo.Model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;

@Entity
public class AddResult {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int sub1;
	private int sub2;
	private int sub3;
	private int sub4;
	private int sub5;
	private double percentage;
	private String Remark;
	private String result;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "student_data_id", referencedColumnName = "id")
	private StudentData studentData;

	public AddResult() {
		// TODO Auto-generated constructor stub
	}

	public AddResult(int id, int sub1, int sub2, int sub3, int sub4, int sub5, double percentage, String remark,
			String result, StudentData studentData) {
		super();
		this.id = id;
		this.sub1 = sub1;
		this.sub2 = sub2;
		this.sub3 = sub3;
		this.sub4 = sub4;
		this.sub5 = sub5;
		this.percentage = percentage;
		Remark = remark;
		this.result = result;
		this.studentData = studentData;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSub1() {
		return sub1;
	}

	public void setSub1(int sub1) {
		this.sub1 = sub1;
	}

	public int getSub2() {
		return sub2;
	}

	public void setSub2(int sub2) {
		this.sub2 = sub2;
	}

	public int getSub3() {
		return sub3;
	}

	public void setSub3(int sub3) {
		this.sub3 = sub3;
	}

	public int getSub4() {
		return sub4;
	}

	public void setSub4(int sub4) {
		this.sub4 = sub4;
	}

	public int getSub5() {
		return sub5;
	}

	public void setSub5(int sub5) {
		this.sub5 = sub5;
	}

	public double getPercentage() {
		return percentage;
	}

	public void setPercentage(double percentage) {
		this.percentage = percentage;
	}

	public String getRemark() {
		return Remark;
	}

	public void setRemark(String remark) {
		Remark = remark;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public StudentData getStudentData() {
		return studentData;
	}

	public void setStudentData(StudentData studentData) {
		this.studentData = studentData;
	}

	@Override
	public String toString() {
		return "AddResult [id=" + id + ", sub1=" + sub1 + ", sub2=" + sub2 + ", sub3=" + sub3 + ", sub4=" + sub4
				+ ", sub5=" + sub5 + ", percentage=" + percentage + ", Remark=" + Remark + ", result=" + result
				+ ", studentData=" + studentData + "]";
	}
}
