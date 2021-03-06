USE [LogolsLearning]
GO
/****** Object:  Schema [Assess]    Script Date: 10/16/2017 7:47:56 PM ******/
CREATE SCHEMA [Assess]
GO
/****** Object:  Schema [Team1]    Script Date: 10/16/2017 7:47:57 PM ******/
CREATE SCHEMA [Team1]
GO
/****** Object:  Schema [Team2]    Script Date: 10/16/2017 7:47:57 PM ******/
CREATE SCHEMA [Team2]
GO
/****** Object:  Schema [Team3]    Script Date: 10/16/2017 7:47:57 PM ******/
CREATE SCHEMA [Team3]
GO
/****** Object:  Schema [Team4]    Script Date: 10/16/2017 7:47:57 PM ******/
CREATE SCHEMA [Team4]
GO
/****** Object:  StoredProcedure [Assess].[DeleteAnswer]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Delete Answer
-- Call:		EXEC [Assess].[DeleteAnswer]
-- =============================================
CREATE PROCEDURE [Assess].[DeleteAnswer]
(
	@AnswerID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DELETE FROM [Assess].[Answer]
	WHERE AnswerID = @AnswerID

END


GO
/****** Object:  StoredProcedure [Assess].[DeleteAssessment]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Delete Assessment
-- Call:		EXEC [Assess].[DeleteAssessment]
-- =============================================
CREATE PROCEDURE [Assess].[DeleteAssessment]
(
	@AssessmentID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DELETE FROM [Assess].[Assessment]
	WHERE AssessmentID = @AssessmentID
END



GO
/****** Object:  StoredProcedure [Assess].[DeleteLevel]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Delete Level
-- Call:		EXEC [Assess].[DeleteLevel]
-- =============================================
CREATE PROCEDURE [Assess].[DeleteLevel]
(
	@LevelNumber INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DELETE FROM [Assess].[Level]
	WHERE LevelNumber = @LevelNumber

END



GO
/****** Object:  StoredProcedure [Assess].[DeleteQuestion]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Create Date: 9/10/2017
-- Description: Delete Question
-- Call:		EXEC [Assess].[DeleteQuestion]
-- =============================================
CREATE PROCEDURE [Assess].[DeleteQuestion]
(
	@QuestionID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DELETE FROM [Assess].[Question]
	WHERE QuestionID = @QuestionID

END


GO
/****** Object:  StoredProcedure [Assess].[DeleteStudent]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Create Date: 9/10/2017
-- Description: Delete Student
-- Call:		EXEC [Assess].[DeleteStudent]
-- =============================================
CREATE PROCEDURE [Assess].[DeleteStudent]
(
	@StudentID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DELETE FROM [Assess].[Student]
	WHERE StudentID = @StudentID

END


GO
/****** Object:  StoredProcedure [Assess].[DeleteStudentAssessment]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Delete Student Asessment
-- Call:		EXEC [Assess].[DeleteStudentAssessment]
-- =============================================
CREATE PROCEDURE [Assess].[DeleteStudentAssessment]
(
	@StudentAssessmentID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DELETE FROM [Assess].[StudentAssessment]
	WHERE StudentAssessmentID = @StudentAssessmentID

END



GO
/****** Object:  StoredProcedure [Assess].[DeleteSubject]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Delete Subject
-- Call:		EXEC [Assess].[DeleteSubject]
-- =============================================
CREATE PROCEDURE [Assess].[DeleteSubject]
(
	@SubjectID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DELETE FROM [Assess].[Subject]
	WHERE SubjectID = @SubjectID

END



GO
/****** Object:  StoredProcedure [Assess].[GetAllAnswers]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Get All Answers
-- Call:		EXEC [Assess].[GetAllAnswers]
-- =============================================
CREATE PROCEDURE [Assess].[GetAllAnswers]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		AnswerID
		,QuestionID
		,[Text] 
		,[IsCorrect]
	FROM [Assess].[Answer]

END



GO
/****** Object:  StoredProcedure [Assess].[GetAllAnswersByAssessmentID]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Get All Answers By Assessment ID
-- Call:		EXEC [Assess].[GetAllAnswersByAssessmentID]
-- =============================================
CREATE PROCEDURE [Assess].[GetAllAnswersByAssessmentID]
(
	@AssessmentID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		a.AnswerID
		,a.QuestionID
		,a.[Text] 
		,a.IsCorrect
	FROM [Assess].[Answer] a
	INNER JOIN [Assess].[Question] q
		ON a.QuestionID = q.QuestionID
	WHERE q.AssessmentID = @AssessmentID

END




GO
/****** Object:  StoredProcedure [Assess].[GetAllAnswersByQuestionID]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Get All Answers By Question ID
-- Call:		EXEC [Assess].[GetAllAnswersByQuestionID]
-- =============================================
CREATE PROCEDURE [Assess].[GetAllAnswersByQuestionID]
(
	@QuestionID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		AnswerID
		,QuestionID
		,[Text] 
		,IsCorrect
	FROM [Assess].[Answer]
	WHERE QuestionID = @QuestionID

END




GO
/****** Object:  StoredProcedure [Assess].[GetAllAssessments]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Return Assessments
-- Call:		EXEC [Assess].[GetAllAssessments]
-- =============================================
CREATE PROCEDURE [Assess].[GetAllAssessments]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT 
		AssessmentID
		,LevelNumber
		,SubjectID
		,Name
	FROM [Assess].[Assessment]
END


GO
/****** Object:  StoredProcedure [Assess].[GetAllLevels]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Get All Levels
-- Call:		EXEC [Assess].[GetAllLevels]
-- =============================================
CREATE PROCEDURE [Assess].[GetAllLevels]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		LevelNumber
		,Name 
	FROM [Assess].[Level]

END



GO
/****** Object:  StoredProcedure [Assess].[GetAllQuestions]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Create Date: 9/10/2017
-- Description: Get All Questiosn
-- Call:		EXEC [Assess].[GetAllQuestions]
-- =============================================
CREATE PROCEDURE [Assess].[GetAllQuestions]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT 
		QuestionID
		,AssessmentID
		,[Text]
	FROM [Assess].[Question]

END



GO
/****** Object:  StoredProcedure [Assess].[GetAllQuestionsByAssessmentID]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Create Date: 9/10/2017
-- Description: Get All Questiosn By Assessment ID
-- Call:		EXEC [Assess].[GetAllQuestionsByAssessmentID] 1
-- =============================================
CREATE PROCEDURE [Assess].[GetAllQuestionsByAssessmentID]
(
	@AssessmentID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT 
		QuestionID
		,AssessmentID
		,[Text]
		,0 AS IsCorrect
	FROM [Assess].[Question]
	WHERE AssessmentID = @AssessmentID

END





GO
/****** Object:  StoredProcedure [Assess].[GetAllStudentAssessments]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Get All Student Asessments
-- Call:		EXEC [Assess].[GetAllStudentAssessments]
-- =============================================
CREATE PROCEDURE [Assess].[GetAllStudentAssessments]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		StudentAssessmentID
		,StudentID
		,AssessmentID
		,Score
		,AssessmentDate
	FROM [Assess].[StudentAssessment]

END



GO
/****** Object:  StoredProcedure [Assess].[GetAllStudents]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Create Date: 9/10/2017
-- Description: Get All Students
-- Call:		EXEC [Assess].[GetAllStudents]
-- =============================================
CREATE PROCEDURE [Assess].[GetAllStudents]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		StudentID
		,FirstName
		,LastName
	FROM [Assess].[Student]

END


GO
/****** Object:  StoredProcedure [Assess].[GetAllSubjects]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Get All Subjects
-- Call:		EXEC [Assess].[GetAllSubjects]
-- =============================================
CREATE PROCEDURE [Assess].[GetAllSubjects]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		SubjectID
		,Name
		,[Description]
	FROM [Assess].[Subject]

END



GO
/****** Object:  StoredProcedure [Assess].[GetAnswer]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Get Answer
-- Call:		EXEC [Assess].[GetAnswer]
-- =============================================
CREATE PROCEDURE [Assess].[GetAnswer]
(
	@AnswerID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		AnswerID
		,QuestionID
		,[Text] 
		,IsCorrect
	FROM [Assess].[Answer]
	WHERE AnswerID = @AnswerID

END



GO
/****** Object:  StoredProcedure [Assess].[GetAssessment]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Return Assessment
-- Call:		EXEC [Assess].[GetAssessment]
-- =============================================
CREATE PROCEDURE [Assess].[GetAssessment]
(
	@AssessmentID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT 
		AssessmentID
		,LevelNumber
		,SubjectID
		,Name
	FROM [Assess].[Assessment]
	WHERE AssessmentID = @AssessmentID
END


GO
/****** Object:  StoredProcedure [Assess].[GetLevel]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Get Level
-- Call:		EXEC [Assess].[GetLevel]
-- =============================================
CREATE PROCEDURE [Assess].[GetLevel]
(
	@LevelNumber INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		LevelNumber
		,Name 
	FROM [Assess].[Level]
	WHERE LevelNumber = @LevelNumber

END



GO
/****** Object:  StoredProcedure [Assess].[GetQuestion]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Create Date: 9/10/2017
-- Description: Get Question
-- Call:		EXEC [Assess].[GetQuestion]
-- =============================================
CREATE PROCEDURE [Assess].[GetQuestion]
(
	@QuestionID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT 
		QuestionID
		,AssessmentID
		,[Text]
	FROM [Assess].[Question]
	WHERE QuestionID = @QuestionID

END


GO
/****** Object:  StoredProcedure [Assess].[GetStudent]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Create Date: 9/10/2017
-- Description: Get Student
-- Call:		EXEC [Assess].[GetStudent]
-- =============================================
CREATE PROCEDURE [Assess].[GetStudent]
(
	@StudentID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		StudentID
		,FirstName
		,LastName
	FROM [Assess].[Student]
	WHERE StudentID = @StudentID

END


GO
/****** Object:  StoredProcedure [Assess].[GetStudentAssessment]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Get Student Asessment
-- Call:		EXEC [Assess].[GetStudentAssessment]
-- =============================================
CREATE PROCEDURE [Assess].[GetStudentAssessment]
(
	@StudentAssessmentID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		StudentAssessmentID
		,StudentID
		,AssessmentID
		,Score
		,AssessmentDate
	FROM [Assess].[StudentAssessment]
	WHERE StudentAssessmentID = @StudentAssessmentID

END



GO
/****** Object:  StoredProcedure [Assess].[GetSubject]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Get Subject
-- Call:		EXEC [Assess].[GetSubject]
-- =============================================
CREATE PROCEDURE [Assess].[GetSubject]
(
	@SubjectID INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		SubjectID
		,Name
		,[Description]
	FROM [Assess].[Subject]
	WHERE SubjectID = @SubjectID

END



GO
/****** Object:  StoredProcedure [Assess].[InsertAnswer]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Insert Answer
-- Call:		EXEC [Assess].[InsertAnswer]
-- =============================================
CREATE PROCEDURE [Assess].[InsertAnswer]
(
	@QuestionID INT
	,@Text VARCHAR(150)
	,@IsCorrect BIT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DECLARE @ID TABLE (ID INT)

	INSERT INTO [Assess].[Answer]
	(
		QuestionID
		,[Text]
		,IsCorrect
	)
	OUTPUT inserted.AnswerID INTO @ID
	VALUES
	(
		@QuestionID
		,@Text
		,@IsCorrect
	)

	SELECT ID FROM @ID
END



GO
/****** Object:  StoredProcedure [Assess].[InsertAssessment]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Insert Assessment
-- Call:		EXEC [Assess].[InsertAssessment]
-- =============================================
CREATE PROCEDURE [Assess].[InsertAssessment]
(
	@LevelNumber INT
	,@SubjectID INT
	,@Name VARCHAR(50)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DECLARE @ID TABLE (ID INT)

	INSERT INTO [Assess].[Assessment]
	(
		LevelNumber
		,SubjectID
		,Name
	)
	OUTPUT inserted.AssessmentID INTO @ID
	VALUES
	(
		@LevelNumber
		,@SubjectID
		,@Name
	)

	SELECT ID FROM @ID
END



GO
/****** Object:  StoredProcedure [Assess].[InsertLevel]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Insert Level
-- Call:		EXEC [Assess].[InsertLevel]
-- =============================================
CREATE PROCEDURE [Assess].[InsertLevel]
(
	@LevelNumber INT
	,@Name VARCHAR(50)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DECLARE @ID TABLE (ID INT)

	INSERT INTO [Assess].[Level]
	(
		LevelNumber
		,Name
	)
	OUTPUT inserted.LevelNumber INTO @ID
	VALUES
	(
		@LevelNumber
		,@Name
	)

	SELECT ID FROM @ID
END



GO
/****** Object:  StoredProcedure [Assess].[InsertQuestion]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Create Date: 9/10/2017
-- Description: Insert Question
-- Call:		EXEC [Assess].[InsertQuestion]
-- =============================================
CREATE PROCEDURE [Assess].[InsertQuestion]
(
	@AssessmentID INT
	,@Text VARCHAR(150)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DECLARE @ID TABLE (ID INT)

	INSERT INTO [Assess].[Question]
	(
		AssessmentID
		,[Text]
	)
	OUTPUT inserted.QuestionID INTO @ID
	VALUES
	(
		@AssessmentID
		,@Text
	)

	SELECT ID FROM @ID
END


GO
/****** Object:  StoredProcedure [Assess].[InsertStudent]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Create Date: 9/10/2017
-- Description: Insert Student
-- Call:		EXEC [Assess].[InsertStudent]
-- =============================================
CREATE PROCEDURE [Assess].[InsertStudent]
(
	@FirstName VARCHAR(75)
	,@LastName VARCHAR(75)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DECLARE @ID TABLE (ID INT)

	INSERT INTO [Assess].[Student]
	(
		FirstName
		,LastName
	)
	OUTPUT inserted.StudentID INTO @ID
	VALUES
	(
		@FirstName
		,@LastName
	)

	SELECT ID FROM @ID
END



GO
/****** Object:  StoredProcedure [Assess].[InsertStudentAssessment]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Insert Subject
-- Call:		EXEC [Assess].[InsertStudentAssessment]
-- =============================================
CREATE PROCEDURE [Assess].[InsertStudentAssessment]
(
	@StudentID INT
	,@AssessmentID INT
	,@Score DECIMAL(5,2)
	,@AssessmentDate DATETIME2
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DECLARE @ID TABLE (ID INT)

	INSERT INTO [Assess].[StudentAssessment]
	(
		StudentID
		,AssessmentID
		,Score
		,AssessmentDate
	)
	OUTPUT inserted.StudentAssessmentID INTO @ID
	VALUES
	(
		@StudentID
		,@AssessmentID
		,@Score
		,@AssessmentDate
	)

	SELECT ID FROM @ID
END


GO
/****** Object:  StoredProcedure [Assess].[InsertSubject]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Insert Subject
-- Call:		EXEC [Assess].[InsertSubject]
-- =============================================
CREATE PROCEDURE [Assess].[InsertSubject]
(
	@Name VARCHAR(50)
	,@Description VARCHAR(100)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DECLARE @ID TABLE (ID INT)

	INSERT INTO [Assess].[Subject]
	(
		Name
		,[Description]
	)
	OUTPUT inserted.SubjectID INTO @ID
	VALUES
	(
		@Name
		,@Description
	)

	SELECT ID FROM @ID
END


GO
/****** Object:  StoredProcedure [Assess].[UpdateAnswer]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Update Answer
-- Call:		EXEC [Assess].[UpdateAnswer]
-- =============================================
CREATE PROCEDURE [Assess].[UpdateAnswer]
(
	@AnswerID INT
	,@QuestionID INT
	,@Text VARCHAR(150)
	,@IsCorrect BIT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	UPDATE [Assess].[Answer]
		SET QuestionID = @QuestionID
		,[Text] = @Text
		,IsCorrect = @IsCorrect
	WHERE AnswerID = @AnswerID

END



GO
/****** Object:  StoredProcedure [Assess].[UpdateAssessment]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Return Assessment
-- Call:		EXEC [Assess].[UpdateAssessment]
-- =============================================
CREATE PROCEDURE [Assess].[UpdateAssessment]
(
	@AssessmentID INT
	,@LevelNumber INT
	,@SubjectID INT
	,@Name VARCHAR(50)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	UPDATE [Assess].[Assessment]
		SET LevelNumber = @LevelNumber
		,SubjectID = @SubjectID
		,Name = @Name
	WHERE AssessmentID = @AssessmentID
END


GO
/****** Object:  StoredProcedure [Assess].[UpdateLevel]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Update Level
-- Call:		EXEC [Assess].[UpdateLevel]
-- =============================================
CREATE PROCEDURE [Assess].[UpdateLevel]
(
	@LevelNumber INT
	,@Name VARCHAR(50)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	UPDATE [Assess].[Level]
		SET Name = @Name
	WHERE LevelNumber = @LevelNumber

END



GO
/****** Object:  StoredProcedure [Assess].[UpdateQuestion]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Create Date: 9/10/2017
-- Description: Update Question
-- Call:		EXEC [Assess].[UpdateQuestion]
-- =============================================
CREATE PROCEDURE [Assess].[UpdateQuestion]
(
	@QuestionID INT
	,@AssessmentID INT
	,@Text VARCHAR(150)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	UPDATE [Assess].[Question]
		SET AssessmentID = @AssessmentID
		,[Text] = @Text
	WHERE QuestionID = @QuestionID

END


GO
/****** Object:  StoredProcedure [Assess].[UpdateStudent]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Create Date: 9/10/2017
-- Description: Update Student
-- Call:		EXEC [Assess].[UpdateStudent]
-- =============================================
CREATE PROCEDURE [Assess].[UpdateStudent]
(
	@StudentID INT
	,@FirstName VARCHAR(75)
	,@LastName VARCHAR(75)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	UPDATE [Assess].[Student]
		SET FirstName = @FirstName
		,LastName = @LastName
	WHERE StudentID = @StudentID

END


GO
/****** Object:  StoredProcedure [Assess].[UpdateStudentAssessment]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Update Student Asessment
-- Call:		EXEC [Assess].[UpdateStudentAssessment]
-- =============================================
CREATE PROCEDURE [Assess].[UpdateStudentAssessment]
(
	@StudentAssessmentID INT
	,@StudentID INT
	,@AssessmentID INT
	,@Score DECIMAL(5,2)
	,@AssessmentDate DATETIME2
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	UPDATE [Assess].[StudentAssessment]
		SET StudentID = @StudentID
		,AssessmentID = @AssessmentID
		,Score = @Score
		,AssessmentDate = @AssessmentDate
	WHERE StudentAssessmentID = @StudentAssessmentID

END



GO
/****** Object:  StoredProcedure [Assess].[UpdateSubject]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Joseph Mackie
-- Create Date: 9/10/2017
-- Description: Update Subject
-- Call:		EXEC [Assess].[UpdateSubject]
-- =============================================
CREATE PROCEDURE [Assess].[UpdateSubject]
(
	@SubjectID INT
	,@Name VARCHAR(50)
	,@Description VARCHAR(100)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	UPDATE [Assess].[Subject]
		SET Name = @Name
		,[Description] = @Description
	WHERE SubjectID = @SubjectID

END



GO
/****** Object:  StoredProcedure [dbo].[GetAll]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAll]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT [FirstName],
			[LastName],
			[Email]
		
	FROM  [DBO].[Alumni]
	

END;
GO
/****** Object:  StoredProcedure [dbo].[InsertAlumni]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsertAlumni] (
	@FirstName varchar(50),
	@LastName varchar(50),
	@Email varchar(75)
)
As
Begin
INSERT INTO [dbo].[Alumni]
([FirstName],[LastName],[Email])
Output Inserted.[AlumniID]
VALUES (@FirstName, @LastName, @Email)
End;
GO
/****** Object:  StoredProcedure [Team1].[AddOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team1].[AddOrder]
(@OrderID INT, 
@UserID INT,
@OrderDate DATETIME,
@ShipmentDate DATETIME,
@IsProcessed BIT,
@IsCancelled BIT,
@IsDelivered BIT,
@ModifiedDate DATETIME
)

AS
BEGIN

INSERT INTO Team1.[Order] (OrderID, UserID, OrderDate, ShipmentDate, IsProcessed, IsCancelled, IsDelivered, ModifiedDate)
VALUES (@OrderID, @UserID, @OrderDate, @ShipmentDate, @IsProcessed, @IsCancelled, @IsDelivered, @ModifiedDate)

END 
GO
/****** Object:  StoredProcedure [Team1].[AddOrderDetail]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[AddOrderDetail]
(
@UserID INT,
@ProductQty INT,
@ProductID INT
)

AS
BEGIN

INSERT INTO [Team1].[OrderDetail] (UserID, ProductQty, ProductID)
VALUES (@UserID, @ProductQty, @ProductID)

END

GO
/****** Object:  StoredProcedure [Team1].[AddProduct]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[AddProduct]
(
@UnitPrice DECIMAL,
@Quantity INT, 
@ProductQty INT,
@ProductDesc VARCHAR(50),
@ProductName VARCHAR(50)
)

AS
BEGIN

INSERT INTO Team1.[Product] (UnitPrice, Quantity, ProductQty, ProductDesc, ProductName, CreatedDate)
VALUES (@UnitPrice, @Quantity, @ProductQty, @ProductDesc, @ProductName, GETDATE())

END 
GO
/****** Object:  StoredProcedure [Team1].[AddProductOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team1].[AddProductOrder]
(
@OrderID INT,
@ProductID INT, 
@Quantity INT
)

AS
BEGIN

INSERT INTO [Team1].[ProductOrder] (OrderID, ProductID, Quantity)
VALUES (@OrderID, @PRoductID, @Quantity)


END
GO
/****** Object:  StoredProcedure [Team1].[AddUser]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team1].[AddUser]
(
@FirstName VARCHAR(30),
@LastName VARCHAR(30),
@Address VARCHAR(50),
@City VARCHAR(30),
@State CHAR(2),
@Phone CHAR(10),
@Email VARCHAR(50),
@DOB DATETIME
)

AS
BEGIN

INSERT INTO Team1.[User] (FirstName, LastName, [Address], City, [State], Phone, Email, DOB, CreatedDate)
VALUES (@FirstName, @LastName, @Address, @City, @State, @Phone, @Email, @DOB, GETDATE())



END 
GO
/****** Object:  StoredProcedure [Team1].[DeleteOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[DeleteOrder]
(
@OrderID INT
)

AS
BEGIN

SET NOCOUNT ON

DELETE FROM [Team1].[Order]
WHERE OrderID = @OrderID

END 
GO
/****** Object:  StoredProcedure [Team1].[DeleteOrderDetail]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[DeleteOrderDetail]
(
@UserID INT
)

AS
BEGIN

SET NOCOUNT ON

DELETE FROM [Team1].[OrderDetail]
WHERE UserID = @UserID

END 
GO
/****** Object:  StoredProcedure [Team1].[DeleteProduct]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[DeleteProduct]
(
@ProductID INT
)

AS
BEGIN

SET NOCOUNT ON

DELETE FROM [Team1].[Product]
WHERE ProductID = @ProductID

END 
GO
/****** Object:  StoredProcedure [Team1].[DeleteProductOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[DeleteProductOrder]
(
@ProductID INT
)

AS
BEGIN

SET NOCOUNT ON

DELETE FROM [Team1].[ProductOrder]
WHERE ProductID = @ProductID

END 
GO
/****** Object:  StoredProcedure [Team1].[DeleteUser]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[DeleteUser]
(
@UserID INT
)

AS
BEGIN

SET NOCOUNT ON

DELETE FROM [Team1].[User]
WHERE UserID = @UserID

END 
GO
/****** Object:  StoredProcedure [Team1].[GetAll]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team1].[GetAll]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT 
			[AlumniID],
			[FirstName],
			[LastName],
			[Email]	
	FROM  [Team1].[Alumni]
	

END;


GO
/****** Object:  StoredProcedure [Team1].[GetAllOrders]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team1].[GetAllOrders]
AS 
BEGIN

SELECT *
FROM [Team1].[Order]

END

GO
/****** Object:  StoredProcedure [Team1].[GetAllProductOrders]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team1].[GetAllProductOrders]
AS 
BEGIN

SELECT *
FROM [Team1].[ProductOrder]

END

GO
/****** Object:  StoredProcedure [Team1].[GetAllProducts]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team1].[GetAllProducts]

AS 
BEGIN

SELECT *
FROM [Team1].[Product]

END

GO
/****** Object:  StoredProcedure [Team1].[GetAllUsers]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team1].[GetAllUsers]
AS
BEGIN
SELECT *
FROM Team1.[User]

END

GO
/****** Object:  StoredProcedure [Team1].[GetOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[GetOrder]
(
@OrderID INT 
)

AS 
BEGIN

SELECT *
FROM [Team1].[Order]
WHERE  OrderID = @OrderID

END
GO
/****** Object:  StoredProcedure [Team1].[GetOrderDetail]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[GetOrderDetail]
(
@UserID INT 
)

AS 
BEGIN

SELECT *
FROM [Team1].[OrderDetail]
WHERE  UserID = @UserID

END
GO
/****** Object:  StoredProcedure [Team1].[GetProduct]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[GetProduct]
(
@ProductID INT 
)

AS 
BEGIN

SELECT *
FROM [Team1].[Product]
WHERE  ProductID = @ProductID

END
GO
/****** Object:  StoredProcedure [Team1].[GetProductOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[GetProductOrder]
(
@OrderID INT
)

AS 
BEGIN

SELECT *
FROM [Team1].[ProductOrder]
WHERE OrderID = @OrderID 

END
GO
/****** Object:  StoredProcedure [Team1].[GetUser]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[GetUser]
(
@UserID int
)
AS
BEGIN
SELECT *
FROM Team1.[User]
WHERE UserID = @UserID

END
GO
/****** Object:  StoredProcedure [Team1].[InsertAlumni]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [Team1].[InsertAlumni] (
	@FirstName varchar(50),
	@LastName varchar(50),
	@Email varchar(75)
)
As
Begin
INSERT INTO [Team1].[Alumni]
([FirstName],[LastName],[Email])
Output Inserted.[AlumniID]
VALUES (@FirstName, @LastName, @Email)
End;

GO
/****** Object:  StoredProcedure [Team1].[UpdateOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[UpdateOrder]		
(	@OrderID INT,
	@UserID INT,
	@OrderDate DATETIME null,
	@ShipmentDate DATETIME null,
	@IsProcessed BIT null,
	@IsCancelled BIT null,
	@IsDelivered BIT null
)		
AS		
BEGIN	
    
   UPDATE [Team1].[Order]
   SET [OrderDate] = ISNULL(@OrderDate, OrderDate)
      ,[ShipmentDate] = ISNULL(@ShipmentDate, ShipmentDate)
      ,[IsProcessed] = ISNULL(@IsProcessed, IsProcessed)
      ,[IsCancelled] = ISNULL(@IsCancelled, IsCancelled)
      ,[IsDelivered] = ISNULL(@IsDelivered, IsDelivered)
      ,[ModifiedDate] = GETDATE()
    WHERE [UserID] = @UserID and OrderID = @OrderID
END

GO
/****** Object:  StoredProcedure [Team1].[UpdateOrderDetail]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team1].[UpdateOrderDetail]
(
@UserID INT,
@ProductQty INT,
@ProductID INT
)

AS 
BEGIN

SET NOCOUNT ON

UPDATE [Team1].[OrderDetail]
SET [UserID] = @UserID,
[ProductQty] = @ProductQty
WHERE [ProductID] = @ProductID

END
GO
/****** Object:  StoredProcedure [Team1].[UpdateProduct]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[UpdateProduct]		
(	@ProductID int,	
	@UnitPrice DECIMAL null,
	@Quantity int null,
	@ProductDesc varchar(50) null,
	@ProductName varchar(50) null
)		
AS		
BEGIN	
    
   UPDATE [Team1].[Product]
   SET [UnitPrice] = ISNULL(@UnitPrice, UnitPrice)
      ,[Quantity] = ISNULL(@Quantity, Quantity)
      ,[ProductDesc] = ISNULL(@ProductDesc, ProductDesc)
      ,[ProductName] = ISNULL(@ProductName, ProductName)
      ,[ModifiedDate] = GETDATE()
    WHERE ProductID = @ProductID
END



GO
/****** Object:  StoredProcedure [Team1].[UpdateProductOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team1].[UpdateProductOrder]
(
@OrderID INT,
@ProductID INT,
@Quantity INT
)

AS
BEGIN

UPDATE [Team1].[ProductOrder]
SET Quantity = @Quantity
WHERE ProductID = @ProductID and OrderID = @OrderID
END
GO
/****** Object:  StoredProcedure [Team1].[UpdateUserDetails]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team1].[UpdateUserDetails]		
(	@UserID int,	
	@FirstName varchar(25) null,
	@LastName varchar(25) null,
	@Address varchar(250) null,
	@City varchar(50) null,
	@State varchar(2) null,
	@Phone varchar(15) null,
	@Email varchar(50) null,
	@DOB datetime null
)		
AS		
BEGIN	
    
   UPDATE [Team1].[User]
   SET [FirstName] = @FirstName
      ,[LastName] = @LastName
      ,[Address] = @Address
      ,[City] = @City
      ,[State] = @State
      ,[Phone] = @Phone
      ,[Email] = @Email
      ,[DOB] = @DOB
	  ,[ModifiedDate] = GETDATE()
   WHERE UserID = @UserID
END

GO
/****** Object:  StoredProcedure [Team2].[AddMeasure]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================
-- Author: Andrew Meininger
-- Create Date: 9/28/17
-- Description: Add Measure
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[AddMeasure]
(
	@measure_id INT,
	@measure VARCHAR(80),
	@measure_abbr VARCHAR(20)
)

AS
BEGIN 

DECLARE @ID TABLE (ID INT)


INSERT INTO Team2.[measure](measure_id, measure, measure_abbr)
OUTPUT inserted.measure_id INTO @ID
VALUES(@measure_id, @measure, @measure_abbr)

SELECT ID FROM @ID
END

GO
/****** Object:  StoredProcedure [Team2].[addOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Create an Order
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[addOrder]
(
	@order_date DATETIME2,
	@user_id INT 
)

AS
BEGIN


DECLARE @ID TABLE (ID INT)

INSERT INTO Team2.[order] (order_date, [user_id])
OUTPUT inserted.order_id INTO @ID

VALUES (@order_date, @user_id)
	  

END

GO
/****** Object:  StoredProcedure [Team2].[addOrderItem]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Add an Order Item
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[addOrderItem]
(
	@order_id INT,
	@product_id INT,
	@quantity INT,
	@item_price_total DECIMAL(10,2) 
)

AS
BEGIN

DECLARE @ID TABLE (ID INT)

INSERT INTO Team2.[order_item] (order_id, product_id, quantity, item_price_total)
OUTPUT inserted.order_item_id INTO @ID

VALUES (@order_id, @product_id, @quantity, @item_price_total)
	  

END

GO
/****** Object:  StoredProcedure [Team2].[AddPaymentType]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Add Payment Type
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[AddPaymentType]
(
	@payment_type VARCHAR(40)
)

AS

BEGIN

DECLARE @ID TABLE (ID INT)

INSERT INTO Team2.payment_type (payment_type)
OUTPUT inserted.payment_type_id INTO @ID
VALUES (@payment_type)




END

GO
/****** Object:  StoredProcedure [Team2].[AddProduct]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Add Product
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[AddProduct]
(
	@product_name VARCHAR(80),
	@description TEXT,
	@imagefile VARCHAR(80),
	@price DECIMAL
)

AS

BEGIN

DECLARE @ID TABLE (ID INT)

INSERT INTO product (product_name, [description], imagefile, price)
OUTPUT inserted.product_id INTO @ID
VALUES (@product_name, @description, @imagefile, @price)

SELECT ID FROM @ID

END

GO
/****** Object:  StoredProcedure [Team2].[AddProductIngredient]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Add Product Ingredient
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[AddProductIngredient]
(
	@product_id INT,
	@ingredient_id INT,
	@quantity DECIMAL,
	@measure_id INT
)

AS

BEGIN

DECLARE @ID TABLE (ID INT)

INSERT INTO Team2.product_ingredient (product_id, ingredient_id, quantity, measure_id)
OUTPUT inserted.product_ingredient_id INTO @ID
VALUES (@product_id, @ingredient_id, @quantity, @measure_id)

END

GO
/****** Object:  StoredProcedure [Team2].[AddUser]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Add a User
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[AddUser]
(
	@username VARCHAR(40),
	@password VARCHAR(40),
	@first_name VARCHAR(30),
	@last_name VARCHAR(30),
	@email VARCHAR(100),
	@phone VARCHAR(20),
	@date_created DATE 
)

AS
BEGIN
DECLARE @ID TABLE (ID INT)

INSERT INTO Team2.[user] (username, [password], first_name, last_name, email, phone, date_created)
OUTPUT inserted.[user_id] INTO @ID
VALUES(@username, @password, @first_name, @last_name, @email, @phone, @date_created)
	  

END

GO
/****** Object:  StoredProcedure [Team2].[AddUserFavorite]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Add a User Favorite Product
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[AddUserFavorite]
(
	@user_id INT,
	@product_id INT 
)

AS
BEGIN

INSERT INTO Team2.user_favorite(user_id, product_id)
VALUES(@user_id, @product_id)
	  

END


GO
/****** Object:  StoredProcedure [Team2].[DeleteIngredient]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================
-- Author: Andrew Meininger
-- Create Date: 9/28/17
-- Description: Delete Ingredient
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[DeleteIngredient]
(
	@ingredient_id INT
)

AS
BEGIN 


DELETE FROM Team2.ingredient
WHERE ingredient_id = @ingredient_id;


END

GO
/****** Object:  StoredProcedure [Team2].[DeleteMeasure]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Andrew Meininger
-- Create Date: 9/28/17
-- Description: Delete Measure
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[DeleteMeasure]
(
	@measure_id INT
)

AS

BEGIN

DELETE FROM Team2.measure
WHERE measure_id = @measure_id;

END


GO
/****** Object:  StoredProcedure [Team2].[DeleteOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Andrew Meininger
-- Create Date: 9/28/17
-- Description: Delete Order
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[DeleteOrder]
(
	@order_id INT
)

AS

BEGIN

DELETE FROM Team2.[Order]
WHERE order_id = @order_id


END



GO
/****** Object:  StoredProcedure [Team2].[DeleteOrderItem]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Andrew Meininger
-- Create Date: 9/28/17
-- Description: Delete Order Item
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[DeleteOrderItem]
(
	@order_item_id INT
)

AS

BEGIN

DELETE FROM Team2.order_item
WHERE order_item_id = @order_item_id;



END



GO
/****** Object:  StoredProcedure [Team2].[DeletePaymentType]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Delete Payment Type
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[DeletePaymentType]
(
	@payment_type_id INT
)

AS

BEGIN

DELETE FROM Team2.payment_type
WHERE payment_type_id = @payment_type_id




END



GO
/****** Object:  StoredProcedure [Team2].[DeleteProduct]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Delete Product
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[DeleteProduct]
(
	@product_id INT
)

AS

BEGIN

DELETE FROM Team2.product
WHERE product_id = @product_id


END



GO
/****** Object:  StoredProcedure [Team2].[DeleteProductIngredient]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Delete Product Ingredient
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[DeleteProductIngredient]
(
	@product_ingredient_id INT
)

AS

BEGIN

DELETE FROM  Team2.product_ingredient 
WHERE product_ingredient_id = @product_ingredient_id

END



GO
/****** Object:  StoredProcedure [Team2].[DeleteUser]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Delete User
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[DeleteUser]
(
	@user_id INT
	
)

AS

BEGIN

DELETE FROM Team2.[user]
WHERE [user_id] = @user_id

END



GO
/****** Object:  StoredProcedure [Team2].[DeleteUserFavorite]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Delete User Favorite
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[DeleteUserFavorite]
(
	@user_id INT,
	@product_id INT
	
)

AS

BEGIN

DELETE FROM Team2.[user_favorite]
WHERE [user_id] = @user_id
AND product_id = @product_id

END



GO
/****** Object:  StoredProcedure [Team2].[GetAllPaymentTypes]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Get All Payment Types 
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[GetAllPaymentTypes]


AS
BEGIN

SELECT payment_type
FROM Team2.payment_type
ORDER BY payment_type_id asc

END


GO
/****** Object:  StoredProcedure [Team2].[GetAllProducts]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Get All Products
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[GetAllProducts]
	

AS
BEGIN

SELECT product_id,
	   product_name,
	   [description],
	   imagefile,
	   price
FROM Team2.product;

END


GO
/****** Object:  StoredProcedure [Team2].[GetOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Get Order 
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[GetOrder]
(
	@order_id INT
)

AS
BEGIN

SELECT *
FROM Team2.[order]
WHERE order_id = @order_id

END


GO
/****** Object:  StoredProcedure [Team2].[GetOrderItems]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Get Order Items
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[GetOrderItems]
(
	@order_id INT
)

AS
BEGIN

SELECT order_item_id, product_id, quantity, item_price_total
FROM Team2.order_item
WHERE order_id = @order_id
ORDER BY order_item_id asc

END


GO
/****** Object:  StoredProcedure [Team2].[GetPaymentType]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Get Payment Type 
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[GetPaymentType]
(
	@payment_type_id INT
)

AS
BEGIN

SELECT payment_type
FROM Team2.payment_type
WHERE payment_type_id = @payment_type_id

END


GO
/****** Object:  StoredProcedure [Team2].[GetProduct]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Get Product Detail
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[GetProduct]
	@product_id int	

AS
BEGIN

SELECT product_id,
	   product_name,
	   [description],
	   imagefile,
	   price
FROM Team2.product
WHERE product_id = @product_id

END


GO
/****** Object:  StoredProcedure [Team2].[GetProductIngredient]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Get a Product Ingredient
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[GetProductIngredient]
(
	@product_ingredient_id INT
)

AS

BEGIN

SELECT  product_id, ingredient_id, quantity, measure_id
FROM  Team2.product_ingredient 
WHERE product_ingredient_id = @product_ingredient_id

END



GO
/****** Object:  StoredProcedure [Team2].[GetProductIngredients]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Return all ingredients for a product
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[GetProductIngredients]
	@product_id int = 0

AS
BEGIN

SELECT p.quantity, i.ingredient_name
FROM Team2.product_ingredient p
INNER JOIN Team2.ingredient i
ON p.ingredient_id = i.ingredient_id
WHERE p.product_id = @product_id

END


GO
/****** Object:  StoredProcedure [Team2].[GetUser]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Get User
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[GetUser]
(
	@user_id INT 
)

AS
BEGIN

SELECT *
FROM Team2.[user]
WHERE user_id = @user_id
	  

END


GO
/****** Object:  StoredProcedure [Team2].[GetUserFavorites]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Michele Wandrei
-- Create Date: 9/21/17
-- Description: Get User Favorite Products 
-- Call:		
-- =============================================

CREATE PROCEDURE [Team2].[GetUserFavorites]
	@user_id INT

AS
BEGIN

SELECT p.product_id,
	   p.product_name,
	   p.[description],
	   p.imagefile,
	   p.price
FROM user_favorite uf 
INNER JOIN product p
ON uf.product_id = p.product_id
ORDER BY p.product_id asc

END


GO
/****** Object:  StoredProcedure [Team2].[UpdateDeleteIngredient]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Andrew Meininger
-- Create Date: 9/28/17
-- Description: Delete Ingredient
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[UpdateDeleteIngredient]
(
	@ingredient_id INT
)

AS
BEGIN 


DELETE FROM Team2.ingredient
WHERE ingredient_id = @ingredient_id;


END


GO
/****** Object:  StoredProcedure [Team2].[UpdateIngredient]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Andrew Meininger
-- Create Date: 9/28/17
-- Description: Update Ingredient
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[UpdateIngredient]
(
	@ingredient_id INT,
	@ingredient_name VARCHAR(80),
	@measure_id INT NULL,
	@calories DECIMAL(8,2),
	@sodium DECIMAL(8,2),
	@fat DECIMAL(8,2),
	@carb DECIMAL(8,2),
	@protein DECIMAL(8,2),
	@sugars DECIMAL(8,2)
)

AS
BEGIN 

UPDATE Team2.ingredient
SET 
ingredient_name = @ingredient_name,
measure_id = @measure_id,
calories = @calories,
fat = @fat,
carb = @carb,
protein = @protein,
sugars = @sugars
WHERE ingredient_id = @ingredient_id

END


GO
/****** Object:  StoredProcedure [Team2].[UpdateMeasure]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Andrew Meininger
-- Create Date: 9/28/17
-- Description: Update Measure
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[UpdateMeasure]
(
	@measure_id INT,
	@measure VARCHAR(80),
	@measure_abbr VARCHAR(20)
)

AS
BEGIN 

UPDATE Team2.measure
SET 
measure = @measure,
measure_abbr = @measure_abbr
WHERE measure_id = @measure_id;
END


GO
/****** Object:  StoredProcedure [Team2].[UpdateOrder]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================
-- Author: Andrew Meininger
-- Create Date: 9/28/17
-- Description: Update Order
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[UpdateOrder]
(
	@order_id INT,
	@order_date DATETIME2,
	@user_id INT,
	@payment_type_id INT,
	@amount_paid DECIMAL,
	@order_code VARCHAR(80)
)

AS

BEGIN

UPDATE Team2.[order]
SET 
order_date = @order_date,
[user_id] = @user_id,
payment_type_id = @payment_type_id,
amount_paid = @amount_paid,
order_code = @order_code
WHERE order_id = @order_id;

END

GO
/****** Object:  StoredProcedure [Team2].[UpdateOrderItem]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Andrew Meininger
-- Create Date: 9/28/17
-- Description: Update Order Item
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[UpdateOrderItem]
(
	@order_item_id INT,
	@order_id INT,
	@product_id INT,
	@quantity INT,
	@item_price_total DECIMAL
)

AS

BEGIN

UPDATE Team2.order_item
SET 
order_id = @order_id,
product_id = @product_id,
quantity = @quantity,
item_price_total = @item_price_total

WHERE order_item_id = @order_item_id;



END



GO
/****** Object:  StoredProcedure [Team2].[UpdatePaymentType]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Update Payment Type
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[UpdatePaymentType]
(
	@payment_type_id INT,
	@payment_type VARCHAR(40)
)

AS

BEGIN

UPDATE Team2.payment_type
SET payment_type = @payment_type
WHERE payment_type_id = @payment_type_id




END

GO
/****** Object:  StoredProcedure [Team2].[UpdateProduct]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Update Product
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[UpdateProduct]
(
	@product_id INT,
	@product_name VARCHAR(80),
	@description TEXT,
	@imagefile VARCHAR(80),
	@price DECIMAL(10,2)
)

AS

BEGIN

UPDATE Team2.product 
SET product_name = @product_name,
	[description] = @description,
	imagefile = @imagefile,
	price = @price
WHERE product_id = @product_id


END

GO
/****** Object:  StoredProcedure [Team2].[UpdateProductIngredient]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Update Product Ingredient
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[UpdateProductIngredient]
(
	@product_ingredient_id INT,
	@product_id INT,
	@ingredient_id INT,
	@quantity DECIMAL,
	@measure_id INT
)

AS

BEGIN

UPDATE  Team2.product_ingredient 
SET product_id = @product_id, 
	ingredient_id = @ingredient_id, 
	quantity = @quantity, 
	measure_id = @measure_id
WHERE product_ingredient_id = @product_ingredient_id

END



GO
/****** Object:  StoredProcedure [Team2].[UpdateUser]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ======================================================
-- Author: Michele Wandrei
-- Create Date: 9/30/17
-- Description: Update User
-- Call:
-- ======================================================

CREATE PROCEDURE [Team2].[UpdateUser]
(
	@user_id INT,
	@username VARCHAR(40),
	@password VARCHAR(40),
	@first_name VARCHAR(30),
	@last_name VARCHAR(30),
	@email VARCHAR(100),
	@phone VARCHAR(20),
	@date_created DATETIME2
)

AS

BEGIN

UPDATE Team2.[user]
SET username = @username,
	password = @password,
	first_name = @first_name,
	last_name = @last_name,
	email = @email,
	phone = @phone,
	date_created = @date_created 
WHERE [user_id] = @user_id

END

GO
/****** Object:  StoredProcedure [Team3].[DeleteItems]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team3].[DeleteItems]
(
	@Items INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DELETE FROM [Team3].[Items]
	WHERE Items = @Items

END




GO
/****** Object:  StoredProcedure [Team3].[DeleteStudent]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team3].[DeleteStudent]
(
	@StudentId INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DELETE FROM [Team3].[Student]
	WHERE StudentId = @StudentId

END




GO
/****** Object:  StoredProcedure [Team3].[DeleteTaskList]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team3].[DeleteTaskList]
(
	@TaskId INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DELETE FROM [Team3].[TaskList]
	WHERE TaskId = @TaskId

END




GO
/****** Object:  StoredProcedure [Team3].[GetAllItems]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team3].[GetAllItems]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT 
		Items AS ItemsId
		,[Description]
		,StartDate
		,DueDate
		,TaskId
	FROM [Team3].[Items]

END

GO
/****** Object:  StoredProcedure [Team3].[GetAllStudent]    Script Date: 10/16/2017 7:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team3].[GetAllStudent]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT 
		StudentId
		,Name
		,[PassWord]
		,UserName
		,Email
		,School
	FROM [Team3].[Student]

END




GO
/****** Object:  StoredProcedure [Team3].[GetAllTaskList]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team3].[GetAllTaskList]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT 
		TaskId
		,Name
		,StudentId
	FROM [Team3].[TaskList]

END




GO
/****** Object:  StoredProcedure [Team3].[GetItems]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team3].[GetItems]
(
    @Items int
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		Items AS ItemsId
		,[Description]
		,StartDate
    ,DueDate
    ,TaskId
	FROM Team3.Items
	WHERE Items = @Items
END

GO
/****** Object:  StoredProcedure [Team3].[GetStudent]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team3].[GetStudent]
(
    @StudentId int
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		StudentId
		,Name
		,Password
		,UserName
		,Email
		,School
	FROM Team3.Student
	WHERE StudentId = @StudentId
END

GO
/****** Object:  StoredProcedure [Team3].[GetTasklist]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [Team3].[GetTasklist]
(
    @TaskId int
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	SELECT
		TaskId
		,Name
		,StudentId
	FROM Team3.TaskList
	WHERE TaskId = @TaskId
END

GO
/****** Object:  StoredProcedure [Team3].[InsertItems]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Team3].[InsertItems]
(
    @Description VARCHAR(100)
    ,@StartDate VARCHAR(75)
    ,@DueDate VARCHAR(75)
    ,@TaskId int
  )
  AS
  BEGIN

  SET NOCOUNT ON

  DECLARE @ID TABLE (ID INT)

  INSERT INTO

[Team3].[Items]

(
 [Description]
,[StartDate]
,[DueDate]
,[TaskId]
)
OUTPUT inserted.Items INTO @ID
VALUES
(
 @Description,
 @StartDate,
 @DueDate,
 @TaskId
 )

SELECT ID FROM @ID

END

GO
/****** Object:  StoredProcedure [Team3].[InsertStudent]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Team3].[InsertStudent]
(
    @Name VARCHAR(100)
    ,@Password VARCHAR(75)
    ,@UserName VARCHAR(75)
    ,@Email VARCHAR(75)
    ,@School VARCHAR(75)
)
AS
BEGIN

SET NOCOUNT ON

DECLARE @ID TABLE (ID INT)

INSERT INTO
[Team3].[Student]
([Name]
,[Password]
,[UserName]
,[Email]
,[School])
OUTPUT inserted.StudentId INTO @ID
VALUES
(
 @Name,
 @Password,
 @UserName,
 @Email,
 @School
)

SELECT ID FROM @ID

END

GO
/****** Object:  StoredProcedure [Team3].[InsertTaskList]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Team3].[InsertTaskList]
(
    @Name VARCHAR(100),
    @StudentId int
  )
    AS
  BEGIN

  SET NOCOUNT ON

  DECLARE @ID TABLE (ID INT)

  INSERT INTO

[Team3].[TaskList]
([Name],
 [StudentId]
)
OUTPUT inserted.TaskId INTO @ID
VALUES
(
 @Name,
 @StudentId
 )

SELECT ID FROM @ID

END

GO
/****** Object:  StoredProcedure [Team3].[UpdateItems]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team3].[UpdateItems]
(
	@ItemsId INT
	,@Description VARCHAR(1000)
	,@StartDate DATE
	,@DueDate DATE
	,@TaskId INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	UPDATE [Team3].[Items]
		SET [Description] = @Description
		,StartDate = @StartDate
		,DueDate = @DueDate
		,TaskId = @TaskId
	WHERE Items = @ItemsId

END

GO
/****** Object:  StoredProcedure [Team3].[UpdateStudent]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team3].[UpdateStudent]
(
	@StudentId INT
	,@Name VARCHAR(100)
	,@PassWord VARCHAR(75)
	,@UserName VARCHAR(75)
	,@Email VARCHAR(75)
	,@School VARCHAR(75)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	UPDATE [Team3].[Student]
		SET [Name] = @Name
		,[PassWord] = @PassWord
		,UserName = @UserName
		,Email = @Email
		,School = @School
	WHERE StudentId = @StudentId

END

GO
/****** Object:  StoredProcedure [Team3].[UpdateTaskList]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team3].[UpdateTaskList]
(
	@TaskId INT
	,@Name VARCHAR(75)
	,@StudentId INT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	UPDATE [Team3].[TaskList]
		SET Name = @Name
		,StudentId = @StudentId
	WHERE TaskId = @TaskId

END




GO
/****** Object:  StoredProcedure [Team4].[AddStreamer]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Team4].[AddStreamer] (
	@StreamerId int,
	@Streamer varchar(255),
	@Channel varchar(255),
	@Online bit
)
AS
BEGIN
SET NOCOUNT ON

	DECLARE @ID TABLE (ID INT)

INSERT INTO [Team4].[StreamerList] (
	Streamer,
	Channel
	) 
	
	OUTPUT inserted.StreamerId INTO @ID

	VALUES	(
	@Streamer,
	@Channel
	)

	SELECT ID FROM @ID
End

GO
/****** Object:  StoredProcedure [Team4].[AddSubscription]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Team4].[AddSubscription] (
	@SubscriptionId int,
	@UserLoginId Int,
	@StreamerId Int,
	@SendEmail bit,
	@Position int
)
AS
BEGIN
SET NOCOUNT ON

	DECLARE @ID TABLE (ID INT)
Insert Into [Team4].[UserSubscriptions] (
UserLoginId,
StreamerId,
SendEmail,
Position
)
 VALUES (
 @UserLoginId,
 @StreamerId,
 @SendEmail,
 @Position
 )
	SELECT ID FROM @ID
End
GO
/****** Object:  StoredProcedure [Team4].[AddUserLogin]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Team4].[AddUserLogin] (
	@ID int,
	@UserName varchar(75),
	@Pass varchar(250),
	@Email varchar(250),
	@LayoutSelected tinyint
)
AS
BEGIN
SET NOCOUNT ON

INSERT INTO [Team4].[UserLogin] (
	UserName,
	Pass,
	Email,
	LayoutSelected
)

OUTPUT Inserted.*

	VALUES (
	@UserName,
	@Pass,
	@Email,
	@LayoutSelected
)
End
GO
/****** Object:  StoredProcedure [Team4].[DeleteSubscription]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Team4].[DeleteSubscription] (
	@SubscriptionId Int
)
AS
BEGIN
   SET NOCOUNT ON
DELETE FROM [Team4].[UserSubscriptions]
WHERE SubscriptionId=@SubscriptionId
End
GO
/****** Object:  StoredProcedure [Team4].[GetAllStreamers]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [Team4].[GetAllStreamers]
AS
BEGIN
SELECT * 
FROM [Team4].[StreamerList] l
End

GO
/****** Object:  StoredProcedure [Team4].[GetEmailList]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [Team4].[GetEmailList]
AS
BEGIN
SELECT [l].[Online], [u].[Email], [l].[Channel] 
FROM [Team4].[StreamerList] l
LEFT JOIN [Team4].[UserSubscriptions] s ON [l].[Streamer] = [s].[SubscriptionId]
Left JOIN [Team4].[UserLogin] u ON [u].[ID] = [s].[UserLoginId]
Where [l].[Online] =1 and s.SendEmail=1
End

GO
/****** Object:  StoredProcedure [Team4].[GetStreamer]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team4].[GetStreamer] (
	@StreamerId Int
)
AS
BEGIN
SELECT * 
FROM [Team4].[StreamerList] l
WHERE [l].[StreamerId] = @StreamerId
End

GO
/****** Object:  StoredProcedure [Team4].[GetStreamersUserSubscribedTo]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [Team4].[GetStreamersUserSubscribedTo] (
	@UserId Int
)
AS
BEGIN
SELECT [l].* 
FROM [Team4].[StreamerList] l
JOIN [Team4].[UserSubscriptions] us ON [us].[StreamerId] = [l].[StreamerId]
WHERE [us].[UserLoginId] = @UserId
End

GO
/****** Object:  StoredProcedure [Team4].[GetStreamerWithChannel]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Team4].[GetStreamerWithChannel] (
	@Channel Varchar(255)
)
AS
BEGIN
SELECT * 
FROM [Team4].[StreamerList] l
WHERE [l].[Channel] = @Channel
End

GO
/****** Object:  StoredProcedure [Team4].[GetStreamStatus]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [Team4].[GetStreamStatus]
AS
BEGIN
SELECT [l].[Online], [l].[StreamerId] 
FROM [Team4].[StreamerList] l
End

GO
/****** Object:  StoredProcedure [Team4].[GetUser]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team4].[GetUser] (
	@UserLoginId Int
)
AS
BEGIN
SELECT * 
FROM [Team4].[UserLogin] u
WHERE [u].[ID] = @UserLoginId
End

GO
/****** Object:  StoredProcedure [Team4].[GetUserWithCredentials]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Team4].[GetUserWithCredentials] (
	@Username Varchar(75),
	@Pass Varchar(250)
)
AS
BEGIN
SELECT * 
FROM [Team4].[UserLogin] u
WHERE [u].[UserName] = @Username AND [u].[Pass]=@Pass
End

GO
/****** Object:  StoredProcedure [Team4].[UpdateStreamer]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Team4].[UpdateStreamer] (
	@StreamerId int,
	@Streamer varchar(255),
	@Channel varchar(255)
)
AS
BEGIN
UPDATE [Team4].[StreamerList] SET Streamer=@Streamer, Channel=@Channel
WHERE StreamerId = @StreamerId
End

GO
/****** Object:  StoredProcedure [Team4].[UpdateStreamerOnline]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Team4].[UpdateStreamerOnline] (
	@StreamerId int,
	@Online bit
)
AS
BEGIN
UPDATE [Team4].[StreamerList] SET Online = @Online
WHERE StreamerId = @StreamerId
End

GO
/****** Object:  StoredProcedure [Team4].[UpdateSubscription]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Team4].[UpdateSubscription] (
	@SubscriptionId Int,
	@SendEmail bit,
	@Position int
)
AS
BEGIN
Update [Team4].[UserSubscriptions] Set SendEmail=@SendEmail, Position=@Position
WHERE SubscriptionId=@SubscriptionId
End
GO
/****** Object:  StoredProcedure [Team4].[UpdateUserLogin]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Team4].[UpdateUserLogin] (
	@ID int,
	@UserName varchar(75),
	@Pass varchar(250),
	@Email varchar(250),
	@LayoutSelected tinyint
)
AS
BEGIN
UPDATE [Team4].[UserLogin] SET UserName=@UserName, Pass=@Pass, Email=@Email, LayoutSelected=@LayoutSelected
WHERE ID = @ID
End

GO
/****** Object:  Table [Assess].[Answer]    Script Date: 10/16/2017 7:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Assess].[Answer](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NOT NULL,
	[Text] [varchar](150) NULL,
	[IsCorrect] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Assess].[Assessment]    Script Date: 10/16/2017 7:47:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Assess].[Assessment](
	[AssessmentID] [int] IDENTITY(1,1) NOT NULL,
	[LevelNumber] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AssessmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Assess].[Level]    Script Date: 10/16/2017 7:47:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Assess].[Level](
	[LevelNumber] [int] NOT NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LevelNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Assess].[Question]    Script Date: 10/16/2017 7:48:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Assess].[Question](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentID] [int] NOT NULL,
	[Text] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Assess].[Student]    Script Date: 10/16/2017 7:48:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Assess].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](75) NULL,
	[LastName] [varchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Assess].[StudentAssessment]    Script Date: 10/16/2017 7:48:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Assess].[StudentAssessment](
	[StudentAssessmentID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[AssessmentID] [int] NOT NULL,
	[Score] [decimal](5, 2) NULL,
	[AssessmentDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentAssessmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [Assess].[Subject]    Script Date: 10/16/2017 7:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Assess].[Subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alumni]    Script Date: 10/16/2017 7:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumni](
	[AlumniID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[AlumniID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team1].[Alumni]    Script Date: 10/16/2017 7:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team1].[Alumni](
	[AlumniID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[AlumniID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team1].[Order]    Script Date: 10/16/2017 7:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team1].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
	[ShipmentDate] [datetime] NULL,
	[IsProcessed] [bit] NULL,
	[IsCancelled] [bit] NULL,
	[IsDelivered] [bit] NULL,
	[ModifiedDate] [datetime] NULL
)

GO
/****** Object:  Table [Team1].[Product]    Script Date: 10/16/2017 7:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team1].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[UnitPrice] [decimal](7, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductDesc] [varchar](50) NULL,
	[ProductName] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team1].[ProductOrder]    Script Date: 10/16/2017 7:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team1].[ProductOrder](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL
)

GO
/****** Object:  Table [Team1].[User]    Script Date: 10/16/2017 7:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team1].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[State] [char](2) NOT NULL,
	[Phone] [char](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[DOB] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team2].[ingredient]    Script Date: 10/16/2017 7:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team2].[ingredient](
	[ingredient_id] [int] IDENTITY(1,1) NOT NULL,
	[ingredient_name] [varchar](80) NULL,
	[calories] [decimal](8, 2) NULL,
	[sodium] [decimal](8, 2) NULL,
	[fat] [decimal](8, 2) NULL,
	[carb] [decimal](8, 2) NULL,
	[protein] [decimal](8, 2) NULL,
	[sugars] [decimal](8, 2) NULL,
	[measure_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ingredient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team2].[measure]    Script Date: 10/16/2017 7:48:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team2].[measure](
	[measure_id] [int] IDENTITY(1,1) NOT NULL,
	[measure] [varchar](80) NOT NULL,
	[measure_abbr] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[measure_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team2].[order]    Script Date: 10/16/2017 7:48:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team2].[order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [datetime2](7) NULL,
	[user_id] [int] NOT NULL,
	[payment_type_id] [int] NULL,
	[amount_paid] [decimal](10, 2) NULL,
	[order_code] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team2].[order_item]    Script Date: 10/16/2017 7:48:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team2].[order_item](
	[order_item_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NULL,
	[quantity] [int] NULL,
	[item_price_total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [Team2].[payment_type]    Script Date: 10/16/2017 7:48:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team2].[payment_type](
	[payment_type_id] [int] IDENTITY(1,1) NOT NULL,
	[payment_type] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team2].[product]    Script Date: 10/16/2017 7:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team2].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](80) NULL,
	[description] [text] NULL,
	[imagefile] [varchar](80) NULL,
	[price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team2].[product_ingredient]    Script Date: 10/16/2017 7:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team2].[product_ingredient](
	[product_ingredient_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[ingredient_id] [int] NOT NULL,
	[quantity] [decimal](8, 2) NOT NULL,
	[measure_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_ingredient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [Team2].[user]    Script Date: 10/16/2017 7:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team2].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](40) NOT NULL,
	[password] [varchar](40) NOT NULL,
	[first_name] [varchar](30) NULL,
	[last_name] [varchar](30) NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](20) NULL,
	[date_created] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team2].[user_favorite]    Script Date: 10/16/2017 7:48:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team2].[user_favorite](
	[user_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [Team3].[Items]    Script Date: 10/16/2017 7:48:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team3].[Items](
	[Items] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](1000) NULL,
	[StartDate] [date] NULL,
	[DueDate] [date] NULL,
	[TaskId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Items] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team3].[Student]    Script Date: 10/16/2017 7:48:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team3].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[PassWord] [varchar](75) NULL,
	[UserName] [varchar](75) NULL,
	[Email] [varchar](75) NULL,
	[School] [varchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team3].[TaskList]    Script Date: 10/16/2017 7:48:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team3].[TaskList](
	[TaskId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](75) NULL,
	[StudentId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team4].[StreamerList]    Script Date: 10/16/2017 7:48:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team4].[StreamerList](
	[StreamerId] [int] IDENTITY(1,1) NOT NULL,
	[Streamer] [varchar](255) NOT NULL,
	[Channel] [varchar](255) NOT NULL,
	[Online] [bit] NULL,
 CONSTRAINT [PK_StreamerList] PRIMARY KEY CLUSTERED 
(
	[StreamerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team4].[UserLogin]    Script Date: 10/16/2017 7:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Team4].[UserLogin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](75) NOT NULL,
	[Pass] [varchar](250) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[LayoutSelected] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Team4].[UserSubscriptions]    Script Date: 10/16/2017 7:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Team4].[UserSubscriptions](
	[SubscriptionId] [int] IDENTITY(1,1) NOT NULL,
	[UserLoginId] [int] NOT NULL,
	[StreamerId] [int] NOT NULL,
	[SendEmail] [bit] NULL,
	[Position] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [Assess].[Answer] ADD  DEFAULT ((0)) FOR [IsCorrect]
GO
ALTER TABLE [Assess].[Answer]  WITH CHECK ADD FOREIGN KEY([QuestionID])
REFERENCES [Assess].[Question] ([QuestionID])
GO
ALTER TABLE [Assess].[Assessment]  WITH CHECK ADD FOREIGN KEY([LevelNumber])
REFERENCES [Assess].[Level] ([LevelNumber])
GO
ALTER TABLE [Assess].[Assessment]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [Assess].[Subject] ([SubjectID])
GO
ALTER TABLE [Assess].[Question]  WITH CHECK ADD FOREIGN KEY([AssessmentID])
REFERENCES [Assess].[Assessment] ([AssessmentID])
GO
ALTER TABLE [Assess].[StudentAssessment]  WITH CHECK ADD FOREIGN KEY([AssessmentID])
REFERENCES [Assess].[Assessment] ([AssessmentID])
GO
ALTER TABLE [Assess].[StudentAssessment]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [Assess].[Student] ([StudentID])
GO
ALTER TABLE [Team3].[Items]  WITH CHECK ADD FOREIGN KEY([TaskId])
REFERENCES [Team3].[TaskList] ([TaskId])
GO
ALTER TABLE [Team3].[TaskList]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [Team3].[Student] ([StudentId])
GO
ALTER TABLE [Team4].[UserSubscriptions]  WITH CHECK ADD FOREIGN KEY([StreamerId])
REFERENCES [Team4].[StreamerList] ([StreamerId])
GO
ALTER TABLE [Team4].[UserSubscriptions]  WITH CHECK ADD FOREIGN KEY([UserLoginId])
REFERENCES [Team4].[UserLogin] ([ID])
GO
