.class Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedProfileBroadcastReceiver"
.end annotation


# instance fields
.field private listeningToManagedProfileEvents:Z

.field final synthetic this$0:Lcom/android/settings_ex/accounts/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/accounts/AccountSettings;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/accounts/AccountSettings;Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/accounts/AccountSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 629
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 631
    if-eqz v1, :cond_1

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->-wrap2(Lcom/android/settings_ex/accounts/AccountSettings;)V

    .line 635
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->-wrap0(Lcom/android/settings_ex/accounts/AccountSettings;)V

    .line 637
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->updateUi()V

    .line 638
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->-wrap1(Lcom/android/settings_ex/accounts/AccountSettings;)V

    .line 641
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 642
    return-void

    .line 644
    :cond_1
    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot handle received broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 648
    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    if-nez v1, :cond_0

    .line 649
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 650
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 653
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    .line 647
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    .line 657
    :cond_0
    return-void
.end method
