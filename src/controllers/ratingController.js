import { ratingService } from '../services/ratingService.js';

const create = async (req, res) => {
    try {
        const rating = await ratingService.create(req.body);
        res.json(rating);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

const getAll = async (req, res) => {
    try {
        const ratings = await ratingService.getAll();
        return res.json(ratings);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

export const ratingController = {
    create,
    getAll,
};
