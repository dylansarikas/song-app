class SongsController < ApplicationController

  def index
    songs = Song.all
    render json:  songs.as_json
  end

  def create
    song1 = Song.create(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year]
    )
    song1.save
    render json: song1.as_json
  end

  def show
    number = params[:id].to_i
    song1 = Song.find(number)
    render json: song1.as_json
  end

  def update
    number = params[:id].to_i
    song1 = Song.find(number)
    song1.title = params[:title] || song1.title
    song1.album = params[:album] || song1.album
    song1.artist = params[:artist] || song1.artist
    song1.year = params[:year] || song1.year
    song1.save
    render json: song1.as_json
  end

  def delete
    number = params[:id].to_i
    song1 = Song.find(number)
    song1.destroy
    render json:{message: "The song #{song1.name} was successfully obliterated! (destroyed)"}
  end

end
