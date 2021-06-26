class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "what geometric shape has 4 sides______?",
    "options": ['square', 'circle', 'triangle', 'pentagon'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "what geometric shape has 3 sides______?",
    "options": ['square', 'circle', 'triangle', 'pentagon'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "what geometric shape has 5 sides______?",
    "options": ['square', 'circle', 'triangle', 'pentagon'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "what geometric shape has 8 sides______?",
    "options": ['square', 'circle', 'pentagon', 'octagon'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "what geometric shape has 7 sides______?",
    "options": ['square', 'heptagon', 'triangle', 'pentagon'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "How many bones are in the human body______?",
    "options": ['20', '402', '300', '206'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "The largest bone in the human body is_______?",
    "options": ['skull', 'femur', 'spine', 'tibia'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "The smallest bone in the human body is_______?",
    "options": ['skull', 'femur', 'stapes', 'tibia'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "How many bones are in the human spine_______?",
    "options": ['36', '11', '22', '33'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "Are bone alive?",
    "options": ['Yes', 'No', 'maybe', 'I don"t know'],
    "answer_index": 1,
  },
];
