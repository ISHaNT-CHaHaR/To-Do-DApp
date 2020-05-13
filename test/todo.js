const todoList = artifacts.require('TodoList');

contract('TodoList', () => {
   it('to check if fine', async () => {
      const todo = await todoList.deployed();
      await console.log(todo.address);
      const task = await todo.tasks(1);
      console.log(task);
      console.log(task.id);
      console.log(task.id.toNumber());
      console.log(task.content);
      assert(todo.address !== '');
   });
});
