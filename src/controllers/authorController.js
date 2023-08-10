import { authorService } from '../services/authorService.js';

const create = async (req, res) => {
    try {
        const author = await authorService.create(req.body);
        res.json(author);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

const getAll = async (req, res) => {
    try {
        const authors = await authorService.getAll(req.query);
        return res.json(authors);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

const getOne = async (req, res) => {
    try {
        if (!req.params.id) {
            return res.status(404).json({ error: 'Incorrect ID' });
        }

        const author = await authorService.getOne(req.params.id);

        return res.json(author);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

export const authorController = {
    create,
    getAll,
    getOne,
};
