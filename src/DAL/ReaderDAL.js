import { Reader } from '../models/index.js';

const create = reader => {
    return Reader.create(reader);
};

const findAll = ({ offset, limit, findValue }) => {
    return Reader.findAndCountAll({ where: findValue, limit, offset });
};

const findByID = id => {
    return Reader.findOne({
        where: { id },
    });
};

export const ReaderDAL = {
    create,
    findAll,
    findByID,
};
