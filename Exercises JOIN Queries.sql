-- Activity 1
-- SELECT *
-- FROM Exercise
-- INNER JOIN ExerciseCategory ON Exercise.ExerciseCategoryId = ExerciseCategory.ExerciseCategoryId;

-- SELECT COUNT(Exercise.Name)
-- FROM Exercise
-- INNER JOIN ExerciseCategory ON Exercise.ExerciseCategoryId = ExerciseCategory.ExerciseCategoryId;

-- Exercise 2
-- SELECT 
-- 	ExerciseCategory.Name,
--     Exercise.Name
-- FROM Exercise
-- INNER JOIN ExerciseCategory ON Exercise.ExerciseCategoryId = ExerciseCategory.ExerciseCategoryId
-- WHERE ExerciseCategory.ParentCategoryId IS NULL;

-- SELECT COUNT(ExerciseCategory.Name)
-- FROM Exercise
-- INNER JOIN ExerciseCategory ON Exercise.ExerciseCategoryId = ExerciseCategory.ExerciseCategoryId
-- WHERE ExerciseCategory.ParentCategoryId IS NULL;

-- Exercise 3