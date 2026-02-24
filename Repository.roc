module [initialize!, insert_day_statistics!]

import pf.Sqlite
import pf.Stdout

# Database schema for Solarman data
initialize! = |db_path|
    # Create tables for Day data
    (
        Sqlite.execute!(
            {
                path: db_path,
                query:
                """
                 CREATE TABLE IF NOT EXISTS day_statistics (
                     id INTEGER PRIMARY KEY AUTOINCREMENT,
                     systemId INTEGER NOT NULL,
                     year INTEGER NOT NULL,
                     month INTEGER NOT NULL,
                     day INTEGER NOT NULL,
                     generationValue REAL NOT NULL,
                     incomeValue REAL NOT NULL,
                     fullPowerHoursDay REAL NOT NULL,
                     acceptDay TEXT NOT NULL,
                     UNIQUE(systemId, year, month, day)
                 );
                """,
                bindings: [],
            },
        )
    )?

    (
        Sqlite.execute!(
            {
                path: db_path,
                query:
                """
                CREATE TABLE IF NOT EXISTS day_records (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    statistics_id INTEGER NOT NULL,
                    systemId INTEGER NOT NULL,
                    acceptDay INTEGER NOT NULL,
                    acceptMonth INTEGER NOT NULL,
                    generationPower REAL NOT NULL,
                    dateTime REAL NOT NULL,
                    generationCapacity REAL NOT NULL,
                    timeZoneOffset INTEGER NOT NULL,
                    FOREIGN KEY(statistics_id) REFERENCES day_statistics(id),
                    UNIQUE(statistics_id, dateTime)
                );
                """,
                bindings: [],
            },
        )
    )?

    # Create tables for Month data
    (
        Sqlite.execute!(
            {
                path: db_path,
                query:
                """
                 CREATE TABLE IF NOT EXISTS month_statistics (
                     id INTEGER PRIMARY KEY AUTOINCREMENT,
                     systemId INTEGER NOT NULL,
                     year INTEGER NOT NULL,
                     month INTEGER NOT NULL,
                     day INTEGER NOT NULL,
                     generationValue REAL NOT NULL,
                     incomeValue REAL NOT NULL,
                     fullPowerHoursDay REAL NOT NULL,
                     UNIQUE(systemId, year, month)
                 );
                """,
                bindings: [],
            },
        )
    )?

    Sqlite.execute!(
        {
            path: db_path,
            query:
            """
             CREATE TABLE IF NOT EXISTS month_records (
                 id INTEGER PRIMARY KEY AUTOINCREMENT,
                 statistics_id INTEGER NOT NULL,
                 systemId INTEGER NOT NULL,
                 year INTEGER NOT NULL,
                 month INTEGER NOT NULL,
                 day INTEGER NOT NULL,
                 generationValue REAL NOT NULL,
                 incomeValue REAL NOT NULL,
                 fullPowerHoursDay REAL NOT NULL,
                 acceptDay TEXT NOT NULL,
                 FOREIGN KEY(statistics_id) REFERENCES month_statistics(id),
                 UNIQUE(statistics_id, day)
             );
            """,
            bindings: [],
        },
    )?

    # Create tables for Year data
    Sqlite.execute!(
        {
            path: db_path,
            query:
            """
             CREATE TABLE IF NOT EXISTS year_statistics (
                 id INTEGER PRIMARY KEY AUTOINCREMENT,
                 systemId INTEGER NOT NULL,
                 year INTEGER NOT NULL,
                 month INTEGER NOT NULL,
                 day INTEGER NOT NULL,
                 generationValue REAL NOT NULL,
                 incomeValue REAL NOT NULL,
                 fullPowerHoursDay REAL NOT NULL,
                 UNIQUE(systemId, year)
             );
            """,
            bindings: [],
        },
    )?

    Sqlite.execute!(
        {
            path: db_path,
            query:
            """
             CREATE TABLE IF NOT EXISTS year_records (
                 id INTEGER PRIMARY KEY AUTOINCREMENT,
                 statistics_id INTEGER NOT NULL,
                 systemId INTEGER NOT NULL,
                 year INTEGER NOT NULL,
                 month INTEGER NOT NULL,
                 day INTEGER NOT NULL,
                 generationValue REAL NOT NULL,
                 incomeValue REAL NOT NULL,
                 fullPowerHoursDay REAL NOT NULL,
                 FOREIGN KEY(statistics_id) REFERENCES year_statistics(id),
                 UNIQUE(statistics_id, month)
             );
            """,
            bindings: [],
        },
    )?

    # Enable foreign key constraints
    Sqlite.execute!(
        {
            path: db_path,
            query: "PRAGMA foreign_keys = ON;",
            bindings: [],
        },
    )

# Helper functions for inserting data

