module SlabModule
  def self.retrieve_slabs
   @slabs = Slab.all
  end
end