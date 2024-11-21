List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC
      .map((tempC) => double.parse(((tempC * 9 / 5) + 32).toStringAsFixed(2)))
      .toList();
}
