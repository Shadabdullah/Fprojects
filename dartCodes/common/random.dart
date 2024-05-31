import 'dart:math';

void main() {
  List<int> questionList = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16
  ];
  prepareQuestions(questionList);
}

void prepareQuestions(List<int> questionList) {
  questionList.shuffle(Random());
  print('Printing suffeled Questions List $questionList');
  for (var i = 0; i < questionList.length; i++) {
    final result = getRandomIncludingCurrentIndex(i, questionList.length);
    print('$i -- : This is Final List of random questions : $result');
  }
}

List<int> getRandomIncludingCurrentIndex(
    int currentIndex, int numberOfItemsInList) {
  List<int> randomPositions = [];

  Random random = Random();
  Set<int> uniqueIndices = {currentIndex};

  while (uniqueIndices.length < 4) {
    int randomIndex = random.nextInt(numberOfItemsInList);
    uniqueIndices.add(randomIndex);
  }

  print('printing set of uniqueIndices $uniqueIndices');

  randomPositions.addAll(uniqueIndices);
  randomPositions.shuffle(random);
  return randomPositions;
}
