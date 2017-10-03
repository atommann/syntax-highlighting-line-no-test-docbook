/**
 * 使用「Adapter」Design Pattern 
 */
abstract class HumanWorkerAdpater implements IWorker {
   public void work();
   public void eat();
}
abstract class RobotWorker implements IWorker {
   public void work();
}
IWoker HumanWorker = new HumanWorkerAdpater() {
   public work() {
      // working....
   }
   public eat() {
      // eating....
   }
}
IWoker RobotWorker = new RobotWorkerAdpater() {
   public work() {
      // working....
   }
}

