class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "How many days do we have in a week?",
    "options": ['7', '6', '4', '8'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "How many days are there in a normal year?",
    "options": ['150', '390', '365', '250'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "How many colors are there in a rainbow?",
    "options": ['1', '5', '4', '7'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "Which animal is known as the ‘Ship of the Desert?’",
    "options": ['cat', 'dog', 'giraffe', 'camel'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "How many letters are there in the English alphabet?",
    "options": ['20', '26', '19', '29'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "How many sides are there in a triangle?",
    "options": ['1', '5', '8', '3'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "How many sides are there in a circle?",
    "options": ['5', '1', '8', '3'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "Which month of the year has the least number of days?",
    "options": ['Dec', 'Jan', 'Feb', 'Jun'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "How many primary colors are there?",
    "options": ['2', '8', '100', '3'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "Which is the tallest animal on the earth?",
    "options": ['rabbit', 'giraffe', 'lion', 'dog'],
    "answer_index": 1,
  },
];
