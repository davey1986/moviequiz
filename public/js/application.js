/******************* /
    Get, set and check the buttons values.

    Code by David Vincent

/****************** */

var Quotes = {

    answers:[],
    wrongAnswer:[],
    correctAnswer:'',
    correct:'yes',
    wrong:'no',
    buttons: ["A1", "B1", "C1", "D1"],

    // Display function
    writeTo : function (location, content) {
        //alert('location ' + location);
        if (location != "" && content != ""){
            document.getElementById(location).innerHTML = content;
        }

    },

        // Animations functions
    Animation : function (id,option){

        /*
        *
        * Correct add Flash
        * Wrong add shake
        *
        */

        $('#' + id).addClass('animated ' + option);

    },

    // Correct function
    correct : function(answer){

        // Check the answer and highlght block.
        if (answer.toLowerCase() === Quotes.correctAnswer.toLowerCase()) {
            this.Animation(id,this.correctAnswer);
            $('#'+ id).addClass(this.correct);
        }else{
            this.Animation(id,this.wrongAnswer);
            $('#' + id).addClass(this.wrong);
        }
    },

    // Randomizse and assign
    create : function () {
        // Sort the array to be different every time.
        Quotes.answers.sort(function(a, b){return 0.5 - Math.random()});
        // Loop through the button options and then assign the options
        for (var i = 0; i < Quotes.buttons.length; i++) {
            this.writeTo(Quotes.buttons[i],Quotes.answers[i]);

        }
    },


    // Assign the correct answer
    getAnswer : function () {
        Quotes.correctAnswer = $('#correct').text();
        Quotes.answers.push($('#correct').text());
    },

    // Assign the wrong answers
    getWrongAnswer : function () {
        $(".wrong").each(function(){
            Quotes.answers.push($(this).text());
        });
    }


    // Check answer function

    // Update score function

};

// Assign custom values here if you want to.
// Quotes.wrongAni = 'flash';
// Quotes.correctAni = 'flip'; /*shake*/
// Quotes.correctClass = 'yes';
// Quotes.wrongClass = 'no';
// Quotes.buttons = ["A1", "B1", "C1", "D1"];
// Quotes.getAnswer();
// Quotes.getWrongAnswer();
//
// Quotes.create();
//
// $('.custom-btn').on('click', function(){
//     alert($(this).childNodes[0].nodeValue);
//     Quotes.correct($(this).text());
// });
