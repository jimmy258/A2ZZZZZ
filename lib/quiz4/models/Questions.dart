class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "which one is an animal______?",
    "options": ['rabbit', 'bottle', 'table', 'radio'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "which one is an animal______?",
    "options": ['car', 'bottle', 'dog', 'radio'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "which one is an animal______?",
    "options": ['car', 'bottle', 'plane', 'elephant'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "which one is an animal______?",
    "options": ['bike', 'chair', 'glasses', 'tiger'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "which one is an animal______?",
    "options": ['bike', 'monkey', 'glasses', 'phone'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "which one is an object______?",
    "options": ['tiger', 'monkey', 'lion', 'phone'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "which one is an object______?",
    "options": ['tiger', 'car', 'lion', 'cat'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "which one is an object______?",
    "options": ['tiger', 'monkey', 'table', 'whale'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "which one is an object______?",
    "options": ['rabbit', 'monkey', 'dog', 'laptop'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "which one is an object______?",
    "options": ['rabbit', 'chair', 'lion', 'dog'],
    "answer_index": 1,
  },
];
