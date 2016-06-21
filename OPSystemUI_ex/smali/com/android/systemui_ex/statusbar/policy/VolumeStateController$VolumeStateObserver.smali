.class Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;
.super Landroid/database/ContentObserver;
.source "VolumeStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeStateObserver"
.end annotation


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->this$0:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    .line 217
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 219
    # getter for: Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->access$100(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->contentResolver:Landroid/content/ContentResolver;

    .line 220
    return-void
.end method


# virtual methods
.method public isDoNotDisturbEnabed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "oem_zen_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "oem_silent_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oem_vibrate_under_silent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->this$0:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->updateVolumeStateIcon(Z)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->this$0:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->updateVolumeStateIcon(Z)V

    goto :goto_0
.end method

.method public shouldVibrate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "oem_vibrate_under_silent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public startObserving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_silent_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_zen_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_vibrate_under_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    return-void
.end method
