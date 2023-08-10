import { DataTypes } from 'sequelize';
import { sequelize } from '../config/db.js';

export const Reader = sequelize.define('reader', {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true, comment: 'Унікальний ідентифікатор читача' },
    surname: { type: DataTypes.STRING, allowNull: false, comment: 'Прізвище читача' },
    name: { type: DataTypes.STRING, comment: "Ім'я читача" },
    email: { type: DataTypes.STRING, unique: true, comment: 'Електронна пошта читача' },
    password: { type: DataTypes.STRING, comment: 'Пароль читача' },
    status: { type: DataTypes.STRING, defaultValue: 'active', comment: 'Статус читача' },
});
