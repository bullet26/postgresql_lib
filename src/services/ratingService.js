import { RatingDAL } from '../DAL/RatingDAL.js';

const create = async rating => {
    const createdRatingBook = await RatingDAL.create(rating);
    return createdRatingBook;
};

const getAll = async () => {
    const ratings = await RatingDAL.findAll();
    return ratings;
};

export const ratingService = {
    create,
    getAll,
};
