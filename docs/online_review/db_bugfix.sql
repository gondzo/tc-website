CREATE INDEX SUBJECTIVE_RESP_I1 ON SUBJECTIVE_RESP (SUBJECTIVE_RESP_ID ASC);
ALTER TABLE QUESTION_TEMPLATE ADD TEMPLATE_ID DEC(18);
ALTER TABLE SUBMISSION ADD SUBMISSION_DATE DATETIME YEAR TO FRACTION(3)
    DEFAULT CURRENT YEAR TO FRACTION(3) NOT NULL;
UPDATE SUBMISSION SET SUBMISSION_DATE = MODIFY_DATE;

CREATE TABLE PROJECT_TEMPLATE (
    PT_ID              SERIAL8 NOT NULL,
    PROJECT_ID         DEC(18) NOT NULL,
    SCORECARD_TYPE     DEC(7) NOT NULL,
    TEMPLATE_ID        DEC(18) NOT NULL
);

ALTER TABLE PROJECT_TEMPLATE
    ADD CONSTRAINT PRIMARY KEY (PT_ID);

CREATE TABLE CURRENT_TEMPLATE (
    CT_ID              SERIAL8 NOT NULL,
    PROJECT_TYPE_ID    DEC(18) NOT NULL,
    SCORECARD_TYPE     DEC(7) NOT NULL,
    TEMPLATE_ID        DEC(18) NOT NULL
);

ALTER TABLE CURRENT_TEMPLATE
    ADD CONSTRAINT PRIMARY KEY (CT_ID);

-- set design screening templates
INSERT INTO PROJECT_TEMPLATE (PROJECT_ID,SCORECARD_TYPE,TEMPLATE_ID)
SELECT UNIQUE P.PROJECT_ID,1,1
FROM PROJECT P, SCORECARD S
WHERE
(P.CUR_VERSION=1 AND S.CUR_VERSION=1 AND
 P.PROJECT_TYPE_ID=1 AND S.SCORECARD_TYPE=1 AND
 S.PROJECT_ID = P.PROJECT_ID) OR
P.PROJECT_ID IN
(SELECT P.PROJECT_ID  
 FROM PROJECT P, PHASE_INSTANCE PI
 WHERE P.CUR_VERSION=1 AND PI.CUR_VERSION=1 AND
 P.PHASE_INSTANCE_ID = PI.PHASE_INSTANCE_ID AND
 P.PROJECT_TYPE_ID = 1 AND
 PI.PHASE_ID > 1);

-- set design review templates
INSERT INTO PROJECT_TEMPLATE (PROJECT_ID,SCORECARD_TYPE,TEMPLATE_ID)
SELECT UNIQUE P.PROJECT_ID,2,2
FROM PROJECT P, SCORECARD S
WHERE
(P.CUR_VERSION=1 AND S.CUR_VERSION=1 AND
 P.PROJECT_TYPE_ID=1 AND S.SCORECARD_TYPE=2 AND
 S.PROJECT_ID = P.PROJECT_ID) OR
P.PROJECT_ID IN
(SELECT P.PROJECT_ID  
 FROM PROJECT P, PHASE_INSTANCE PI
 WHERE P.CUR_VERSION=1 AND PI.CUR_VERSION=1 AND
 P.PHASE_INSTANCE_ID = PI.PHASE_INSTANCE_ID AND
 P.PROJECT_TYPE_ID = 1 AND
 PI.PHASE_ID > 2);
 
-- set development screening templates
INSERT INTO PROJECT_TEMPLATE (PROJECT_ID,SCORECARD_TYPE,TEMPLATE_ID)
SELECT UNIQUE P.PROJECT_ID,1,3
FROM PROJECT P, SCORECARD S
WHERE
(P.CUR_VERSION=1 AND S.CUR_VERSION=1 AND
 P.PROJECT_TYPE_ID=2 AND S.SCORECARD_TYPE=1 AND
 S.PROJECT_ID = P.PROJECT_ID) OR
P.PROJECT_ID IN
(SELECT P.PROJECT_ID
 FROM PROJECT P, PHASE_INSTANCE PI
 WHERE P.CUR_VERSION=1 AND PI.CUR_VERSION=1 AND
 P.PHASE_INSTANCE_ID = PI.PHASE_INSTANCE_ID AND
 P.PROJECT_TYPE_ID = 2 AND
 PI.PHASE_ID > 1);

-- set development review templates
INSERT INTO PROJECT_TEMPLATE (PROJECT_ID,SCORECARD_TYPE,TEMPLATE_ID)
SELECT UNIQUE P.PROJECT_ID,2,4
FROM PROJECT P, SCORECARD S
WHERE
(P.CUR_VERSION=1 AND S.CUR_VERSION=1 AND
 P.PROJECT_TYPE_ID=2 AND S.SCORECARD_TYPE=2 AND
 S.PROJECT_ID = P.PROJECT_ID) OR
P.PROJECT_ID IN
(SELECT P.PROJECT_ID
 FROM PROJECT P, PHASE_INSTANCE PI
 WHERE P.CUR_VERSION=1 AND PI.CUR_VERSION=1 AND
 P.PHASE_INSTANCE_ID = PI.PHASE_INSTANCE_ID AND
 P.PROJECT_TYPE_ID = 2 AND
 PI.PHASE_ID > 2);

UPDATE QUESTION_TEMPLATE
SET TEMPLATE_ID = 1
WHERE PROJECT_TYPE = 1 AND SCORECARD_TYPE = 1;
UPDATE QUESTION_TEMPLATE
SET TEMPLATE_ID = 2
WHERE PROJECT_TYPE = 1 AND SCORECARD_TYPE = 2;
UPDATE QUESTION_TEMPLATE
SET TEMPLATE_ID = 3
WHERE PROJECT_TYPE = 2 AND SCORECARD_TYPE = 1;
UPDATE QUESTION_TEMPLATE
SET TEMPLATE_ID = 4
WHERE PROJECT_TYPE = 2 AND SCORECARD_TYPE = 2;

INSERT INTO CURRENT_TEMPLATE (PROJECT_TYPE_ID,SCORECARD_TYPE,TEMPLATE_ID)
VALUES (1,1,1);
INSERT INTO CURRENT_TEMPLATE (PROJECT_TYPE_ID,SCORECARD_TYPE,TEMPLATE_ID)
VALUES (1,2,2);
INSERT INTO CURRENT_TEMPLATE (PROJECT_TYPE_ID,SCORECARD_TYPE,TEMPLATE_ID)
VALUES (2,1,3);
INSERT INTO CURRENT_TEMPLATE (PROJECT_TYPE_ID,SCORECARD_TYPE,TEMPLATE_ID)
VALUES (2,2,4);
