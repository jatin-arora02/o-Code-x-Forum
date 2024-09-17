let mysql = require("mysql");
let conn = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "system",
  database: "techblog",
  port: 3306,
});

conn.connect((error) => {
  if (error) {
    console.log(error.message);
  }
  console.log("Connection created");
});
module.exports = conn;
