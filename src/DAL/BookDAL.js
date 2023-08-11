import { Book, Tag, Rating, Author } from '../models/index.js';

const create = book => {
    return Book.create(book);
};

const findAll = ({ offset, limit, findValue }) => {
    return Book.findAndCountAll({
        where: findValue,
        include: [
            { model: Author, as: 'author', attributes: ['name', 'surname'] },
            { model: Tag, as: 'tags', attributes: ['title'] },
            { model: Rating, as: 'rating', attributes: ['rate'] },
        ],
        attributes: { exclude: ['createdAt', 'updatedAt'] },
        limit,
        offset,
        order: [['title', 'ASC']],
    });
};

const findByID = id => {
    return Book.findOne({
        where: { id },
        include: [
            { model: Author, as: 'author', attributes: ['name', 'surname'] },
            { model: Tag, as: 'tags', attributes: ['title'] },
            { model: Rating, as: 'rating', attributes: ['rate'] },
        ],
        attributes: { exclude: ['createdAt', 'updatedAt'] },
    });
};

export const BookDAL = {
    create,
    findAll,
    findByID,
};
