class Room

  def initialize(room_id, capacity, entry_fee)
    @room_id = room_id
    @capacity = capacity
    @guest_list = []
    @playlist = []
    @entry_fee = entry_fee
    @entry_till = []
  end

  def get_room_id
    return @room_id
  end

  def get_room_capacity
    return @capacity
  end

  def add_guest_to_room(guest)
    @guest_list << guest
  end

  def get_room_guest_count()
    @guest_list.count
  end

  def remove_guest_from_room(guest)
    return @guest_list.delete(guest)
  end

  def add_song_to_room(song)
    @playlist << song
  end

  def get_playlist_count()
    @playlist.count
  end

  def remove_song_from_playlist(song)
    return @playlist.delete(song)
  end

  def check_room_capacity()
    if get_room_guest_count >= get_room_capacity
      return "Sorry Room #{@room_id} Is Full"
    end
  end

  def get_entry_fee_for_room
    return @entry_fee
  end

  def get_entry_till_total
    return @entry_till.sum
  end

  def add_entry_fee_to_till
    @entry_till << @entry_fee
    return @entry_till.sum
  end

  # def deny_entry_due_to_lack_of_cash ()
  #   if @guest.guest_entry_cash >= @entry_fee # not sure on how to call another method from the guest rb file, if it can be done at all....?!
  #     return "Sorry, you don't have enough money to pay the entry fee"
  #   end
  # end






end # END of CLASS