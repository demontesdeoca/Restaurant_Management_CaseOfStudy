package org.dmontes.salango.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the posts database table.
 * 
 */
@Entity
@Table(name="posts")
@NamedQuery(name="Posts.findAll", query="SELECT p FROM Posts p")
public class Posts implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)
	private long postid;

	@Lob
	private String content;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable=false)
	private Date createdAt;

	@Column(length=100)
	private String metaTitle;

	@Column(nullable=false)
	private byte published;

	@Temporal(TemporalType.TIMESTAMP)
	private Date publishedAt;

	@Column(nullable=false, length=100)
	private String slug;

	@Lob
	private String summary;

	@Column(nullable=false, length=75)
	private String title;

	@Temporal(TemporalType.TIMESTAMP)
	private Date updatedAt;

	//bi-directional many-to-one association to Clients
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="clientId", nullable=false)
	private Clients client;

	public Posts() {
	}

	public long getPostid() {
		return this.postid;
	}

	public void setPostid(long postid) {
		this.postid = postid;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getMetaTitle() {
		return this.metaTitle;
	}

	public void setMetaTitle(String metaTitle) {
		this.metaTitle = metaTitle;
	}

	public byte getPublished() {
		return this.published;
	}

	public void setPublished(byte published) {
		this.published = published;
	}

	public Date getPublishedAt() {
		return this.publishedAt;
	}

	public void setPublishedAt(Date publishedAt) {
		this.publishedAt = publishedAt;
	}

	public String getSlug() {
		return this.slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public String getSummary() {
		return this.summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public Clients getClient() {
		return this.client;
	}

	public void setClient(Clients client) {
		this.client = client;
	}

}