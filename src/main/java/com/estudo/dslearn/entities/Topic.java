package com.estudo.dslearn.entities;

import jakarta.persistence.*;

import java.time.Instant;
import java.util.*;

@Entity
@Table(name = "tb_topic")
public class Topic {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;

    @Column(columnDefinition = "TEXT")
    private String body;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant instant;

    @ManyToOne
    @JoinColumn(name = "lesson_id")
    private Lesson lesson;

    @ManyToOne
    @JoinColumn(name = "author_id")
    private User author;

    @ManyToOne
    @JoinColumn(name = "offer_id")
    private Offer offer;

    @ManyToMany
    @JoinTable(name = "tb_topic_likes",
            joinColumns = @JoinColumn(name = "topic_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id"))
    private Set<User> likes = new HashSet<>();

    @OneToMany(mappedBy = "topic")
    private List<Reply> replies = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "replay_id")
    private Reply answer;

    public Topic(){

    }

    public Topic(Long id, String title, String body, Instant instant, Lesson lesson, User author, Offer offer, Reply answer) {
        this.id = id;
        this.title = title;
        this.body = body;
        this.instant = instant;
        this.lesson = lesson;
        this.author = author;
        this.offer = offer;
        this.answer = answer;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getBody() {
        return body;
    }

    public Instant getInstant() {
        return instant;
    }

    public Lesson getLesson() {
        return lesson;
    }

    public User getAuthor() {
        return author;
    }

    public Offer getOffer() {
        return offer;
    }

    public Set<User> getLikes() {
        return likes;
    }

    public List<Reply> getReplies() {
        return replies;
    }

    public Reply getAnswer() {
        return answer;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public void setInstant(Instant instant) {
        this.instant = instant;
    }

    public void setLesson(Lesson lesson) {
        this.lesson = lesson;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    public void setAnswer(Reply answer) {
        this.answer = answer;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        Topic topic = (Topic) o;
        return Objects.equals(id, topic.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
