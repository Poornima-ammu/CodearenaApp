package com.codearena.entity;
import java.time.LocalDateTime;
import jakarta.persistence.*;

@Entity
@Table(name="submissions")
public class Submission {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(length=10000)
	private String code;
	@ManyToOne
	@JoinColumn(name="user_id")
	private  User user;
	private String verdict;
	private LocalDateTime submittedAt;
	
	@ManyToOne
	@JoinColumn(name="problem_id")
	private Problem problem;

	public Submission() {
	}

	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user= user;
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
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return the verdict
	 */
	public String getVerdict() {
		return verdict;
	}

	/**
	 * @param verdict the verdict to set
	 */
	public void setVerdict(String verdict) {
		this.verdict = verdict;
	}

	/**
	 * @return the submittedAt
	 */
	public LocalDateTime getSubmittedAt() {
		return submittedAt;
	}

	/**
	 * @param submittedAt the submittedAt to set
	 */
	public void setSubmittedAt(LocalDateTime submittedAt) {
		this.submittedAt = submittedAt;
	}

	/**
	 * @return the problem
	 */
	public Problem getProblem() {
		return problem;
	}

	/**
	 * @param problem the problem to set
	 */
	public void setProblem(Problem problem) {
		this.problem = problem;
	}
	
	
	

}
