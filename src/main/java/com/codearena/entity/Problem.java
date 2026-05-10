package com.codearena.entity;
import jakarta.persistence.*;
@Entity
@Table(name="problems")
public class Problem {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String difficulty;
	@Column(length=5000)
	private String description;
	
	@Column(length=2000)
	private String sampleInput;
	
	@Column(length=2000)
	private String sampleOutput;
	
	@Column(length=2000)
	private String expectedOutput;

	public Problem() {
		super();
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the diffculty
	 */
	public String getDifficulty() {
		return difficulty;
	}

	/**
	 * @param diffculty the diffculty to set
	 */
	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the sampleInput
	 */
	public String getSampleInput() {
		return sampleInput;
	}

	/**
	 * @param sampleInput the sampleInput to set
	 */
	public void setSampleInput(String sampleInput) {
		this.sampleInput = sampleInput;
	}

	/**
	 * @return the sampleOutput
	 */
	public String getSampleOutput() {
		return sampleOutput;
	}

	/**
	 * @param sampleOutput the sampleOutput to set
	 */
	public void setSampleOutput(String sampleOutput) {
		this.sampleOutput = sampleOutput;
	}

	/**
	 * @return the expectedOutput
	 */
	public String getExpectedOutput() {
		return expectedOutput;
	}

	/**
	 * @param expectedOutput the expectedOutput to set
	 */
	public void setExpectedOutput(String expectedOutput) {
		this.expectedOutput = expectedOutput;
	}
	
	
	

}
