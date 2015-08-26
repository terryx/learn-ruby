def run_block(block)
  print 'Running a '
  block.call
  puts "...done\n"
end

# def app
#   run_block lambda {
#     print 'lambda'; return
#   }
#   run_block proc {
#     print 'proc'; return
#   }
# end

def app
  run_block proc {
    print 'proc'
    return
  }
  run_block lambda {
    print 'lambda'
    return
  }
end

app

# proc stop within return and end all the current process
# lambda will continue

# think proc as case and break in a loop
# think lambda as each loop without break
