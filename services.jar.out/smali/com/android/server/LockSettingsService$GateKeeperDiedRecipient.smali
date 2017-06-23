.class Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GateKeeperDiedRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LockSettingsService;
    .param p2, "x1"    # Lcom/android/server/LockSettingsService$1;

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$500(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/gatekeeper/IGateKeeperService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 867
    iget-object v0, p0, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;->this$0:Lcom/android/server/LockSettingsService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    invoke-static {v0, v1}, Lcom/android/server/LockSettingsService;->access$502(Lcom/android/server/LockSettingsService;Landroid/service/gatekeeper/IGateKeeperService;)Landroid/service/gatekeeper/IGateKeeperService;

    .line 868
    return-void
.end method
