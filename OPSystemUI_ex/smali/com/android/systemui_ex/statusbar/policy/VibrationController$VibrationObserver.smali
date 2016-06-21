.class final Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;
.super Landroid/database/ContentObserver;
.source "VibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/VibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibrationObserver"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/VibrationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/policy/VibrationController;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->this$0:Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    .line 73
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 74
    # getter for: Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->access$000(Lcom/android/systemui_ex/statusbar/policy/VibrationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->mResolver:Landroid/content/ContentResolver;

    .line 75
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->this$0:Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->access$200(Lcom/android/systemui_ex/statusbar/policy/VibrationController;)Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isMuteModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_vibrate_under_silent"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_vibrate_when_incall"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 86
    const-string v0, "oem_vibrate_under_silent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "oem_vibrate_when_incall"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->this$0:Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/VibrationController;->fireVibrationStateChange()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->access$100(Lcom/android/systemui_ex/statusbar/policy/VibrationController;)V

    .line 90
    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_vibrate_under_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_vibrate_when_incall"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    return-void
.end method

.method public setValue(Z)V
    .locals 3
    .param p1, "vibration"    # Z

    .prologue
    .line 101
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 102
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->this$0:Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    # setter for: Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mCurrentVibrationState:Z
    invoke-static {v1, p1}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->access$302(Lcom/android/systemui_ex/statusbar/policy/VibrationController;Z)Z

    .line 104
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->this$0:Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->access$200(Lcom/android/systemui_ex/statusbar/policy/VibrationController;)Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isMuteModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "oem_vibrate_under_silent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    :goto_1
    return-void

    .line 101
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    .restart local v0    # "value":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "oem_vibrate_when_incall"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
