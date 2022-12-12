**libraries/frameworks used**

- nodejs & express js for the backend
- mysql for connecting to the database
- body-parser to parse json data
- bcrypt to hash password

**endpoints**
| Endpoint | Method | Description |
|----------------|--------|--------------------------------------------------------------------------------------------|
| /patients | POST | register patient |
| /psychiatrists | GET | fetch all the psychiatrists, their count along with IDs and patient details for a hospital |

---

**NOTE**

in the second endpoint hospital_id is sent from the frontend in req.body

---

> I haven't used Postman or Swagger. I have used Thunder Client (a vs code extension) which works same as Postman and exported collection and it can be imported in Postman also I guess.

> I have uploaded a tables file which contains the structures of tables of the database

**clone the repo using**

```
git clone https://github.com/jeetu1603/hospital.git
```

**install node_modules using**

```
npm install
```

**start the server using**

```
node app
```

---

**NOTE**

i haven't used nodemon so if the server crashes or you edit the files if you have to manually start the server using `node app` in order to see the changes

and one more thing i have used regular expressions for the validation though i don't know how they works i just searched for them on internet i could have used any validation library but i guess it is fine

---
