void main() {
  Haaircareplan plan =
      VCdecorator(Irondecorator(Zinkdecorator(Simple(9), 19), 2), 5);
  print(plan.showPlan());
}

abstract class Haaircareplan {
  String showPlan();
}

class Basedecoratore implements Haaircareplan {
  Haaircareplan special;

  Basedecoratore(this.special);

  @override
  String showPlan() {
    return special.showPlan();
  }
}

class Simple implements Haaircareplan {
  int value;

  Simple(this.value);

  @override
  String showPlan() {
    return "Drink water with value $value";
  }
}

class Zinkdecorator extends Basedecoratore {
  int value;

  Zinkdecorator(Haaircareplan special, this.value) : super(special);

  @override
  String showPlan() {
    return "${super.showPlan()} + take $value gm from zink";
  }
}

class Irondecorator extends Basedecoratore {
  int value;

  Irondecorator(Haaircareplan special, this.value) : super(special);

  @override
  String showPlan() {
    return "${super.showPlan()} + take $value gm from iron";
  }
}

class VCdecorator extends Basedecoratore {
  int value;

  VCdecorator(Haaircareplan special, this.value) : super(special);

  @override
  String showPlan() {
    return "${super.showPlan()} + take $value gm from VC";
  }
}
