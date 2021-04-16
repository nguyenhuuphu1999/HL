const { Sequelize } = require('sequelize');

const    sequelize = new Sequelize('freedbtech_truyencuoi', 'freedbtech_truyencuoi', '123456', {
    host: 'freedb.tech',
    dialect:'mysql'
  });

  module.exports = sequelize