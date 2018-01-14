.class Lcom/android/server/policy/OemPhoneWindowManager$9;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager;->notifyAppLaunchFailedLw(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 2045
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$9;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/OemPhoneWindowManager$9;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/policy/OemPhoneWindowManager$9;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2049
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$9;->val$pkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$9;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$9;->val$intent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2047
    return-void

    .line 2050
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
