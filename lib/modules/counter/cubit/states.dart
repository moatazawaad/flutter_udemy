abstract class counterStates {}

class counterInitialState extends counterStates {}

class counterPlusState extends counterStates {
  late final int quantity;
  counterPlusState(this.quantity);
}

class counterMinusState extends counterStates {
  late final int quantity;
  counterMinusState(this.quantity);
}

class counterResetState extends counterStates {
  late final int quantity;
  counterResetState(this.quantity);
}
