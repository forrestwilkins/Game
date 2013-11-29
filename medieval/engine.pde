class Engine {
  String gameState;
  
  void display() {
    gui.display();
    displayGame();
  }
  
  void displayGame() {
    if (gameState == "game") {
      env.display();
      user.display();
    }
  }
  
  void checkButtons() {
    gui.checkClassChoice();
  }
  
  void bootStrap() {
    gameState = "classChoice";
    env = new Environment();
    user = new User();
    gui = new Gui();
  }
}