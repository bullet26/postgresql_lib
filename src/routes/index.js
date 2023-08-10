import { Router } from 'express';

import { authorRouter } from './authorRouter.js';
import { bookRouter } from './bookRouter.js';
import { ratingRouter } from './ratingRouter.js';
import { readerRouter } from './readerRouter.js';
import { tagRouter } from './tagRouter.js';

export const router = new Router();

router.use('/author', authorRouter);
router.use('/book', bookRouter);
router.use('/rating', ratingRouter);
router.use('/reader', readerRouter);
router.use('/tag', tagRouter);
