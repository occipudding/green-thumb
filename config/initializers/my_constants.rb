require 'wikipedia'

TREE_LIST = Wikipedia.find("List of tree genera").content.scan(/\'\'\w+\'\'|\[\[\w+\]\]/).map { |tree| tree.gsub /\'|\[|\]/, "" }[2..-1]
