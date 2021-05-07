"use strict";
const slugify = require("slugify");
const quizzes = require("../../seeds/quizzes.json");
/**
 * An asynchronous bootstrap function that runs before
 * your application gets started.
 *
 * This gives you an opportunity to set up your data model,
 * run jobs, or perform some special logic.
 *
 * See more details here: https://strapi.io/documentation/developer-docs/latest/setup-deployment-guides/configurations.html#bootstrap
 */

module.exports = async () => {
  for (const quiz of quizzes) {
    const title = quiz.title.match(/^(.*)\s\(/);
    if (title) {
      const slug = slugify(title[1], { lower: true });
      const old_quiz = await strapi.services.quiz.findOne({ slug });
      if (!old_quiz) {
        await strapi.services.quiz.create({ ...quiz, slug });
      }
    }
  }
};
