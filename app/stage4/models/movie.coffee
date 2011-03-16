mongoose = require 'mongoose'

movieSchema = new mongoose.Schema({
	id: Number,
	name: String
});

mongoose.model 'movie', movieSchema
