import { Reader, Book } from '../models/index.js';

const create = async readerData => {
    const reader = await Reader.create(readerData);
    const { books } = readerData;
    if (!!books) {
        await reader.addBook(books);
    }

    return reader;
};

const findAll = ({ offset, limit, findValue }) => {
    return Reader.findAndCountAll({
        where: findValue,
        attributes: { exclude: ['createdAt', 'updatedAt'] },
        limit,
        offset,
        include: [
            {
                model: Book,
                as: 'books',
                attributes: ['title', 'description'],
                through: { attributes: [] }, // Вимкнення виводу додаткових полів з проміжної таблиці
            },
        ],
        order: [
            ['surname', 'ASC'],
            [{ model: Book, as: 'books' }, 'title', 'ASC'],
        ],
    });
};

const findByID = id => {
    return Reader.findOne({
        where: { id },
        attributes: { exclude: ['createdAt', 'updatedAt'] },
        include: [
            {
                model: Book,
                as: 'books',
                attributes: ['title', 'description'],
                through: { attributes: [] }, // Вимкнення виводу додаткових полів з проміжної таблиці
            },
        ],
    });
};

export const ReaderDAL = {
    create,
    findAll,
    findByID,
};
