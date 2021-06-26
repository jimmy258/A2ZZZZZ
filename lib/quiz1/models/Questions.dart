class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "What comes before the letter Q ______?",
    "options": ['p', 'R', 'S', 'T'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "What comes before the letter T?",
    "options": ['R', 'S', 'U', 'Q'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "What comes before the letter R?",
    "options": ['T', 'U', 'V', 'Q'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "What comes after the letter M?",
    "options": ['F', 'W', 'V', 'N'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "what is the combination of red and blue?",
    "options": ['white', 'purple', 'green', 'yellow'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "what is the combination of red and green?",
    "options": ['white', 'black', 'green', 'yellow'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "what is the combination of blue and green?",
    "options": ['white', 'cyan', 'green', 'yellow'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "what is 8 + 10?",
    "options": ['300', '257', '18', '12'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "what is 350 - 10?",
    "options": ['300', '257', '345', '340'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "what is 7 * 4?",
    "options": ['38', '28', '18', '128'],
    "answer_index": 1,
  },
];
