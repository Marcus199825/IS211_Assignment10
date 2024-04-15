import sqlite3

def query_pets():
    conn = sqlite3.connect('pets.db')
    cursor = conn.cursor()

    while True:
        person_id = input("Enter a person's ID number or -1 to exit: ")
        if person_id == '-1':
            break

        cursor.execute("SELECT * FROM person WHERE id = ?", (person_id,))
        person = cursor.fetchone()
        if person:
            print(f"{person[1]} {person[2]}, {person[3]} years old")
            cursor.execute("SELECT p.* FROM pet p JOIN person_pet pp ON p.id = pp.pet_id WHERE pp.person_id = ?", (person_id,))
            pets = cursor.fetchall()
            for pet in pets:
                print(f"{person[1]} {person[2]} owned {pet[1]}, a {pet[2]}, that was {pet[3]} years old")
        else:
            print("No person found with that ID.")

    conn.close()

if __name__ == '__main__':
    query_pets()

