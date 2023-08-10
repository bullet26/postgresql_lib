import { DataTypes } from 'sequelize';
import { sequelize } from '../config/db.js';

export const Rating = sequelize.define('rating', {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true, comment: 'Унікальний ідентифікатор рейтингу' },
    rating: { type: DataTypes.INTEGER, allowNull: false, comment: 'Рейтинг книги' },
});
