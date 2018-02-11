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
    .param p1, "this$0"    # Lcom/android/settings_ex/DisplaySettings;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    .line 1556
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1550
    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 1551
    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 1552
    const-string/jumbo v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 1553
    const-string/jumbo v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    .line 1555
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1561
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1560
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1566
    if-eqz p1, :cond_0

    .line 1567
    return-void

    .line 1569
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings_ex/DisplaySettings;->-set1(Lcom/android/settings_ex/DisplaySettings;Z)Z

    .line 1570
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1571
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-wrap9(Lcom/android/settings_ex/DisplaySettings;)V

    .line 1572
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings_ex/DisplaySettings;->-set0(Lcom/android/settings_ex/DisplaySettings;Z)Z

    .line 1573
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-wrap7(Lcom/android/settings_ex/DisplaySettings;)V

    .line 1574
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-wrap11(Lcom/android/settings_ex/DisplaySettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1, v4}, Lcom/android/settings_ex/DisplaySettings;->-set1(Lcom/android/settings_ex/DisplaySettings;Z)Z

    .line 1565
    return-void

    .line 1575
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-get1(Lcom/android/settings_ex/DisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1577
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-get1(Lcom/android/settings_ex/DisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1578
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-wrap11(Lcom/android/settings_ex/DisplaySettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1587
    :catchall_0
    move-exception v1

    .line 1588
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v2, v4}, Lcom/android/settings_ex/DisplaySettings;->-set1(Lcom/android/settings_ex/DisplaySettings;Z)Z

    .line 1587
    throw v1

    .line 1576
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-wrap11(Lcom/android/settings_ex/DisplaySettings;)V

    goto :goto_0

    .line 1579
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1580
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-get3(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    .line 1581
    const/16 v3, 0x7530

    .line 1580
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1582
    .local v0, "currentTimeout":I
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/DisplaySettings;->-wrap12(Lcom/android/settings_ex/DisplaySettings;J)V

    goto :goto_0

    .line 1584
    .end local v0    # "currentTimeout":I
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-wrap9(Lcom/android/settings_ex/DisplaySettings;)V

    .line 1585
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-wrap11(Lcom/android/settings_ex/DisplaySettings;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1593
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-get3(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1594
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1595
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1596
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1597
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1598
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1592
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 1602
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-get3(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1603
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1601
    return-void
.end method
