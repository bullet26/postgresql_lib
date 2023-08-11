import { BookDAL } from '../DAL/BookDAL.js';
import { Op } from 'sequelize';

const create = async book => {
    const createdBook = await BookDAL.create(book);

    return createdBook;
};

const getAll = async query => {
    let { page, limit, ...paramsQuery } = query;
    let findValue = { ...paramsQuery };
    let { title } = findValue;
    if (!!title) {
        findValue = {
            ...findValue,
            title: {
                [Op.substring]: title,
            },
        };
        console.log(findValue);
    }

    page ||= 1;
    limit ||= 50;
    const offset = page * limit - limit;

    const books = await BookDAL.findAll({ offset, limit, findValue });
    return books;
};

const getOne = async id => {
    if (!id) {
        throw new Error('ID was not set');
    }
    const book = await BookDAL.findByID(id);
    return book;
};

export const bookService = {
    create,
    getAll,
    getOne,
};