insert_day_statistics! = |db_path, stats|
    Sqlite.execute!(
        {
            path: db_path,
            query:
            """
            INSERT OR REPLACE INTO day_statistics
            (systemId, year, month, day, generationValue, incomeValue, fullPowerHoursDay, acceptDay)
            VALUES (:systemId, :year, :month, :day, :generationValue, :incomeValue, :fullPowerHoursDay, :acceptDay)
            """,
            bindings: [
                { name: ":systemId", value: stats.systemId },
                { name: ":year", value: stats.year },
                { name: ":month", value: stats.month },
                { name: ":day", value: stats.day },
                { name: ":generationValue", value: stats.generationValue },
                { name: ":incomeValue", value: stats.incomeValue },
                { name: ":fullPowerHoursDay", value: stats.fullPowerHoursDay },
                { name: ":acceptDay", value: stats.acceptDay },
            ],
        },
    )

insert_day_record! = |db_path, stats_id, record|
    Sqlite.execute!(
        {
            path: db_path,
            query:
            """
             INSERT OR REPLACE INTO day_records
             (statistics_id, systemId, acceptDay, acceptMonth, generationPower, dateTime, generationCapacity, timeZoneOffset)
             VALUES (:stats_id, :systemId, :acceptDay, :acceptMonth, :generationPower, :dateTime, :generationCapacity, :timeZoneOffset)
            """,
            bindings: [
                { name: ":stats_id", value: stats_id },
                { name: ":systemId", value: record.systemId },
                { name: ":acceptDay", value: record.acceptDay },
                { name: ":acceptMonth", value: record.acceptMonth },
                { name: ":generationPower", value: record.generationPower },
                { name: ":dateTime", value: record.dateTime },
                { name: ":generationCapacity", value: record.generationCapacity },
                { name: ":timeZoneOffset", value: record.timeZoneOffset },
            ],
        },
    )

insert_month_statistics! = |db_path, stats|
    Sqlite.execute!(
        {
            path: db_path,
            query:
            """
             INSERT OR REPLACE INTO month_statistics
             (systemId, year, month, day, generationValue, incomeValue, fullPowerHoursDay)
             VALUES (:systemId, :year, :month, :day, :generationValue, :incomeValue, :fullPowerHoursDay)
            """,
            bindings: [
                { name: ":systemId", value: stats.systemId },
                { name: ":year", value: stats.year },
                { name: ":month", value: stats.month },
                { name: ":day", value: stats.day },
                { name: ":generationValue", value: stats.generationValue },
                { name: ":incomeValue", value: stats.incomeValue },
                { name: ":fullPowerHoursDay", value: stats.fullPowerHoursDay },
            ],
        },
    )

insert_month_record! = |db_path, stats_id, record|
    Sqlite.execute!(
        {
            path: db_path,
            query:
            """
             INSERT OR REPLACE INTO month_records
             (statistics_id, systemId, year, month, day, generationValue, incomeValue, fullPowerHoursDay, acceptDay)
             VALUES (:stats_id, :systemId, :year, :month, :day, :generationValue, :incomeValue, :fullPowerHoursDay, :acceptDay)
            """,
            bindings: [
                { name: ":stats_id", value: stats_id },
                { name: ":systemId", value: record.systemId },
                { name: ":year", value: record.year },
                { name: ":month", value: record.month },
                { name: ":day", value: record.day },
                { name: ":generationValue", value: record.generationValue },
                { name: ":incomeValue", value: record.incomeValue },
                { name: ":fullPowerHoursDay", value: record.fullPowerHoursDay },
                { name: ":acceptDay", value: record.acceptDay },
            ],
        },
    )

insert_year_statistics! = |db_path, stats|
    Sqlite.execute!(
        {
            path: db_path,
            query:
            """
             INSERT OR REPLACE INTO year_statistics
             (systemId, year, month, day, generationValue, incomeValue, fullPowerHoursDay)
             VALUES (:systemId, :year, :month, :day, :generationValue, :incomeValue, :fullPowerHoursDay)
            """,
            bindings: [
                { name: ":systemId", value: stats.systemId },
                { name: ":year", value: stats.year },
                { name: ":month", value: stats.month },
                { name: ":day", value: stats.day },
                { name: ":generationValue", value: stats.generationValue },
                { name: ":incomeValue", value: stats.incomeValue },
                { name: ":fullPowerHoursDay", value: stats.fullPowerHoursDay },
            ],
        },
    )

insert_year_record! = |db_path, stats_id, record|
    Sqlite.execute!(
        {
            path: db_path,
            query:
            """
             INSERT OR REPLACE INTO year_records
             (statistics_id, systemId, year, month, day, generationValue, incomeValue, fullPowerHoursDay)
             VALUES (:stats_id, :systemId, :year, :month, :day, :generationValue, :incomeValue, :fullPowerHoursDay)
            """,
            bindings: [
                { name: ":stats_id", value: stats_id },
                { name: ":systemId", value: record.systemId },
                { name: ":year", value: record.year },
                { name: ":month", value: record.month },
                { name: ":day", value: record.day },
                { name: ":generationValue", value: record.generationValue },
                { name: ":incomeValue", value: record.incomeValue },
                { name: ":fullPowerHoursDay", value: record.fullPowerHoursDay },
            ],
        },
    )
