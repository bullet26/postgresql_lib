import { Sequelize } from 'sequelize';
import { DB_NAME, DB_USER, DB_PASSWORD, DB_HOST, DB_PORT } from './config.js';

export const sequelize = new Sequelize(DB_NAME, DB_USER, DB_PASSWORD, {
    dialect: 'postgres',
    host: DB_HOST,
    port: DB_PORT,
});
