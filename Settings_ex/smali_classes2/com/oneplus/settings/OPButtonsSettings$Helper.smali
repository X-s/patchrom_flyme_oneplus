.class public Lcom/oneplus/settings/OPButtonsSettings$Helper;
.super Ljava/lang/Object;
.source "OPButtonsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setHWButtonsLightsState(Landroid/content/Context;ZZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z
    .param p2, "store"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 552
    const v7, 0x7f0d0017

    .line 551
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 554
    .local v1, "defaultBrightness":I
    if-eqz p2, :cond_3

    .line 555
    const-string/jumbo v6, "pre_navbar_button_backlight"

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 558
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 560
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_2

    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 562
    const-string/jumbo v7, "buttons_brightness"

    .line 561
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 563
    .local v0, "currentBrightness":I
    const-string/jumbo v6, "pre_navbar_button_backlight"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 564
    const-string/jumbo v6, "pre_navbar_button_backlight"

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 566
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 567
    const-string/jumbo v7, "buttons_brightness"

    .line 566
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    .end local v0    # "currentBrightness":I
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 550
    .end local v1    # "defaultBrightness":I
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 569
    .restart local v1    # "defaultBrightness":I
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    const-string/jumbo v5, "pre_navbar_button_backlight"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 570
    .local v3, "oldBright":I
    if-eq v3, v8, :cond_1

    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 572
    const-string/jumbo v6, "buttons_brightness"

    .line 571
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 573
    const-string/jumbo v5, "pre_navbar_button_backlight"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 578
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "oldBright":I
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 579
    const-string/jumbo v7, "buttons_brightness"

    if-nez p1, :cond_4

    move v1, v5

    .line 578
    .end local v1    # "defaultBrightness":I
    :cond_4
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private static setHWKeysState(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "disabled"    # Z

    .prologue
    .line 590
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWKeysState(Landroid/content/Context;ZZ)V

    .line 589
    return-void
.end method

.method private static setHWKeysState(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "disabled"    # Z
    .param p2, "homeOff"    # Z

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 595
    const-string/jumbo v2, "oem_acc_key_lock_mode"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    .line 594
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 593
    return-void

    .line 595
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSWKeysState(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 585
    const-string/jumbo v2, "buttons_show_on_screen_navkeys"

    .line 584
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 586
    .local v0, "onScreenNavKeysEnabled":Z
    :cond_0
    invoke-static {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->updateSettings(Landroid/content/Context;Z)V

    .line 583
    return-void
.end method

.method public static updateSettings(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onScreenNavKeysEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 526
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v1, v1}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->updateSettings(Landroid/content/Context;ZZZZ)V

    .line 525
    return-void
.end method

.method public static updateSettings(Landroid/content/Context;ZZZZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onScreenNavKeysEnabled"    # Z
    .param p2, "handleLights"    # Z
    .param p3, "skipOnScreenNavKeys"    # Z
    .param p4, "lightsOnly"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 534
    if-nez p3, :cond_0

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 536
    const-string/jumbo v4, "buttons_show_on_screen_navkeys"

    if-eqz p1, :cond_1

    move v0, v1

    .line 535
    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    :cond_0
    if-nez p2, :cond_2

    .line 540
    return-void

    :cond_1
    move v0, v2

    .line 536
    goto :goto_0

    .line 543
    :cond_2
    if-nez p4, :cond_3

    .line 544
    invoke-static {p0, p1}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWKeysState(Landroid/content/Context;Z)V

    .line 547
    :cond_3
    if-eqz p1, :cond_4

    :goto_1
    invoke-static {p0, v2, v1}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWButtonsLightsState(Landroid/content/Context;ZZ)V

    .line 531
    return-void

    :cond_4
    move v2, v1

    .line 547
    goto :goto_1
.end method
