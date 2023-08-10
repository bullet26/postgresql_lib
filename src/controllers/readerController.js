import { readerService } from '../services/readerService.js';

const create = async (req, res) => {
    try {
        const reader = await readerService.create(req.body);
        res.json(reader);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

const getAll = async (req, res) => {
    try {
        const readers = await readerService.getAll(req.query);
        return res.json(readers);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

const getOne = async (req, res) => {
    try {
        if (!req.params.id) {
            return res.status(404).json({ error: 'Incorrect ID' });
        }

        const reader = await readerService.getOne(req.params.id);

        return res.json(reader);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

export const readerController = {
    create,
    getAll,
    getOne,
};
