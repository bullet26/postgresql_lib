import { DataTypes } from 'sequelize';
import { Book } from './bookModel.js';
import { Author } from './authorModel.js';
import { Reader } from './readerModel.js';
import { Rating } from './ratingModel.js';
import { Tag } from './tagModel.js';
import { sequelize } from '../config/db.js';

const ReaderBook = sequelize.define('reader_book', {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
});

Author.hasMany(Book, { as: 'books' });
Book.belongsTo(Author);

Book.hasOne(Rating, { as: 'rating' });
Rating.belongsTo(Book);

Book.hasMany(Tag, { as: 'tags' });
Tag.belongsTo(Book);

Reader.belongsToMany(Book, { through: ReaderBook });
Book.belongsToMany(Reader, { through: ReaderBook });

export { Book, Author, Reader, Rating, Tag };
