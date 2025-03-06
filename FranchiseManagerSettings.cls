/**
 * Singleton Pattern Example2
 */

public with sharing class FranchiseManagerSettings {
  FranchiseOwnerUtils utils;
  List<Account> accountsToProcess;

  public FranchiseManagerSettings(List<Account> accountsToProcess) {
    this.utils = FranchiseOwnerUtils.getInstance();
    this.accountsToProcess = accountsToProcess;
  }

  public void setRegionalFranchiseManager() {
    for (Account account : this.accountsToProcess) {
      account.OwnerId = utils.franchiseManagerByRegion.get(account.Name);
    }
  }
}
