class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "what rhymes with apple______?",
    "options": ['grapple', 'orange', 'car', 'yellow'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "what rhymes with car______?",
    "options": ['grapple', 'orange', 'far', 'yellow'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "what rhymes with dog______?",
    "options": ['grapple', 'orange', 'far', 'fog'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "what rhymes with hair______?",
    "options": ['grapple', 'orange', 'far', 'pair'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "what is the name of the king of the jungle?",
    "options": ['tiger', 'lion', 'monkey', 'cow'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "what is the largest mammal?",
    "options": ['elephant', 'rhino', 'squirrel', 'blue whale'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "what is fastest animal?",
    "options": ['monkey', 'cheetah', 'turtle', 'rabbit'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "when is noon time?",
    "options": ['11:00', '9:00', '12:00', '23:00'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "when is midnight?",
    "options": ['14:00', '11:50', '23:00', '24:00'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "how many minutes are in one hour",
    "options": ['20', '60', '80', '128'],
    "answer_index": 1,
  },
];
