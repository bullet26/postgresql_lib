import { Author, Book } from '../models/index.js';

const create = author => {
    return Author.create(author);
};

const findAll = ({ offset, limit, findValue }) => {
    return Author.findAndCountAll({
        where: findValue,
        include: [{ model: Book, as: 'books', attributes: ['title', 'description'] }],
        attributes: { exclude: ['createdAt', 'updatedAt'] },
        limit,
        offset,
        order: [
            ['surname', 'ASC'],
            [{ model: Book, as: 'books' }, 'title', 'ASC'],
        ],
    });
};

const findByID = id => {
    return Author.findOne({
        where: { id },
        include: [{ model: Book, as: 'books', attributes: ['title', 'description'] }],
        attributes: { exclude: ['createdAt', 'updatedAt'] },
    });
};

export const AuthorDAL = {
    create,
    findAll,
    findByID,
};
