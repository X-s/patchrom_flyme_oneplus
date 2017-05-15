.class Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field private final SCREEN_TIMEOUT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    .line 1530
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1524
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 1525
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 1526
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 1527
    const-string v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    .line 1531
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1535
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1536
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1540
    if-eqz p1, :cond_0

    .line 1564
    :goto_0
    return-void

    .line 1543
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/DisplaySettings;->access$1602(Lcom/android/settings_ex/DisplaySettings;Z)Z

    .line 1544
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1545
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateMode()V
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$1700(Lcom/android/settings_ex/DisplaySettings;)V

    .line 1546
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/DisplaySettings;->access$1802(Lcom/android/settings_ex/DisplaySettings;Z)Z

    .line 1547
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateAutoSwitchDrivenSlider()V
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$1900(Lcom/android/settings_ex/DisplaySettings;)V

    .line 1548
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateSlider()V
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$2000(Lcom/android/settings_ex/DisplaySettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1562
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # setter for: Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z
    invoke-static {v1, v4}, Lcom/android/settings_ex/DisplaySettings;->access$1602(Lcom/android/settings_ex/DisplaySettings;Z)Z

    goto :goto_0

    .line 1549
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$2100(Lcom/android/settings_ex/DisplaySettings;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1550
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateSlider()V
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$2000(Lcom/android/settings_ex/DisplaySettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1562
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # setter for: Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z
    invoke-static {v2, v4}, Lcom/android/settings_ex/DisplaySettings;->access$1602(Lcom/android/settings_ex/DisplaySettings;Z)Z

    throw v1

    .line 1551
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$2100(Lcom/android/settings_ex/DisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1552
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateSlider()V
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$2000(Lcom/android/settings_ex/DisplaySettings;)V

    goto :goto_1

    .line 1553
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1554
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$000(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1556
    .local v0, "currentTimeout":I
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    int-to-long v2, v0

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/DisplaySettings;->access$2200(Lcom/android/settings_ex/DisplaySettings;J)V

    goto :goto_1

    .line 1558
    .end local v0    # "currentTimeout":I
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateMode()V
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$1700(Lcom/android/settings_ex/DisplaySettings;)V

    .line 1559
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateSlider()V
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$2000(Lcom/android/settings_ex/DisplaySettings;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1567
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$000(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1568
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1569
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1570
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1571
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1572
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1573
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 1576
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$000(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1577
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1578
    return-void
.end method
