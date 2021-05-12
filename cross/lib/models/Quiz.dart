class Option {
  final int id;
  final String content;
  final bool correct;

  Option({this.id, this.content, this.correct});

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      id: json['id'],
      content: json['content'],
      correct: json['correct'],
    );
  }
}

class Question {
  final int id;
  final String content;
  final int point;
  final List<Option> options;

  Question({this.id, this.content, this.point, this.options});

  factory Question.fromJson(Map<String, dynamic> json) {
    var list = json['options'] as List;
    List<Option> options =
        list.map((option) => Option.fromJson(option)).toList();
    return Question(
      id: json['id'],
      content: json['content'],
      point: json['point'],
      options: options,
    );
  }
}

class Quiz {
  final int id;
  final String title;
  final String slug;
  final int minScore;
  final List<Question> questions;

  Quiz({this.id, this.title, this.slug, this.minScore, this.questions});

  factory Quiz.fromJson(Map<String, dynamic> json) {
    var list = json['questions'] as List;
    List<Question> questions =
        list.map((question) => Question.fromJson(question)).toList();
    return Quiz(
      id: json['id'],
      title: json['title'],
      slug: json['slug'],
      minScore: json['min_score'],
      questions: questions,
    );
  }
}
