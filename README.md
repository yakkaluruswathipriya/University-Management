# University Management System

## 📚 Step-by-Step Detailed Implementation

### 1. Database Setup
The system uses a MySQL database named **`universitymanagement`** with the following tables:

- **`student`** – Stores student personal and academic information  
- **`teacher`** – Contains faculty details  
- **`marks`** – Holds students' exam marks  
- **`login`** – Manages user credentials  

---

### 2. Connection Management
The `Conn` class handles all database connections:

- Loads the MySQL JDBC driver  
- Establishes a connection via `DriverManager`  
- Creates a `Statement` object to run queries  
- Connection parameters are hardcoded (`username: root`, no password)  

---

### 3. User Authentication
The `Login` class is responsible for authentication:

- Provides fields for username and password  
- Verifies credentials against the `login` table  
- On success, it launches the main application (`main_class`)  

---

### 4. Student Management

#### `AddStudent`  
- Collects student academic and personal data  
- Randomly generates roll numbers  
- Inserts records into the `student` table  

#### `updateStudent`  
- Loads existing data using roll number  
- Allows updates to address, contact, and academic info  
- Updates the `student` table  

#### `StudentDetails`  
- Displays all students in a table  
- Search by roll number  
- Options to **Add**, **Update**, or **Print** records  

---

### 5. Faculty Administration

#### `AddFaculty`  
- Gathers faculty information  
- Auto-generates employee ID  
- Inserts into the `teacher` table  

#### `Redefine`  
- Loads teacher details by employee ID  
- Allows updates to contact and professional info  
- Updates the `teacher` table  

#### `TeacherDetails`  
- Displays all faculty in a table  
- Search by employee ID  
- Menu options to **Add**, **Update**, or **Print** records  

---

### 6. Examination System

#### `EnterMarks`  
- Selects a student by roll number and semester  
- Inputs grades for 5 subjects  
- Stores data in the `marks` table  

#### `ExaminationDetails`  
- Displays the list of students  
- Clicking a student shows detailed marks  
- "Result" button provides a complete marksheet view  

---

### 7. Common UI and Code Patterns

- All UI screens extend `JFrame` for window rendering  
- `ActionListener` handles button interactions  
- `JOptionPane` used for alerts and confirmations  
- Database operations wrapped in `try-catch` blocks for safety  
- Consistent UI with color-coded panels and forms  
