const Pool = require("../config/db");

const selectAllProduct = (limit, offset, sortby, sort, search) => {
  return Pool.query(
    `SELECT * FROM products ORDER BY ${sortby} ${sort} LIMIT ${limit} OFFSET ${offset}`
  );
};

const selectProduct = (id) => {
  return Pool.query(`SELECT * FROM products WHERE id=${id}`);
};

const insertProduct = (data) => {
  const { id, name, price, stock, image, brand, id_category } = data;
  return Pool.query(
    `INSERT INTO products(id,name,price,stock,image,brand,id_category) VALUES(${id},'${name}',${price},${stock},'${image}','${brand}',${id_category})`
  );
};

const updateProduct = (data) => {
  const { id, name, price, stock, image, brand, id_category } = data;
  return Pool.query(
    `UPDATE products SET name='${name}', price=${price}, stock=${stock}, image='${image}', brand='${brand}', id_category=${id_category} WHERE id=${id}`
  );
};

const deleteProduct = (id) => {
  return Pool.query(`DELETE FROM products WHERE id=${id}`);
};

const countData = () => {
  return Pool.query("SELECT COUNT(*) FROM products");
};

const findId = (id) => {
  return new Promise((resolve, reject) =>
    Pool.query(`SELECT id FROM products WHERE id=${id}`, (error, result) => {
      if (!error) {
        resolve(result);
      } else {
        reject(error);
      }
    })
  );
};

const searching = (name) => {
  return Pool.query(
    `SELECT * FROM products WHERE products.name ILIKE '%${name}%'`
  );
};

module.exports = {
  selectAllProduct,
  selectProduct,
  insertProduct,
  updateProduct,
  deleteProduct,
  countData,
  findId,
  searching,
};
