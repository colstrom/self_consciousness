require 'moneta'
require 'fileutils'

module SelfConsciousness
  def self.normalize
    FileUtils.mkdir '.self_consciousness'
    FileUtils.cp '.self_identity/dependencies', '.self_consciousness/dependencies'
  end

  def self.doubt
    identity = Moneta.new :File, dir: '.self_identity'
    consciousness = Moneta.new :File, dir: '.self_consciousness'
  end
end

# realize