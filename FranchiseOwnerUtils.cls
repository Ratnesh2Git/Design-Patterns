/**
 * Singleton Pattern Example2
 */


public with sharing class FranchiseOwnerUtils {
    private static final String USER_ROLE = 'Franchise_Manager';
    private static FranchiseOwnerUtils utils {get; private set;}

    public Map<String, String> franchiseManagerByRegion {get;private set;}

    private FranchiseOwnerUtils() {
        this.franchiseManagerByRegion = new Map<String, String>();
        List<User> managers = [Select Id, Name from User where UserRole.DeveloperName =:USER_ROLE];

        for(User u:managers) {
            franchiseManagerByRegion.put(u.Name, u.Id);
        }
    }

    public static FranchiseOwnerUtils getInstance() {
        if(utils == null) {
            utils = new FranchiseOwnerUtils();
        }
        return utils;
    }

}