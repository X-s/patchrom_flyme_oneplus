.class public Lcom/android/systemui_ex/recents/RecentsPackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecentsPackageReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 38
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "android.intent.extra.DATA_REMOVED"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-static {p1}, Lcom/android/systemui_ex/recents/LockedStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/recents/LockedStateManager;

    move-result-object v2

    .line 40
    .local v2, "lockstate":Lcom/android/systemui_ex/recents/LockedStateManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/recents/LockedStateManager;->removeLockState(Ljava/lang/String;)V

    .line 44
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "lockstate":Lcom/android/systemui_ex/recents/LockedStateManager;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
