.class Lcom/android/server/accounts/AccountManagerService$8;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$callerPkgSigDigest:[B

.field final synthetic val$callerUid:I

.field final synthetic val$customTokens:Z

.field final synthetic val$loginOptions:Landroid/os/Bundle;

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$permissionGranted:Z


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "this$0_1"    # Lcom/android/server/accounts/AccountManagerService;
    .param p3, "$anonymous0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p4, "$anonymous1"    # Landroid/accounts/IAccountManagerResponse;
    .param p5, "$anonymous2"    # Ljava/lang/String;
    .param p6, "$anonymous3"    # Z
    .param p7, "$anonymous4"    # Z
    .param p8, "$anonymous5"    # Ljava/lang/String;
    .param p9, "$anonymous6"    # Z
    .param p10, "val$loginOptions"    # Landroid/os/Bundle;
    .param p11, "val$account"    # Landroid/accounts/Account;
    .param p12, "val$authTokenType"    # Ljava/lang/String;
    .param p13, "val$notifyOnAuthFailure"    # Z
    .param p14, "val$permissionGranted"    # Z
    .param p15, "val$callerUid"    # I
    .param p16, "val$customTokens"    # Z
    .param p17, "val$callerPkg"    # Ljava/lang/String;
    .param p18, "val$callerPkgSigDigest"    # [B
    .param p19, "val$accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 2597
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    move/from16 v0, p15

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 2604
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 2628
    invoke-static {p1, v6}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2629
    if-eqz p1, :cond_5

    .line 2630
    const-string/jumbo v0, "authTokenLabelKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2631
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2632
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 2634
    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    .line 2635
    new-instance v4, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v4, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    .line 2636
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    .line 2631
    invoke-static/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->-wrap0(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 2638
    .local v4, "intent":Landroid/content/Intent;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2639
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "intent"

    invoke-virtual {v10, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2640
    invoke-virtual {p0, v10}, Lcom/android/server/accounts/AccountManagerService$8;->onResult(Landroid/os/Bundle;)V

    .line 2641
    return-void

    .line 2643
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2644
    .local v7, "authToken":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 2645
    const-string/jumbo v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2646
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2647
    .local v13, "type":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2649
    :cond_1
    const-string/jumbo v0, "the type and name should not be empty"

    .line 2648
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$8;->onError(ILjava/lang/String;)V

    .line 2650
    return-void

    .line 2652
    :cond_2
    new-instance v12, Landroid/accounts/Account;

    invoke-direct {v12, v11, v13}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    .local v12, "resultAccount":Landroid/accounts/Account;
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-nez v0, :cond_3

    .line 2654
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2655
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 2657
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    .line 2654
    invoke-static {v0, v1, v12, v2, v7}, Lcom/android/server/accounts/AccountManagerService;->-wrap6(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2661
    :cond_3
    const-string/jumbo v0, "android.accounts.expiry"

    const-wide/16 v2, 0x0

    .line 2660
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2662
    .local v8, "expiryMillis":J
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-eqz v0, :cond_4

    .line 2663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-lez v0, :cond_4

    .line 2664
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2665
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 2666
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 2667
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    .line 2668
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    .line 2669
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    .line 2664
    invoke-static/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService;->-wrap18(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    .line 2675
    .end local v8    # "expiryMillis":J
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "resultAccount":Landroid/accounts/Account;
    .end local v13    # "type":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 2676
    .restart local v4    # "intent":Landroid/content/Intent;
    if-eqz v4, :cond_5

    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-eqz v0, :cond_6

    .line 2691
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "authToken":Ljava/lang/String;
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 2627
    return-void

    .line 2684
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "authToken":Ljava/lang/String;
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2683
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accounts/AccountManagerService$8;->checkKeyIntent(ILandroid/content/Intent;)V

    .line 2686
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 2687
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    const-string/jumbo v3, "authFailedMessage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2688
    const-string/jumbo v5, "android"

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    .line 2686
    invoke-static/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->-wrap15(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2619
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    if-nez v0, :cond_0

    .line 2620
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    .line 2616
    :goto_0
    return-void

    .line 2622
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 2608
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getAuthToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2609
    const-string/jumbo v1, ", "

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2609
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2610
    const-string/jumbo v1, ", authTokenType "

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2610
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2611
    const-string/jumbo v1, ", loginOptions "

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2611
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2612
    const-string/jumbo v1, ", notifyOnAuthFailure "

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2612
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
