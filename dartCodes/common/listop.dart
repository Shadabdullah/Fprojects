void main(List<String> args) {
  List<String> initialVocabList = [
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
    'shad',
  ];
  List<List<String>> vocabSets = [];
  int vocabCount = initialVocabList.length;
  int setSize = 25;
  int numberOfSets = (vocabCount / setSize).ceil();

  vocabSets = List.generate(numberOfSets, (index) => <String>[]);

  for (int i = 0; i < numberOfSets; i++) {
    int start = i * setSize;
    int end = (i + 1) * setSize;
    if (end > vocabCount) end = vocabCount;

    vocabSets[i] = initialVocabList.sublist(start, end).toList();
    print('length of each list ${vocabSets[i].length}');
  }

  print(vocabSets);
}
