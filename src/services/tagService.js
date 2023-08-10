import { TagDAL } from '../DAL/TagDAL.js';

const create = async tag => {
    const createdTag = await TagDAL.create(tag);
    return createdTag;
};

const getAll = async () => {
    const tags = await TagDAL.findAll();
    return tags;
};

export const tagService = {
    create,
    getAll,
};
