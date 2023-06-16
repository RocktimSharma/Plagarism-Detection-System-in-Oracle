# Plagarism-Detection-System-in-Oracle


# INTRODUCTION
  In today's digital era, where information is readily accessible and easily
copied, ensuring academic and intellectual integrity is of utmost importance.
Plagiarism means copying or stealing someone else works or ideas and
presenting them as one's work. In schools and colleges many times students
copy their homework or assignments from other students. It affects
the education quality of the student and reduces his performance. Here, the
proposed system provides a facility for the professors of the MCA
department of JEC to check if some students have copied their work
from other students. This will help to know the genuineness of the work
done by the students.


# OBJECTIVES
  ### The main objectives of this system are:
      ➢ Store the details of the students (such as department, semester, etc)
      ➢ Store the assignments submitted by the students.
      ➢ Check plagiarism for the work submitted by students.


# BENEFITS
### Some of the benifits of this system are:
  ➢ Promotes Academic Integrity.
  ➢ Saves Time and Effort.
  ➢ Enhances Credibility and Quality.
  ➢ Educates and Raises Awareness.
  ➢ Improves Learning and Evaluation.
  ➢ Prevents Unintentional Plagiarism.
  ➢ Deters Plagiarism.


# METHODOLOGY

## 1. Data Preparation:
    ➢ Store the assignment to be checked for plagiarism in a table, with each
      a document stored as a separate row.
    ➢ Split each assignment text into individual words or tokens and store them
      in a separate table.

## 2. Jaccard Similarity Calculation:
    ➢ Create a function in Oracle that calculates the Jaccard similarity between
      two sets of tokens.
    ➢ The Jaccard similarity between two sets A and B is calculated as the ratio
      of the intersection of A and B to the union of A and B.
    ➢ The formula for Jaccard similarity is: J(A, B) = |A ∩ B| / |A ∪ B|.
    ➢ You can use nested queries and aggregate functions in Oracle to calculate
      the intersection and union of the token sets.
      
## 3. Plagiarism Detection Query:
    ➢ Write a query to compare a given assignment with all other assignments
      in the table.
    ➢ Calculate the Jaccard similarity between the tokens of the given
      assignment and each other document.
    ➢ Order the results by the Jaccard similarity in descending order to identify
      the most similar assignment.

# CONCLUSION
  In summary, Plagiarism Detection Systems offer numerous benefits,
  including the promotion of academic integrity, time savings, credibility
  enhancement, educational support, and improved evaluation practices. By
  utilizing these systems, individuals and institutions can foster a culture of
  originality, integrity, and responsible writing while ensuring the quality and
  the authenticity of their work. Plagiarism Detection Systems save time and
  an effort by automating the detection process, providing quick and accurate
  results.
