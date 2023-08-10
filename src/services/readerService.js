import { ReaderDAL } from '../DAL/ReaderDAL.js';

const create = async reader => {
    const createdReader = await ReaderDAL.create(reader);
    return createdReader;
};

const getAll = async query => {
    let { page, limit, ...paramsQuery } = query;
    const findValue = { ...paramsQuery };
    page ||= 1;
    limit ||= 50;
    const offset = page * limit - limit;

    const readers = await ReaderDAL.findAll({ offset, limit, findValue });
    return readers;
};

const getOne = async id => {
    if (!id) {
        throw new Error('ID was not set');
    }
    const book = await ReaderDAL.findByID(id);
    return book;
};

export const readerService = {
    create,
    getAll,
    getOne,
};
