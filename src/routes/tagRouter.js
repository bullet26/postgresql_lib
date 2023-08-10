import { Router } from 'express';
import { tagController } from '../controllers/tagController.js';

export const tagRouter = new Router();

tagRouter.post('/', tagController.create);
tagRouter.get('/', tagController.getAll);
