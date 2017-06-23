.class Lcom/android/server/BatteryService$Led$1;
.super Landroid/os/Handler;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$Led;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$Led;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$Led;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/server/BatteryService$Led$1;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 922
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/server/BatteryService$Led$1;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 925
    :cond_0
    return-void
.end method
