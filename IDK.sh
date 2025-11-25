#!/bin/bash

game_start() {
  clear
  echo "This game is the most random game I have ever seen"
  read -p "press [ENTER] to continue"

  clear
  echo "Now, you must enter a secret code by answering the following riddles"
  echo "NOTE: THE ANSWER(s) HAVE TO BE ALL-CAPS AND JUST USE THE FIRST LETTER OF THE WORLD GIVEN!"
  read -p "press [ENTER] to contiue"

  game_continue
}

game_continue() {
  clear #Answers: Keyboard, Shadow, Echo
  echo "Your first riddle is, I have keys but no locks. I have space but no room. You can enter, but you can’t go outside. What am I?" 
  read -p "Got that, press [ENTER] to continue!"

  echo "I follow you all day long, but when the sun goes down I’m gone. What am I?"
  read -p "I hope you're getting this, and keeping the first letters in your head!!! press [ENTER] to continue"

  echo "I speak without a mouth and hear without ears. I have nobody, but I come alive with wind."
  read -p "You're done for now boy! press [ENTER]"

  game_final
  }

game_final() {
  clear
  echo "OK, NOW, FOR THE MOMENT WE ALL HAVE BEEN WAITING FOR, FOR YOU TO TYPE THE ANSWERS YOU GOT FROM GOOGLE!"
  echo "Ok, so how this works is that I want you to go ahead and just type each answer (Capitalised 1st letter of each word) into the prompt"
  echo "This is a 3 letter answer, just so you know, you will have to restart if you fail!"
  read -n 3 answer
  if [ "$answer" = KSE ]; then
    clear
    game_win
  else
    clear
    echo "YOU GOT IT WRONG BOY!"
    read -p "press [ENTER] to continue"
    game_start
  fi
}

game_win() {
  clear
  echo "CONGRATS, you won, enter your password to continue"
  read -s password

  echo "sweet, notice how I made it where no one can see the password $password when you type it in, I'm so nice, am I right?"
  read -p "press [ENTER] to continue"

  exit 0
}
