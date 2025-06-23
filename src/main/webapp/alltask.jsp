<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Task</title>
<style type="text/css">
	body {
    margin: 0px;
    font-family: Arial, Helvetica, sans-serif;
    background: #F4F4F4;
}
.quiz-heading {
    background: #343A40;
    color: white;
    text-align: center; 
    padding: 20px;
}
.question-card {
    background: white;
    max-width: 600px;
    width: 90%;
    padding: 15px 20px;
    margin: 50px auto;
    border-radius: 10px;
    box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
}
input {
    margin: 10px 5px;
    cursor: pointer;
}
.submit {
    background: #FFC107;
    border: none;
    border-radius: 5px;
    padding: 9px 15px;
}
.next {
    background: #28A745;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 9px 15px;
}
li {
    margin: 20px;
}
.answer-label {
    background: #28A745;
    color: white;
    padding: 5px;
    font-size: 14px;
    text-align: center;
    width: fit-content;
    margin: 5px;
    border-radius: 5px;
}
.correct {
    background: #D4EDDA;
    color: #156340;
    margin: 5px 0px -15px 0px !important;
    border-radius: 5px;
    padding: 20px;
    font-size: 20px;
    font-weight: bold;
    width: fit-content;
}
.incorrect {
    background: #F8D7DA;
    color: #722845;
    margin: 5px 0px -15px 0px !important;
    border-radius: 5px;
    padding: 20px;
    font-size: 20px;
    font-weight: bold;
    width: fit-content;
}
.idle {
    margin: 0px !important;
    padding: 0px;
    visibility: hidden;
}
.app-body {
    max-width: 600px;
    width: 90%;
    padding: 10px 10px;
    margin: 0px auto;
}
.answer-key {
    margin: 0px 10px;
    display: none;
}
button {
    background: #17A2B8;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 9px 15px;
    margin: 0px 10px;
    display: none;
}
</style>

