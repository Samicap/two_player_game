# Player
    name
    points 3 lives (starts with 3/3 lives)

    -Method to Update Points
        Updates Players points

        if (question is false)
          subtracts 1 from current.player's points

# Question
        generates a question
            pick at random two numbers between 1 and 20
            answer is the sum of the two

          Takes a user input and compares to answer 
            returns boolean

# TakeTurn Method 
        []creates instance of a Question
        compares user answer to computer answer
            if (answer is true) 
                puts "Good job!"
              else
                puts "You SUck!"
            end


            updates players points => Calls summary method
# Score Keeper

# Summary Method
        
        prints both players points
  
# Game - SuperClass

    Has a while loop that contains all the methods to run the game
        while game.not.over (is true) {

          if turn is odd: Game.currentPlayer = Player 1
            else
               Game.currentPlayer = Player 2
          calls TakeTurn
          calls Summary


          





        game is over when current player had 0/3 points




        }