
rand_int <- sample(1:100, size=1)
rand_int
print ("WELCOME TO GUESS ME!")
print("I'm thinking of a number between 1 and 100")
print("If your guess is more than 10 away from my number, I'll tell you you're COLD")
print("If your guess is within 10 of my number, I'll tell you you're WARM")
print("If your guess is farther than your most recent guess, I'll say you're getting COLDER")
print("If your guess is closer than your most recent guess, I'll say you're getting WARMER")
print("LET'S PLAY!")
guesses <- c(0)
guesses

while (TRUE) {
    guess <- as.integer(readline(prompt="Guess a number between 1 and 100 \n What is your guess? "))
        if (guess < 1 | guess >100) {
message('OUT OF BOUNDS. Please try again:')
      next 
    }  
    if (guess == rand_int){
   message(sprintf('CONGRATULATIONS, YOU GUESSED IT IN ONLY %s GUESSES', length(guesses)))
 break 
    } 
    
    guesses <- append(guesses, guess)
    
   if (guesses[length(guesses)-1]){
    
    if (abs(guesses[length(guesses)-1] - rand_int) < abs(guess-rand_int)){
      message ("COLDER!")
       
     }else{
      message ("WARMER!")
    
} }else {
       if (abs (guess-rand_int) > 10){
     message("COLD!")
} else {
     message("WARM!")

    }
    }  
    } 
