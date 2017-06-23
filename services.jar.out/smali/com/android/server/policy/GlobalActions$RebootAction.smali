.class final Lcom/android/server/policy/GlobalActions$RebootAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RebootAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$RebootAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 404
    const v0, 0x1080370

    const v1, 0x1040089

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 406
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "x1"    # Lcom/android/server/policy/GlobalActions$1;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$RebootAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 420
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$RebootAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$1000(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$RebootAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mKeyguardSecure:Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$1100(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$RebootAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isAdvancedRebootEnabled()Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$1200(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    :cond_1
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 424
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x1

    # getter for: Lcom/android/server/policy/GlobalActions;->REBOOT:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1300()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GlobalActions"

    const-string v3, "PowerManager service died!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 430
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$RebootAction;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$RebootAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$1000(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$RebootAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mKeyguardSecure:Z
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$1100(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$RebootAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1400(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZZZ)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    return v0
.end method
