import { bookService } from '../services/bookService.js';

const create = async (req, res) => {
    try {
        const book = await bookService.create(req.body);
        res.json(book);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

const getAll = async (req, res) => {
    try {
        const books = await bookService.getAll(req.query);
        return res.json(books);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

const getOne = async (req, res) => {
    try {
        if (!req.params.id) {
            return res.status(404).json({ error: 'Incorrect ID' });
        }

        const book = await bookService.getOne(req.params.id);

        return res.json(book);
    } catch (e) {
        res.status(500).json(e.message);
    }
};

export const bookController = {
    create,
    getAll,
    getOne,
};
