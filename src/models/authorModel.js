import { DataTypes } from 'sequelize';
import { sequelize } from '../config/db.js';

export const Author = sequelize.define('author', {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true, comment: 'Унікальний ідентифікатор автора' },
    surname: { type: DataTypes.STRING, allowNull: false, comment: 'Прізвище автора' },
    name: { type: DataTypes.STRING, comment: "Ім'я автора" },
});
