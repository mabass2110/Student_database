
# Student Database Insertion Script

## Overview
This Bash script is designed to read data from two CSV files—`courses.csv` and `students.csv`—and insert the corresponding information into a PostgreSQL database named `students`. The script manages entries in the `majors`, `courses`, and `majors_courses` tables, as well as student records.

## Prerequisites
- PostgreSQL installed and running.
- A database named `students` with the following tables:
  - `majors` (columns: `major_id`, `major`)
  - `courses` (columns: `course_id`, `course`)
  - `majors_courses` (columns: `major_id`, `course_id`)
  - `students` (columns: `student_id`, `first_name`, `last_name`, `major_id`, `gpa`)
  
## Usage
1. Ensure that the CSV files (`courses.csv` and `students.csv`) are in the same directory as the script.
2. Make the script executable:
   ```bash
   chmod +x insert_students.sh
   ```
3. Run the script:
   ```bash
   ./insert_students.sh
   ```

## CSV Data

### courses.csv
```csv
major,course
Database Administration,Data Structures and Algorithms
Web Development,Web Programming
Database Administration,Database Systems
Data Science,Data Structures and Algorithms
Network Engineering,Computer Networks
Database Administration,SQL
Data Science,Machine Learning
Network Engineering,Computer Systems
Computer Programming,Computer Networks
Database Administration,Web Applications
Game Design,Artificial Intelligence
Data Science,Python
Computer Programming,Object-Oriented Programming
System Administration,Computer Systems
Game Design,Calculus
Web Development,Data Structures and Algorithms
Data Science,Calculus
Web Development,Object-Oriented Programming
Game Design,Game Architecture
System Administration,Computer Networks
Game Design,Algorithms
System Administration,UNIX
System Administration,Server Administration
Computer Programming,Computer Systems
Computer Programming,Python
Network Engineering,Network Security
Web Development,Web Applications
Network Engineering,Algorithms
```

### students.csv
```csv
first_name,last_name,major,gpa
Rhea,Kellems,Database Administration,2.5
Emma,Gilbert,null,null
Kimberly,Whitley,Web Development,3.8
Jimmy,Felipe,Database Administration,3.7
Kyle,Stimson,null,2.8
Casares,Hijo,Game Design,4.0
Noe,Savage,null,3.6
Sterling,Boss,Game Design,3.9
Brian,Davis,null,2.3
Kaija,Uronen,Game Design,3.7
Faye,Conn,Game Design,2.1
Efren,Reilly,Web Development,3.9
Danh,Nhung,null,2.4
Maxine,Hagenes,Database Administration,2.9
Larry,Saunders,Data Science,2.2
Karl,Kuhar,Web Development,null
Lieke,Hazenveld,Game Design,3.5
Obie,Hilpert,Web Development,null
Peter,Booysen,null,2.9
Nathan,Turner,Database Administration,3.3
Gerald,Osiki,Data Science,2.2
Vanya,Hassanah,Game Design,4.0
Roxelana,Florescu,Database Administration,3.2
Helene,Parker,Data Science,3.4
Mariana,Russel,Web Development,1.8
Ajit,Dhungel,null,3.0
Mehdi,Vandenberghe,Database Administration,1.9
Dejon,Howell,Web Development,4.0
Aliya,Gulgowski,System Administration,2.6
Ana,Tupajic,Data Science,3.1
Hugo,Duran,null,3.8
```

## Script Functionality
- **Truncation**: The script first clears existing data from the `students`, `majors`, `courses`, and `majors_courses` tables to ensure fresh data insertion.
- **Inserting Courses and Majors**:
  - Reads each line of `courses.csv` and checks if the major exists. If not, it inserts the major and checks for the course. If the course does not exist, it inserts the course and links them in the `majors_courses` table.
- **Inserting Students**:
  - Reads each line of `students.csv`, retrieves the `major_id` for the specified major (or sets it to `null` if the major is not found), and inserts the student data into the `students` table.

## Notes
- Ensure that the CSV files do not have header rows when the script runs.
- Error handling for database operations is minimal; consider expanding this for production environments.
- The script uses `freecodecamp` as the default PostgreSQL username. Adjust the `PSQL` variable as necessary for different environments.

## License
This script is open source. Feel free to modify and use it as needed!
