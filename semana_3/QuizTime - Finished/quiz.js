
var user = {};
var responses = [];

function question1() {
	var name = prompt('Whats your name?');
	user.name= name;
}

function question2() {
	var quest2 = prompt('¿Is 2+2 equals to 4?(Yes or No)');

	 if (quest2.toLowerCase() === "yes") {
			quest2 = true;
			responses.push(quest2);
		}
		else {
			quest2 = false;
			responses.push(quest2);
		}

}

function question3() {
  var quest3 = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?');
  quest3 = quest3.toLowerCase();
  switch (quest3) {

    	case "livescript":
    		quest3 = true;
    		responses.push(quest3);
    		
    	break;

    	default:
    		quest3 = false;
    		responses.push(quest3);
    	break;
  }
  	
}


function question4() {

	var quest4 = parseInt(prompt("Guess a number we will generate (between 1 to 10) and win 1000000000000$!! "));

	var random_index = Math.floor(Math.random()*10); //nº random de 0 a 9

	var array_numbers = [1,2,3,4,5,6,7,8,9,10]; //Array con los nº de 1 a 10
	var random_number = array_numbers[random_index];
	

		if (quest4 === random_number) {
			//alert("$ $ $ Congrats! You won! $ $ $\nYour number was:"+quest4+" Our number: "+random_number);
			quest4 = true;
			responses.push(quest4);
		}

		else {
			//alert("You failed!"+"\nYour number was: "+quest4+"\nOur number: "+random_number);
			quest4 = false;
			responses.push(quest4);
		}

		
}	

function question5() {
	var quest5 = prompt("Name one main protagonist of any Final Fantasy game (just the name):  ");

	quest5 = quest5.toLowerCase();

	var evaluate = false; //Boolean que evalua si se encuentra la palabra introducida en el array.
						 //de modo que si es =true, es que ha encontrado la palabra.
	var protagonist_names = ["firion","cecil","bartz","cloud","squall","zidane","yitan","tidus","vaan","lightning","noctis"];


	for (var i = 0 ; i < protagonist_names.length; i++) {

		if (quest5 === protagonist_names[i]) {	
			evaluate = true;

		}
	}	
		if (evaluate === true) {
			//alert("Well done! "+quest5+" is in!");
			quest5 = true;
			responses.push(quest5);
		}
		else {
			quest5 = false;
			responses.push(quest5);
		}
}

function evaluate(responsesArray) {
	var correct = 0;
	var incorrect = 0;

	for (var i = 0 ; i < responsesArray.length; i++) {
		if (responsesArray[i] === true) {
			correct +=1;
		}
		else {
			incorrect +=1;
		}
	}
	user.correct = correct;
	user.incorrect = incorrect;

	showResults();
}

function showResults() {
	console.log(user);
}

question1();
question2();
question3();
question4();
question5();

evaluate(responses);
