$nestingDepth = 0
$nestingWidth = '..'

def log description, &block


  puts "#{$nestingWidth * $nestingDepth + description} code block is running"
  $nestingDepth = $nestingDepth + 1

  returnVal = block.call

  $nestingDepth = $nestingDepth - 1
  puts "#{$nestingWidth * $nestingDepth + description } code block is done. returned: #{returnVal}"

end

# block_proc = Proc.new do
#   5 + 5
# end

log "Adding 5 to 5" do
  log "Nesting In 2 + 2" do
    log "Another Nest of foobar" do
      "fooBar"
    end
    2 + 2
  end
  5 + 5
end
