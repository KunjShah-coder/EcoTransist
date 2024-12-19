# EcoTransit Rewards

EcoTransit Rewards is a project aimed at mitigating the environmental impacts of transportation systems. It incentivizes eco-friendly commuting practices by rewarding users for choosing sustainable modes of transportation, such as walking, cycling, carpooling, or using public transit.

## Features

- **User-friendly Interface:** Allows users to easily log their daily commutes and track their environmental impact.
- **Reward System:** Provides eco-points for sustainable commuting habits, which can be redeemed for rewards.
- **Analytics Dashboard:** Offers insights into carbon savings, commute patterns, and overall impact.
- **Community Challenges:** Encourages users to participate in group challenges to promote collective action.

## Technologies Used

- **Frontend:** HTML, CSS, JavaScript, and EJS for building dynamic and responsive web pages.
- **Backend:** [Node.js](https://nodejs.org/) and [Express.js](https://expressjs.com/) for server-side operations.
- **Database:** SQLite for storing user data and commute logs.
- **Authentication:** [OAuth 2.0](https://oauth.net/2/) for secure login.
- **APIs:** Integration with Google Maps API for route tracking.

## Setup and Installation

1. Download and install the required software:
   - [Node.js](https://nodejs.org/) (latest LTS version recommended).
   - SQLite for database management.

2. Clone this repository:
   ```bash
   git clone https://github.com/your-username/EcoTransitRewards.git
   ```

3. Navigate to the project directory:
   ```bash
   cd EcoTransitRewards
   ```

4. Install backend dependencies:
   ```bash
   cd backend
   npm install
   ```

5. Set up environment variables in a `.env` file for the backend:
   ```plaintext
   SQLITE_DB_PATH=./database/eco_transit_rewards.db
   GOOGLE_MAPS_API_KEY=<your-google-maps-api-key>
   JWT_SECRET=<your-jwt-secret>
   ```

   - Replace `SQLITE_DB_PATH` with the path to your SQLite database file.
   - Add your Google Maps API key for route tracking.
   - Set a strong `JWT_SECRET` for authentication.

6. Initialize the SQLite database (if not already created):
   ```bash
   npx sequelize-cli db:migrate
   ```

7. Start the backend server:
   ```bash
   npm start
   ```

8. Open the project in your browser:
   - Navigate to `http://localhost:3000` (or the port specified in your server configuration).

## How to Use

1. Sign up or log in to the application.
2. Log your daily commutes using the integrated Google Maps feature.
3. Earn eco-points based on the sustainability of your commuting mode.
4. Redeem your points for exciting rewards or participate in community challenges.

## Contribution Guidelines

We welcome contributions from the community! To contribute:

1. Fork the repository and create a new branch for your feature or bugfix.
2. Make your changes and ensure the code is clean and well-documented.
3. Submit a pull request with a clear description of your changes.

## Acknowledgments

- Thanks to the Encode club for their support and collaboration.
- Special mention to our mentors and teammates for their valuable guidance and efforts.
