import { DataTypes } from 'sequelize';
import { sequelize } from '../config/db.js';

export const Tag = sequelize.define('tag', {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true, comment: 'Унікальний ідентифікатор мітки' },
    title: { type: DataTypes.STRING, allowNull: false, comment: 'Назва мітки' },
});
