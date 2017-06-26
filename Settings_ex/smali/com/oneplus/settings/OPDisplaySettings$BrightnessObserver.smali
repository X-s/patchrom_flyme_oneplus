.class Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "OPDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/OPDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/OPDisplaySettings;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    .line 672
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 667
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 668
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 669
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 673
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    .line 678
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 682
    if-eqz p1, :cond_0

    .line 702
    :goto_0
    return-void

    .line 685
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    const/4 v1, 0x1

    # setter for: Lcom/oneplus/settings/OPDisplaySettings;->mExternalChange:Z
    invoke-static {v0, v1}, Lcom/oneplus/settings/OPDisplaySettings;->access$202(Lcom/oneplus/settings/OPDisplaySettings;Z)Z

    .line 686
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->updateMode()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$300(Lcom/oneplus/settings/OPDisplaySettings;)V

    .line 688
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    const/4 v1, 0x1

    # setter for: Lcom/oneplus/settings/OPDisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z
    invoke-static {v0, v1}, Lcom/oneplus/settings/OPDisplaySettings;->access$402(Lcom/oneplus/settings/OPDisplaySettings;Z)Z

    .line 689
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->updateAutoSwitchDrivenSlider()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$500(Lcom/oneplus/settings/OPDisplaySettings;)V

    .line 690
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->updateSlider()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$600(Lcom/oneplus/settings/OPDisplaySettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # setter for: Lcom/oneplus/settings/OPDisplaySettings;->mExternalChange:Z
    invoke-static {v0, v2}, Lcom/oneplus/settings/OPDisplaySettings;->access$202(Lcom/oneplus/settings/OPDisplaySettings;Z)Z

    goto :goto_0

    .line 691
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # getter for: Lcom/oneplus/settings/OPDisplaySettings;->mAutomatic:Z
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$700(Lcom/oneplus/settings/OPDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 692
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->updateSlider()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$600(Lcom/oneplus/settings/OPDisplaySettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 700
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # setter for: Lcom/oneplus/settings/OPDisplaySettings;->mExternalChange:Z
    invoke-static {v1, v2}, Lcom/oneplus/settings/OPDisplaySettings;->access$202(Lcom/oneplus/settings/OPDisplaySettings;Z)Z

    throw v0

    .line 693
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # getter for: Lcom/oneplus/settings/OPDisplaySettings;->mAutomatic:Z
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$700(Lcom/oneplus/settings/OPDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->updateSlider()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$600(Lcom/oneplus/settings/OPDisplaySettings;)V

    goto :goto_1

    .line 696
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->updateMode()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$300(Lcom/oneplus/settings/OPDisplaySettings;)V

    .line 697
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->updateSlider()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$600(Lcom/oneplus/settings/OPDisplaySettings;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 705
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # getter for: Lcom/oneplus/settings/OPDisplaySettings;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/oneplus/settings/OPDisplaySettings;->access$800(Lcom/oneplus/settings/OPDisplaySettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 706
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 707
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 708
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 709
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 710
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 713
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # getter for: Lcom/oneplus/settings/OPDisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/OPDisplaySettings;->access$900(Lcom/oneplus/settings/OPDisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 714
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 715
    return-void
.end method
