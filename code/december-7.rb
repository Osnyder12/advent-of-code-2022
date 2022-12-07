require 'pry'

class December7

  def initialize()
    @file_hash = {}
  end

  def call
    File.readlines('data/december-7.txt').each do |line|
      binding.pry
      determine_file(line) if line.include?('cd') && !line.include?('..')
    end
  end

  private

  def determine_file(line)
    hash = @file_hash
    binding.pry
    # if line.split
  end
end

# use.fetch to build structure and get files

# cd (dir_name, ..)
# dir
# ls
# numbers