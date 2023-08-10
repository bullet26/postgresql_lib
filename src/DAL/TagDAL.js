import { Tag } from '../models/index.js';

const create = tag => {
    return Tag.create(tag);
};

const findAll = () => {
    return Tag.findAll();
};

export const TagDAL = {
    create,
    findAll,
};
