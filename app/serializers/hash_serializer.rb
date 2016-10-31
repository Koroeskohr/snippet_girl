class HashSerializer
  def self.dump(hash)
    hash.to_json
  end

  def self.load(hash)
    if hash.is_a? Hash || hash.nil?
      (hash || {}).with_indifferent_access
    else
      hash
    end
  end
end