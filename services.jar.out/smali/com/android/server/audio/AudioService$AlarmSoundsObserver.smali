.class final Lcom/android/server/audio/AudioService$AlarmSoundsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlarmSoundsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_ALARMS_PRIORITY_MANUAL:Landroid/net/Uri;

.field private final ZEN_MODE_ALARMS_SILENT_MANUAL:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1

    .prologue
    .line 7385
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7386
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7380
    const-string v0, "oem_zen_alarms_silent_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->ZEN_MODE_ALARMS_SILENT_MANUAL:Landroid/net/Uri;

    .line 7382
    const-string v0, "oem_zen_alarms_priority_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->ZEN_MODE_ALARMS_PRIORITY_MANUAL:Landroid/net/Uri;

    .line 7387
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7390
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->ZEN_MODE_ALARMS_SILENT_MANUAL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7391
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->ZEN_MODE_ALARMS_PRIORITY_MANUAL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->update(Landroid/net/Uri;)V

    .line 7393
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 7397
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->update(Landroid/net/Uri;)V

    .line 7398
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7401
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oem_zen_alarms_priority_switch"

    invoke-static {v0, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/server/audio/AudioService;->mMuteAlarmPriority:Z
    invoke-static {v3, v0}, Lcom/android/server/audio/AudioService;->access$11202(Lcom/android/server/audio/AudioService;Z)Z

    .line 7403
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_zen_alarms_silent_switch"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    # setter for: Lcom/android/server/audio/AudioService;->mMuteAlarmSilent:Z
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$11302(Lcom/android/server/audio/AudioService;Z)Z

    .line 7405
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AlarmSoundsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->maybeMuteAlarm()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11400(Lcom/android/server/audio/AudioService;)V

    .line 7406
    return-void

    :cond_0
    move v0, v2

    .line 7401
    goto :goto_0

    :cond_1
    move v1, v2

    .line 7403
    goto :goto_1
.end method
