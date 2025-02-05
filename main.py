import sqlite_execute_queries


def run_exam():
    my_connector = None
    try:
        my_connector, cursor = sqlite_execute_queries.connect_to_db()

    except Exception as e:
        print(e)
    finally:
        if my_connector is not None:
            my_connector.close()


if __name__ == "__main__":
    run_exam()
