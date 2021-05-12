class QuizQuery {
  static String getAll() {
    return """
      query Quizzes {
        quizzes {
          id
          title
          slug
          min_score
          questions {
            id
            content
            point
            options {
              id
              content
              correct
            }
          }
        }
      }
    """;
  }

  static String getOne(int id) {
    return """
      query Quizzes {
        quiz(id: $id){
          id
          title
          slug
          min_score
          questions {
            id
            content
            point
            options {
              id
              content
              correct
            }
          }
        }
      }
    """;
  }
}