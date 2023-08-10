import { Router } from 'express';

import { authorController } from '../controllers/authorController.js';

export const authorRouter = new Router();

authorRouter.post('/', authorController.create);
authorRouter.get('/', authorController.getAll);
authorRouter.get('/:id', authorController.getOne);
