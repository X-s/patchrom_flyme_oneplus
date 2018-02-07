.class Lcom/android/settings_ex/fuelgauge/PowerUsageBase$1;
.super Landroid/os/Handler;
.source "PowerUsageBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/PowerUsageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageBase;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageBase;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageBase;

    iget-object v1, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageBase;

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageBase;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->refreshStats()V

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 160
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
