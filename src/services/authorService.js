import { AuthorDAL } from '../DAL/AuthorDAL.js';

const create = async author => {
    const createdAuthor = await AuthorDAL.create(author);
    return createdAuthor;
};

const getAll = async query => {
    let { page, limit, ...paramsQuery } = query;
    const findValue = { ...paramsQuery };
    page ||= 1;
    limit ||= 50;
    const offset = page * limit - limit;

    const authors = await AuthorDAL.findAll({ offset, limit, findValue });
    return authors;
};

const getOne = async id => {
    if (!id) {
        throw new Error('ID was not set');
    }
    const author = await AuthorDAL.findByID(id);
    return author;
};

export const authorService = {
    create,
    getAll,
    getOne,
};
