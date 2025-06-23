<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.quiz.Question" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Quiz</title>
    <style>
        /* (Add your CSS styles here, as per previous example) */
    </style>
</head>
<body>

    <div class="quiz-container">
        <h1>Java Programming Quiz</h1>
        <form action="javaquiz.jsp" method="POST">
            <% 
                List<Question> questions = new ArrayList<>();
                try (Connection conn = DBUtil.getConnection()) {
                    String query = "SELECT * FROM questions";
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery(query);

                    while (rs.next()) {
                        Question question = new Question(
                            rs.getInt("id"),
                            rs.getString("question_text"),
                            rs.getString("option_a"),
                            rs.getString("option_b"),
                            rs.getString("option_c"),
                            rs.getString("option_d"),
                            rs.getString("correct_answer")
                        );
                        questions.add(question);
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                // Check if form is submitted and calculate the score
                String resultMessage = null;
                if ("POST".equalsIgnoreCase(request.getMethod())) {
                    Map<String, String> correctAnswers = new HashMap<>();
                    int score = 0;

                    for (Question q : questions) {
                        String answer = request.getParameter("q" + q.getId());
                        if (answer != null && answer.equals(q.getCorrectAnswer())) {
                            score++;
                        }
                    }

                    int totalQuestions = questions.size();
                    resultMessage = "You scored " + score + " out of " + totalQuestions + ".";
                    if (score == totalQuestions) {
                        resultMessage += " Excellent work!";
                    } else if (score >= totalQuestions / 2) {
                        resultMessage += " Good job!";
                    } else {
                        resultMessage += " Better luck next time!";
                    }
                }
            %>

            <!-- Dynamic Questions -->
            <% for (Question q : questions) { %>
            <div class="question">
                <p><%= q.getQuestionText() %></p>
                <div class="answers">
                    <input type="radio" name="q<%= q.getId() %>" value="a" <% if (request.getParameter("q" + q.getId()) != null && request.getParameter("q" + q.getId()).equals("a")) out.print("checked"); %> >
                    <label for="q<%= q.getId() %>"> <%= q.getOptionA() %> </label>
                    <input type="radio" name="q<%= q.getId() %>" value="b" <% if (request.getParameter("q" + q.getId()) != null && request.getParameter("q" + q.getId()).equals("b")) out.print("checked"); %> >
                    <label for="q<%= q.getId() %>"> <%= q.getOptionB() %> </label>
                    <input type="radio" name="q<%= q.getId() %>" value="c" <% if (request.getParameter("q" + q.getId()) != null && request.getParameter("q" + q.getId()).equals("c")) out.print("checked"); %> >
                    <label for="q<%= q.getId() %>"> <%= q.getOptionC() %> </label>
                    <input type="radio" name="q<%= q.getId() %>" value="d" <% if (request.getParameter("q" + q.getId()) != null && request.getParameter("q" + q.getId()).equals("d")) out.print("checked"); %> >
                    <label for="q<%= q.getId() %>"> <%= q.getOptionD() %> </label>
                </div>
            </div>
            <% } %>

            <!-- Submit button -->
            <button type="submit">Submit Quiz</button>
        </form>

        <% if (resultMessage != null) { %>
            <div class="result">
                <%= resultMessage %>
            </div>
        <% } %>
    </div>

</body>
</html>
