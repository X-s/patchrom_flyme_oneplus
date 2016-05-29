.class public Lcom/android/settings_ex/users/ProfileUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileUpdateReceiver.java"


# static fields
.field private static final KEY_PROFILE_NAME_COPIED_ONCE:Ljava/lang/String; = "name_copied_once"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static copyProfileName(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 50
    .local v2, "userId":I
    const-string v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 51
    .local v1, "um":Landroid/os/UserManager;
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/settings_ex/Utils;->getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "profileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 53
    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    new-instance v0, Lcom/android/settings_ex/users/ProfileUpdateReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/users/ProfileUpdateReceiver$1;-><init>(Lcom/android/settings_ex/users/ProfileUpdateReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/users/ProfileUpdateReceiver$1;->start()V

    .line 46
    return-void
.end method
