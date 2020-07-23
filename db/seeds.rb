Artist.destroy_all
Instrument.destroy_all
ArtistInstrument.destroy_all

Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

Instrument.create(name: "Guitar", classification: "Strings")
Instrument.create(name: "Violin", classification: "Strings")
Instrument.create(name: "Flute", classification: "Woodwind")
Instrument.create(name: "Xylophone", classification: "Percussion")


# ArtistInstrument.create(artist_id: 1, instrument_id: 1)
# ArtistInstrument.create(artist_id: 1, instrument_id: 2)
# ArtistInstrument.create(artist_id: 1, instrument_id: 3)
# ArtistInstrument.create(artist_id: 1, instrument_id: 4)
# ArtistInstrument.create(artist_id: 2, instrument_id: 4)
# ArtistInstrument.create(artist_id: 2, instrument_id: 2)
# ArtistInstrument.create(artist_id: 3, instrument_id: 3)
# ArtistInstrument.create(artist_id: 4, instrument_id: 3)
# ArtistInstrument.create(artist_id: 4, instrument_id: 2)
# ArtistInstrument.create(artist_id: 4, instrument_id: 1)
# ArtistInstrument.create(artist_id: 5, instrument_id: 4)
# ArtistInstrument.create(artist_id: 5, instrument_id: 3)

10.times do
    ArtistInstrument.create(artist_id: Artist.all.sample.id, instrument_id: Instrument.all.sample.id)
end


