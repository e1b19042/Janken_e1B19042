class Game {
  String getJankenResult(String hand) {
    String cpuHand = this.desideCpuHand();

    if (hand.equals("Gu") && cpuHand.equals("Gu") 
      || hand.equals("tyoki") && cpuHand.equals("tyoki") 
      || hand.equals("Pa") && cpuHand.equals("Pa")) return "Draw";
    else if (hand.equals("Gu") && cpuHand.equals("tyoki")
      || hand.equals("tyoki") && cpuHand.equals("Pa")
      || hand.equals("Pa") && cpuHand.equals("Gu")) return "You Win!";
    else if (hand.equals("Gu") && cpuHand.equals("Pa")
      || hand.equals("tyoki") && cpuHand.equals("Gu")
      || hand.equals("Pa") && cpuHand.equals("tyoki")) return "CPU Win!";

    return null;
  }

  String desideCpuHand() {
    int cpuHandNum = (int)random(3);
    if (cpuHandNum == 0) return "Gu";
    else if (cpuHandNum == 1) return "tyoki";
    else return "Pa";
  }
}
