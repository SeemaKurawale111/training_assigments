public class ActiveUsers
{
    public void printUsers()
    {
        Map<id, User> userMap = new Map<id, User>([Select Id, Name from User Where isActive = True]);
        for(User u : userMap.values())
        {
            system.debug(u);
        }
    }
}