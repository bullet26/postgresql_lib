import { Router } from 'express';

import { bookController } from '../controllers/bookController.js';

export const bookRouter = new Router();

bookRouter.post('/', bookController.create);
bookRouter.get('/', bookController.getAll);
bookRouter.get('/:id', bookController.getOne);
