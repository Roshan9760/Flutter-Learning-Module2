class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswerList() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    // print(shuffledList);
    // print(answers);

    return shuffledList;
  }
}
