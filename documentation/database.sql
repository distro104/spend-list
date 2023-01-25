/* NAME:
 * DATE:
 * DESCRITION: 
 *
 */

IF NOT EXISTS (SELECT * FROM SYS.DATABASES WHERE NAME='DB_EXPEND_LIST')
BEGIN
    CREATE DATABASE DB_EXPEND_LIST;
END
GO

USE DB_EXPEND_LIST;
GO
--------------------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS TB_LOCAL(
    ID INT(11) NOT NULL,
    NAME VARCHAR(255) NOT NULL,
    DESCRIPTION TEXT
);

CREATE DATABASE IF NOT EXISTS TB_PERSON(
    ID INT(11) NOT NULL,
    NAME VARCHAR(255) NOT NULL,
    USER TEXT NOT NULL,
    PASS VARCHAR(32) NOT NULL
    EMAIL VARCHAR(255)
);

CREATE DATABASE IF NOT EXISTS TB_DEFINITION(
    ID INT(11) NOT NULL,
    ID_LOCAL INT(11) NOT NULL,
    DESCRIPTION TEXT NOT NULL,
    DATE_INI DATE,
    DATE_END DATE
);

CREATE DATABASE IF NOT EXISTS TB_EXPENSE(
    ID_DEFINITION INT(11) NOT NULL,
    ID_PERSON INT(11) NOT NULL,
    NOTE TEXT,
    DATE_INCLUDE DATE NOT NULL
);

CREATE DATABASE IF NOT EXISTS TB_TYPE(
    ID INT(11) NOT NULL,
    NAME VARCHAR(255),
    DESCRIPTION TEXT
);

CREATE DATABASE IF NOT EXISTS TB_ITEM(
    ID INT(11) NOT NULL,
    NAME IVARCHAR(255) NOT NULL,
    DESCRIPTION TEXT
);

CREATE DATABASE IF NOT EXISTS TB_KEYWORD(
    ID INT(11) NOT NULL,
    NAME IVARCHAR(255) NOT NULL,
    DESCRIPTION TEXT
);

CREATE DATABASE IF NOT EXISTS TB_EXPENSE_ITEM(
    ID_EXPENSE INT(11) NOT NULL,
    ID_ITEM INT(11) NOT NULL,
    PRICE DECIMAL(5,2)
);

---------------------------------------------------------

