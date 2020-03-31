select user(), database();

-- CGV mcv 구조 구현 시험
-- 영화관리시스템
DROP SCHEMA IF EXISTS ygj_movie;

-- 영화관리시스템
CREATE SCHEMA ygj_movie;

-- 영화
CREATE TABLE ygj_movie.movie (
	m_no      INT          NOT NULL COMMENT '식별자', -- 식별자
	m_title   VARCHAR(30)  NOT NULL COMMENT '제목', -- 제목
	m_explain TEXT         NOT NULL COMMENT '상세설명', -- 상세설명
	m_file    VARCHAR(100) NOT NULL COMMENT '이미지', -- 이미지
	m_time    VARCHAR(100) NOT NULL COMMENT '상영시간' -- 상영시간
)
COMMENT '영화';

-- 영화
ALTER TABLE ygj_movie.movie
	ADD CONSTRAINT PK_movie -- 영화 기본키
		PRIMARY KEY (
			m_no -- 식별자
		);

ALTER TABLE ygj_movie.movie
	MODIFY COLUMN m_no INT NOT NULL AUTO_INCREMENT COMMENT '식별자';

use ygj_movie;

select * from movie;