import { DataTypes } from 'sequelize';
import { sequelize } from '../config/db.js';

export const Book = sequelize.define('book', {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true, comment: 'Унікальний ідентифікатор книги' },
    title: { type: DataTypes.STRING, allowNull: false, comment: 'Назва книги' },
    description: { type: DataTypes.STRING, comment: 'Опис книги' },
    bookCover: { type: DataTypes.STRING, comment: 'Посилання на обкладинку книги' },
});
