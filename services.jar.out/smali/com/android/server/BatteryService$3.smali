.class Lcom/android/server/BatteryService$3;
.super Lcom/android/server/BatteryService$SettingsObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService$SettingsObserver;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onUpdate(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mChargingHint:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mChargingHint:Z
    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->access$702(Lcom/android/server/BatteryService;Z)Z

    .line 256
    iget-object v0, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 258
    :cond_0
    return-void
.end method
