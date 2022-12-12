const express = require("express");
const app = express();
const mysql = require("mysql");
const bodyParser = require("body-parser");
const bcrypt = require("bcryptjs");

// parse application/json
app.use(bodyParser.json());

// create MySQL connection
const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "jeetubangari",
  database: "lattice_innovations",
});

// connect to MySQL
con.connect(function (err) {
  if (err) throw err;
  console.log("Connected to MySQL");
});

// create new patient
app.post("/patients", function (req, res) {
  const {
    name,
    address,
    email,
    phone_number,
    password,
    patient_photo,
    psychiatrist_id,
  } = req.body;

  // validate input
  if (
    !name ||
    !address ||
    !email ||
    !password ||
    !patient_photo ||
    !psychiatrist_id
  ) {
    res.status(400).send({
      success: false,
      error:
        "Name, address, email, password, patient photo and psychiatrist ID are required",
    });
    return;
  }

  // validate address
  if (address.length < 10) {
    res.status(400).send({
      success: false,
      error: "Invalid address. Address must be at least 10 characters long",
    });
    return;
  }

  // validate email
  if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)) {
    res.status(400).send({ success: false, error: "Invalid email address" });
    return;
  }

  // validate phone number
  if (!/^\d{10,}$/.test(phone_number)) {
    res.status(400).send({
      success: false,
      error:
        "Invalid phone number. Phone number must be at least 10 digits long",
    });
    return;
  }

  // validate password
  if (!/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,15}$/.test(password)) {
    res.status(400).send({
      success: false,
      error:
        "Invalid password. Password must contain one upper character, one lower character and a number. Max length 15 and min length 8",
    });
    return;
  }

  // hash the password
  var salt = bcrypt.genSaltSync(10);
  var hashedPassword = bcrypt.hashSync(password, salt);

  // insert into database
  con.query(
    "INSERT INTO Patients (name, address, email, phone_number, password, patient_photo, psychiatrist_id) VALUES (?, ?, ?, ?, ?, ?, ?)",
    [
      name,
      address,
      email,
      phone_number,
      hashedPassword,
      patient_photo,
      psychiatrist_id,
    ],
    function (error, results) {
      if (error) return res.status(500).send(error);
      res
        .status(201)
        .send({ success: true, message: "Patient registered successfully!" });
    }
  );
});

// get psychiatrists and their details for a given hospital
app.get("/psychiatrists", function (req, res) {
  const { hospital_id } = req.body;

  // validate input
  if (!hospital_id) {
    res.status(400).send({ success: false, error: "Hospital ID is required" });
    return;
  }

  // get psychiatrists and their details from database
  con.query(
    `SELECT p.id, p.name, h.name as hospital_name, COUNT(patients.id) AS patients_count
    FROM psychiatrists p
    LEFT JOIN patients ON patients.psychiatrist_id = p.id
    INNER JOIN hospitals h ON h.id = p.hospital_id
    WHERE p.hospital_id = ?
    GROUP BY p.id
     `,
    [hospital_id],
    function (error, results) {
      if (error) return res.status(500).send(error);

      // if no hospital with given hospital_id
      if (results.length === 0) {
        return res
          .status(404)
          .send({ success: false, error: "No hospitals found with given ID" });
      }

      // get the hospital name and total number of psychiatrists and patients
      const hospitalName = results[0].hospital_name;
      const totalPsychiatrists = results.length;
      const totalPatients = results.reduce(
        (total, p) => total + p.patients_count,
        0
      );

      // return the hospital name, total number of psychiatrists and patients, and the details of each psychiatrist
      return res.status(200).json({
        hospitalName,
        totalPsychiatrists,
        totalPatients,
        psychiatrists: results.map((p) => ({
          id: p.id,
          name: p.name,
          patientsCount: p.patients_count,
        })),
      });
    }
  );
});

// start server
app.listen(3000, function () {
  console.log("Server listening on port 3000");
});
