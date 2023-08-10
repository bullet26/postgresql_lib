import { Book, Tag, Rating } from '../models/index.js';

const create = book => {
    const { tags, rating } = book;
    if (!!tags) {
        tags = JSON.parse(tags);
        tags.forEach(item =>
            Tag.create({
                title: item.title,
                bookId: book.id,
            })
        );
    }
    if (!!rating) {
        Rating.create({
            rating,
            bookId: book.id,
        });
    }
    return Book.create(book);
};

const findAll = ({ offset, limit, findValue }) => {
    return Book.findAndCountAll({ where: findValue, include: [{ model: Book, as: 'books' }], limit, offset });
};

const findByID = id => {
    return Book.findOne({
        where: { id },
        include: [
            { model: Tag, as: 'tags' },
            { model: Rating, as: 'rating' },
        ],
    });
};

export const BookDAL = {
    create,
    findAll,
    findByID,
};
