class Task
    attr_reader :content, :id, :complete, :create_at, :updated_at
    @@current_id = 1

    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @create_at = Time.now
        @updated_at = nil
    end

    def complete?
        @complete
    end

    def complete!
        @complete = true
    end

    def make_incomplete!
        @complete = false
    end

    def update_content!(new_content)
        @content = new_content
        @updated_at = Time.now
        @content
    end
end

class TodoList
    attr_reader :tasks

    def initialize(user)
        @@tasks = []
        @@sorted_tasks = []
        @@user = user
        @todo_store = YAML::Store.new("tasks.yml")
    end

    def add_task(task)
        @@tasks << task
    end

    def delete_task(task_id)
        @@tasks.delete_if { |task|
            task.id == task_id
        }
    end

    def find_task_by_id(task_id)
        @@tasks.each do |task|
            if task.id == task_id
                task.content

            else
                nil
            end
        end
    end

    def sort_by_created(order)
        if order == "ASC"
            @@sorted_tasks = @@tasks.sort { | task1, task2 | task1.create_at <=> task2.create_at }

        elsif order == "DESC"
            @@sorted_tasks = @@tasks.sort { | task1, task2 | task2.create_at <=> task1.create_at }
        end
    end

    def save
        @todo_store.transaction do
        @todo_store[@user] = @tasks
        end
    end
end

# task1 = Task.new("Buy the milk")
# task2 = Task.new("Wash the car")

# puts task1.create_at
# puts task1.update_content!("Update :)")
# puts task1.updated_at

# task_list1 = TodoList.new("Antonio")
# task_list1.add_task(task1)
# task_list1.add_task(task2)

# task_list1.sort_by_created("ASC")



RSpec.describe "Task class methods" do
    before :each do
        @task = Task.new("Test")
    end

    it "complete status should return false when new task is created" do
        expect(@task.complete).to eq(false)
    end

    it "should return false whether the task is not completed" do
        @task.make_incomplete!
        expect(@task.complete?).to eq(false)
    end

    it "should return true whether the task is completed" do
        @task.complete!
        expect(@task.complete?).to be true
    end
end

describe "TodoList class methods" do
    before :each do
        @task = Task.new("Test")
        @array_tasks = TodoList.new
    end

    it "returns true if our array of tasks is not empty" do
        expect(@array_tasks.add_task(@task)).not_to be_empty
    end

    it "returns empty array of tasks" do
        @array_tasks.add_task(@task)
        expect(@array_tasks.delete_task(7)).to be_empty
    end
end







