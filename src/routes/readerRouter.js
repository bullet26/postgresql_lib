import { Router } from 'express';
import { readerController } from '../controllers/readerController.js';

export const readerRouter = new Router();

readerRouter.post('/', readerController.create);
readerRouter.get('/', readerController.getAll);
readerRouter.get('/:id', readerController.getOne);
