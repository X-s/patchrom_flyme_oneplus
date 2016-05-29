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

.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    .line 777
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 769
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 771
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 773
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 778
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    .line 783
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 787
    if-eqz p1, :cond_0

    .line 821
    :goto_0
    return-void

    .line 791
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/DisplaySettings;->access$202(Lcom/android/settings_ex/DisplaySettings;Z)Z

    .line 792
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # setter for: Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z
    invoke-static {v0, v2}, Lcom/android/settings_ex/DisplaySettings;->access$202(Lcom/android/settings_ex/DisplaySettings;Z)Z

    goto :goto_0

    .line 800
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$300(Lcom/android/settings_ex/DisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateSlider()V
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$400(Lcom/android/settings_ex/DisplaySettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 819
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # setter for: Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/DisplaySettings;->access$202(Lcom/android/settings_ex/DisplaySettings;Z)Z

    throw v0

    .line 806
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$300(Lcom/android/settings_ex/DisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 811
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateSlider()V
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$400(Lcom/android/settings_ex/DisplaySettings;)V

    goto :goto_1

    .line 814
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateMode()V
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$500(Lcom/android/settings_ex/DisplaySettings;)V

    .line 815
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateSlider()V
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$400(Lcom/android/settings_ex/DisplaySettings;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 824
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$600(Lcom/android/settings_ex/DisplaySettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 825
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 826
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 828
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 830
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 832
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 835
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$700(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 836
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 837
    return-void
.end method
