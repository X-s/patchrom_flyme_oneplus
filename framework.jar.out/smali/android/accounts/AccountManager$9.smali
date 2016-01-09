.class Landroid/accounts/AccountManager$9;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$optionsIn:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/os/Handler;

    .prologue
    .line 1266
    .local p4, "x2":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$9;->this$0:Landroid/accounts/AccountManager;

    iput-object p5, p0, Landroid/accounts/AccountManager$9;->val$account:Landroid/accounts/Account;

    iput-object p6, p0, Landroid/accounts/AccountManager$9;->val$authTokenType:Ljava/lang/String;

    iput-object p7, p0, Landroid/accounts/AccountManager$9;->val$optionsIn:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1269
    const-string v0, "AccountManager"

    const-string v1, "doWork"

    invoke-static {v0, v1}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    const-string v7, "AccountManager|doWork|--end"

    .line 1271
    .local v7, "paras":Ljava/lang/String;
    invoke-static {v7}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 1274
    .end local v7    # "paras":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManager$9;->this$0:Landroid/accounts/AccountManager;

    # getter for: Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;
    invoke-static {v0}, Landroid/accounts/AccountManager;->access$000(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManager$9;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Landroid/accounts/AccountManager$9;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Landroid/accounts/AccountManager$9;->val$authTokenType:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/accounts/AccountManager$9;->val$optionsIn:Landroid/os/Bundle;

    invoke-interface/range {v0 .. v6}, Landroid/accounts/IAccountManager;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 1277
    return-void
.end method
