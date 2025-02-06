import sqlite3


def connect_to_db(db_name):
    try:

        connector = sqlite3.connect(db_name)
        connector.row_factory = sqlite3.Row  # allow to address the values by column name
        cursor = connector.cursor()
        return connector, cursor
    except sqlite3.Error as e:
        print(e)
        raise "failed connection to db with error" + (' '.join(e.args))


def execute_read_query(cursor, query, parameters=None):
    try:
        print("execute query:", query)
        if parameters is not None:
            cursor.execute(query, parameters)

        else:
            cursor.execute(query)
        rows = cursor.fetchall()
        return rows
    except sqlite3.OperationalError as e:
        raise e


def execute_change_query(connector, cursor, query, parameters=None):
    try:
        if parameters is not None:
            cursor.execute(query, parameters)
        else:
            cursor.execute(query)
        connector.commit()  ## this will write the changes to the DB
    except sqlite3.OperationalError as e:
        raise e


def print_results(rows):
    rows_list = [tuple(row) for row in rows]
    for row in rows_list:
        print(row)


if __name__ == "__main__":
    pass
