import { Author } from '../models/index.js';

const create = author => {
    return Author.create(author);
};

const findAll = ({ offset, limit, findValue }) => {
    return Author.findAndCountAll({ where: findValue, include: [{ model: Book, as: 'books' }], limit, offset });
};

const findByID = id => {
    return Author.findOne({
        where: { id },
        include: [{ model: Book, as: 'books' }],
    });
};

export const AuthorDAL = {
    create,
    findAll,
    findByID,
};
