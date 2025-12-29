module.exports = ({ env }) => ({
	'users-permissions': {
		config: {
			jwtSecret: env('JWT_SECRET', env('ADMIN_JWT_SECRET', 'change_me_jwt_secret')),
		},
	},
});