</head>
<body>
	<h1 class="quiz-heading">Quiz</h1>
        <div class="app-body">
            <h1 class="answer-key">Answer Key</h1>
            <div class="question-card">
                <h2 id='question'>Question</h2>
                <form>
                    <input type="radio" id="op1" name="op" value="0">
                    <label for="op1">op1</label><br>
                    <input type="radio" id="op2" name="op" value="1">
                    <label for="op2">op2</label><br>
                    <input type="radio" id="op3" name="op" value="2">
                    <label for="op3">op3</label><br>
                    <input type="radio" id="op4" name="op" value="3">
                    <label for="op4">op4</label><br>
                    <div id = "res" class="idle">Empty</div><br>
                    <input type="submit" name="submit" value = 'Submit' class = "submit"/>
                </form>
            </div>
            <button>Restart</button>
        </div>
        <script>let question;
        let form;
        let res;
        let qno;
        let score;

        const questions = [
            {
                title : 'What of the following is the default value of an instance variable?',
                options : [
                    'NULL', 
                    '0', 
                    'DEPENDS ON THE TYPE OF VARIABLE', 
                    'NOT ASSIGNED'
                ],
                answer : '2',
                score : 1
            },
            {
                title : 'What is the size of short variable ?',
                options : [
                    '8 bit',
                    '16 bit',
                    '32 bit',
                    '64 bit'
                ],
                answer : '1',
                score : 1
            },
            {
                title : 'What is the default value of byte variable?',
                options : [
                    '0',
                    '0.1',
                    'NULL',
                    'Not defined'
                ],
                answer : '0',
                score : 1
            },
            {
                title : ' Which of the following is true about String ?',
                options : [
                    'String is mutable',
                    'String is immutable',
                    'String is a data type',
                    'None of the above'
                    ],
                answer : '1',
                score : 1
            },
            {
                title : 'What is class variable ?',
                options : [
                	'class variables are static variables within a class but outside any method',

                'class variables are variables defined inside methods, constructors or blocks',

                	'class variables are variables within a class but outside any method',

                	'None of the above',

                	
                ],
                answer : '0',
                score : 1
            },
            {
                title : ' What kind of variables a class can consist of?',
                options : [
                	'class variables, instance variables',
                	'class variables, local variables, instance variables',

                	'class variables',

                	'class variables, local variables'

                ],
                answer : '1',
                score : 1
            },
            {
                title : 'What is function overloading?',
                options : [
                	'Methods with same name but different parameters',

                	'Methods with same name but different return types',

                	'Methods with same name, same parameter types but different parameter names',

                	'None of the above'

                
                ],
                answer : '0',
                score : 1
            },
            {
                title : ' What invokes a threads run() method ?',
                options : [
                'JVM invokes the threads run() method when the thread is initially executed',

                	 'Main application running the thread',

                	 'start() method of the thread class',

                	 'None of the above'

                	
                ],
                answer : '0',
                score : 1
            },
            {
                title : ' Which arithmetic operations can result in the throwing of an ArithmeticException?',
                options : [
                	'- / , %',

                	',* , +',

                	' ! , -',

                	'>>, <<'

                
                ],
                answer : '0',
                score : 1
            },
            {
                title : ' Which of the following is Faster, StringBuilder or StringBuffer?',
                options : [
                	' StringBuilder',

                	'StringBuffer',

                	'Both of the above',

                	'none of the above'

                	
                ],
                answer : '0',
                score : 1
            }
        ];

        function restartScreen() {
            document.querySelector('.quiz-heading').innerHTML = `Score : ${score}`
            const card = document.querySelector('.question-card');
            card.innerHTML = "<ul>";
            questions.forEach((ques) => {
                const html = `
                <li>${ques.title} <div class="answer-label">${ques.options[ques.answer]}</div></li>
                `;
                card.innerHTML += html;
            });
            card.innerHTML += "</ul>";
            document.querySelector('.answer-key').style.display ='block';
            document.querySelector('button').style.display ='block';
        }

        function resetradio() {
            document.querySelectorAll('[type="radio"]').forEach((radio) => {
                radio.removeAttribute("disabled");
            });
            res.setAttribute("class","idle");
            res.innerHTML = "Empty";
        }

        function evaluate() {
            if(form.op.value == questions[qno].answer) {
                res.setAttribute("class","correct");
                res.innerHTML = "Correct";
                score += questions[qno].score;

            } 
            else {
                res.setAttribute("class","incorrect");
                res.innerHTML = "Incorrect";
            }
            document.querySelectorAll('[type="radio"]').forEach((radio) => {
                radio.setAttribute("disabled","");
            })
        }

        function getNextQuestion() {
            qno++;
            ques = questions[qno];
            question.innerHTML = ques.title;
            const labels = document.querySelectorAll('label');
            labels.forEach((label, idx) => {
                label.innerHTML = ques.options[idx];
            }); 
        }

        function handleSubmit(e) {
            e.preventDefault();
            if(!form.op.value) {
                alert('Please select an option');
            }
            else if(form.submit.classList.contains('submit')) {
                evaluate();
                form.submit.classList.remove('submit');
                form.submit.value = "Next"
                form.submit.classList.add('next');
            }
            else if(qno < questions.length - 1 && form.submit.classList.contains('next')) {
                getNextQuestion();
                resetradio();
                form.submit.classList.remove('next');
                form.submit.value = "Submit"
                form.submit.classList.add('submit');
                form.reset();
            }
            else if(form.submit.classList.contains('next')) {
                restartScreen();
                form.submit.classList.remove('next');
                form.submit.value = "Submit"
                form.submit.classList.add('submit');
                form.reset();
            }
        }
        function init() {
            document.body.innerHTML = `
                <h1 class="quiz-heading">Quiz</h1>
                <div class="app-body">
                    <h1 class="answer-key">Answer Key</h1>
                    <div class="question-card">
                        <h2 id='question'>Question</h2>
                        <form>
                            <input type="radio" id="op1" name="op" value="0">
                            <label for="op1">op1</label><br>
                            <input type="radio" id="op2" name="op" value="1">
                            <label for="op2">op2</label><br>
                            <input type="radio" id="op3" name="op" value="2">
                            <label for="op3">op3</label><br>
                            <input type="radio" id="op4" name="op" value="3">
                            <label for="op4">op4</label><br>
                            <div id = "res" class="idle">Empty</div><br>
                            <input type="submit" name="submit" value = 'Submit' class = "submit"/>
                        </form>
                    </div>
                    <button>Restart</button>
                </div>
            `;
           question = document.querySelector('#question');
           form = document.querySelector('form');
           res = document.querySelector('#res');
           qno = -1;
           score = 0;
           form.addEventListener('submit', handleSubmit);
           document.querySelector('button').addEventListener('click', init);
           getNextQuestion();
        }
        document.querySelector('button').addEventListener('click', init);
        init();</script>
    </body>
</html>