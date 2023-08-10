import { Router } from 'express';
import { ratingController } from '../controllers/ratingController.js';

export const ratingRouter = new Router();

ratingRouter.post('/', ratingController.create);
ratingRouter.get('/', ratingController.getAll);
