import { tagService } from '../services/tagService.js';

const create = async (req, res) => {
    try {
        const tag = await tagService.create(req.body);
        res.json(tag);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

const getAll = async (req, res) => {
    try {
        const tags = await tagService.getAll();
        return res.json(tags);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

export const tagController = {
    create,
    getAll,
};
