import { sequelize } from './src/config/db.js';
import { app } from './index.js';
import { PORT } from './src/config/config.js';

const start = async () => {
    try {
        await sequelize.authenticate();
        await sequelize.sync();
        console.log('Connected to DB');

        app.listen(PORT, err => {
            if (err) throw new Error(err);
            console.log(`Server listening on port http://localhost:${PORT}`);
        });
    } catch (err) {
        console.log(err);
    }
};

start();
