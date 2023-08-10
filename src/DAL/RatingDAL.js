import { Rating } from '../models/index.js';

const create = rating => {
    return Rating.create(rating);
};

const findAll = () => {
    return Rating.findAll();
};

export const RatingDAL = {
    create,
    findAll,
};
