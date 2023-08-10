import express from 'express';
import cors from 'cors';
import { router } from './src/routes/index.js';

export const app = express();
app.use(cors());
app.use(express.json());

app.use('/api', router);
