pragma solidity >=0.4.21;


contract TodoList {
    uint256 public taskCount = 0; // state variable

    struct Task {
        /// for a single task in todo
        uint256 id; // Id for that task
        string content; // content of that task.
        bool completed; // for checkbox
    }

    mapping(uint256 => Task) public tasks; /// a storage for that particular Task.

    constructor() public {
        createTask("Check out My gitHUb");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
