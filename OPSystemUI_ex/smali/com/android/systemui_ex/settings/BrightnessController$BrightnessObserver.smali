.class Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui_ex/settings/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/settings/BrightnessController;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    .line 79
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 71
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 75
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 80
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    .line 85
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 89
    if-eqz p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    const/4 v3, 0x1

    # setter for: Lcom/android/systemui_ex/settings/BrightnessController;->mExternalChange:Z
    invoke-static {v2, v3}, Lcom/android/systemui_ex/settings/BrightnessController;->access$002(Lcom/android/systemui_ex/settings/BrightnessController;Z)Z

    .line 92
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/settings/BrightnessController;->updateMode()V
    invoke-static {v2}, Lcom/android/systemui_ex/settings/BrightnessController;->access$100(Lcom/android/systemui_ex/settings/BrightnessController;)V

    .line 94
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui_ex/settings/BrightnessController;->access$200(Lcom/android/systemui_ex/settings/BrightnessController;)V

    .line 103
    :goto_1
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui_ex/settings/BrightnessController;->access$400(Lcom/android/systemui_ex/settings/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 104
    .local v0, "cb":Lcom/android/systemui_ex/settings/BrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v0}, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 107
    .end local v0    # "cb":Lcom/android/systemui_ex/settings/BrightnessController$BrightnessStateChangeCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # setter for: Lcom/android/systemui_ex/settings/BrightnessController;->mExternalChange:Z
    invoke-static {v3, v4}, Lcom/android/systemui_ex/settings/BrightnessController;->access$002(Lcom/android/systemui_ex/settings/BrightnessController;Z)Z

    throw v2

    .line 95
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/settings/BrightnessController;->mAutomatic:Z
    invoke-static {v2}, Lcom/android/systemui_ex/settings/BrightnessController;->access$300(Lcom/android/systemui_ex/settings/BrightnessController;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui_ex/settings/BrightnessController;->access$200(Lcom/android/systemui_ex/settings/BrightnessController;)V

    goto :goto_1

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/settings/BrightnessController;->mAutomatic:Z
    invoke-static {v2}, Lcom/android/systemui_ex/settings/BrightnessController;->access$300(Lcom/android/systemui_ex/settings/BrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui_ex/settings/BrightnessController;->access$200(Lcom/android/systemui_ex/settings/BrightnessController;)V

    goto :goto_1

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/settings/BrightnessController;->updateMode()V
    invoke-static {v2}, Lcom/android/systemui_ex/settings/BrightnessController;->access$100(Lcom/android/systemui_ex/settings/BrightnessController;)V

    .line 101
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/settings/BrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui_ex/settings/BrightnessController;->access$200(Lcom/android/systemui_ex/settings/BrightnessController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 107
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # setter for: Lcom/android/systemui_ex/settings/BrightnessController;->mExternalChange:Z
    invoke-static {v2, v4}, Lcom/android/systemui_ex/settings/BrightnessController;->access$002(Lcom/android/systemui_ex/settings/BrightnessController;Z)Z

    goto :goto_0
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 112
    iget-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/settings/BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui_ex/settings/BrightnessController;->access$500(Lcom/android/systemui_ex/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 123
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/settings/BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui_ex/settings/BrightnessController;->access$500(Lcom/android/systemui_ex/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    return-void
.end method
