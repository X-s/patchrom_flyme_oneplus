.class Lcom/android/systemui_ex/BatteryIconGroup$1;
.super Landroid/database/ContentObserver;
.source "BatteryIconGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/BatteryIconGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/BatteryIconGroup;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/BatteryIconGroup;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui_ex/BatteryIconGroup$1;->this$0:Lcom/android/systemui_ex/BatteryIconGroup;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 43
    iget-object v1, p0, Lcom/android/systemui_ex/BatteryIconGroup$1;->this$0:Lcom/android/systemui_ex/BatteryIconGroup;

    iget-object v2, p0, Lcom/android/systemui_ex/BatteryIconGroup$1;->this$0:Lcom/android/systemui_ex/BatteryIconGroup;

    # getter for: Lcom/android/systemui_ex/BatteryIconGroup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui_ex/BatteryIconGroup;->access$100(Lcom/android/systemui_ex/BatteryIconGroup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_bar_show_battery_percent"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    # setter for: Lcom/android/systemui_ex/BatteryIconGroup;->mShowPercent:Z
    invoke-static {v1, v0}, Lcom/android/systemui_ex/BatteryIconGroup;->access$002(Lcom/android/systemui_ex/BatteryIconGroup;Z)Z

    .line 45
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup$1;->this$0:Lcom/android/systemui_ex/BatteryIconGroup;

    # invokes: Lcom/android/systemui_ex/BatteryIconGroup;->updateBatteryLevelVisibility()V
    invoke-static {v0}, Lcom/android/systemui_ex/BatteryIconGroup;->access$200(Lcom/android/systemui_ex/BatteryIconGroup;)V

    .line 46
    return-void
.end method
