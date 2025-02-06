from sqlite_execute_queries import connect_to_db, execute_read_query, execute_change_query, print_results


def run_exam():
    my_connector = None
    try:
        my_connector, cursor = connect_to_db('05-Feb-25-b.db')

        # a. get all movies
        all_movies = execute_read_query(cursor, 'select * from movies')
        print_results(all_movies)

        # get from user part of movie name:
        movie_name = input("please enter part of the movie name:").lower()
        get_movie_by_name_query = "select * from movies where movie_name like ?"
        movies_by_name = execute_read_query(cursor, get_movie_by_name_query, ('%' + movie_name + '%',))
        print_results(movies_by_name)

        # c. insert new movie:
        print("please enter new movie details:")
        movie_name = input("please enter the movie name:").capitalize()
        genre = input("please enter the movie's genre:").capitalize()
        country = input("please enter movie's country:").upper()
        language = input("please enter the movie's language:").capitalize()
        year = int(input("please enter the movie's release year:"))
        revenue = float(input("please the movie revenue:"))
        insert_query = '''insert into movies (movie_name,genre,country,language,year,revenue) values (?,?,?,?,?,?)'''
        execute_change_query(my_connector, cursor, insert_query, (movie_name, genre, country, language, year, revenue))
        print("insert action was completed successfully!")
    except Exception as e:
        print(e)
    finally:
        if my_connector is not None:
            my_connector.close()


if __name__ == "__main__":
    run_exam()
