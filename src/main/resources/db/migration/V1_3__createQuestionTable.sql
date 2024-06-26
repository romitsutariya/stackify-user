CREATE TABLE IF NOT EXISTS questions (
    questionID SERIAL PRIMARY KEY,
    userID INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    score INT DEFAULT 0,
    tags TEXT,
    FOREIGN KEY (userID) REFERENCES users(userID) ON DELETE CASCADE
);

-- Create Answer Table
CREATE TABLE IF NOT EXISTS answers (
    answerID SERIAL PRIMARY KEY,
    questionID INT NOT NULL,
    userID INT NOT NULL,
    body TEXT NOT NULL,
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    score INT DEFAULT 0,
    FOREIGN KEY (questionID) REFERENCES questions(questionID) ON DELETE CASCADE,
    FOREIGN KEY (userID) REFERENCES users(userID) ON DELETE CASCADE
);