package com.estudo.dslearn.entities;

import com.estudo.dslearn.entities.enums.DeliverStatus;
import jakarta.persistence.*;

import java.time.Instant;
import java.util.Objects;

@Entity
@Table(name = "tb_deliver")
public class Deliver {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String uri;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant moment;
    private DeliverStatus status;
    private String feedback;
    private Integer correctCount;

    @ManyToOne
    @JoinColumns({
            @JoinColumn(name = "offer_id"),
            @JoinColumn(name = "user_id")
    })
    private Enrollment enrollment;

    @ManyToOne
    @JoinColumn(name = "lesson_id")
    private Lesson lesson;

    public Long getId() {
        return id;
    }

    public String getUri() {
        return uri;
    }

    public Instant getMoment() {
        return moment;
    }

    public DeliverStatus getStatus() {
        return status;
    }

    public String getFeedback() {
        return feedback;
    }

    public Integer getCorrectCount() {
        return correctCount;
    }

    public Enrollment getEnrollment() {
        return enrollment;
    }

    public Lesson getLesson() {
        return lesson;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    public void setMoment(Instant moment) {
        this.moment = moment;
    }

    public void setStatus(DeliverStatus status) {
        this.status = status;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public void setCorrectCount(Integer correctCount) {
        this.correctCount = correctCount;
    }

    public void setEnrollment(Enrollment enrollment) {
        this.enrollment = enrollment;
    }

    public void setLesson(Lesson lesson) {
        this.lesson = lesson;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        Deliver deliver = (Deliver) o;
        return Objects.equals(id, deliver.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
