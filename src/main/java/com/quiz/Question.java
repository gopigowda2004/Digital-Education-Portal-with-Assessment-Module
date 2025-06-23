package com.quiz;

public class Question {
    private String question;
    private String[] options;
    private String correctAnswer;

    // Constructor
    public Question(String question, String[] options, String correctAnswer) {
        this.question = question;
        this.options = options;
        this.correctAnswer = correctAnswer;
    }

    // Getter methods
    public String getQuestion() {
        return question;
    }

    public String[] getOptions() {
        return options;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }

    // Method to check the answer
    public boolean isCorrectAnswer(String answer) {
        return this.correctAnswer.equals(answer);
    }
}
