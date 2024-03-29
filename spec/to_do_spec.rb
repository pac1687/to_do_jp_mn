require 'rspec'
require 'task'

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new('scrub the zebra')
    test_task.should be_an_instance_of Task
  end

  it 'lets you read the description out' do
    test_task = Task.new('scrub the zebra')
    test_task.description.should eq 'scrub the zebra'
  end
end

describe List do
  it 'starts out with an empty list of tasks' do
    test_list = List.new('School Stuff')
    test_list.tasks.should eq []
  end

  it 'is initialized with a name' do
    test_list = List.new('School Stuff')
    test_list.name.should eq 'School Stuff'
  end

  it 'can add tasks' do
    test_list = List.new('School Stuff')
    test_task = Task.new('Learn Ruby')
    test_list.add_task(test_task)
    test_list.tasks.should eq [test_task]
  end
end
