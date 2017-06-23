.class final Landroid/preference/SeekBarVolumizer$MuteObserver;
.super Landroid/database/ContentObserver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MuteObserver"
.end annotation


# instance fields
.field public final ZEN_MODE_ALARMS_PRIORITY_MANUAL:Landroid/net/Uri;

.field public final ZEN_MODE_ALARMS_SILENT_MANUAL:Landroid/net/Uri;

.field public final ZEN_MODE_MEDIA_PRIORITY_MANUAL:Landroid/net/Uri;

.field public final ZEN_MODE_MEDIA_SILENT_MANUAL:Landroid/net/Uri;

.field private mStream:I

.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/preference/SeekBarVolumizer;I)V
    .locals 1
    .param p2, "stream"    # I

    .prologue
    .line 467
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 468
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 456
    const-string/jumbo v0, "oem_zen_alarms_silent_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->ZEN_MODE_ALARMS_SILENT_MANUAL:Landroid/net/Uri;

    .line 458
    const-string/jumbo v0, "oem_zen_alarms_priority_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->ZEN_MODE_ALARMS_PRIORITY_MANUAL:Landroid/net/Uri;

    .line 460
    const-string/jumbo v0, "oem_zen_media_silent_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->ZEN_MODE_MEDIA_SILENT_MANUAL:Landroid/net/Uri;

    .line 462
    const-string/jumbo v0, "oem_zen_media_priority_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->ZEN_MODE_MEDIA_PRIORITY_MANUAL:Landroid/net/Uri;

    .line 469
    iput p2, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->mStream:I

    .line 470
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 473
    iget v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->mStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 474
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$1900(Landroid/preference/SeekBarVolumizer;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->ZEN_MODE_MEDIA_SILENT_MANUAL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 475
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$1900(Landroid/preference/SeekBarVolumizer;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->ZEN_MODE_MEDIA_PRIORITY_MANUAL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 480
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarVolumizer$MuteObserver;->update(Landroid/net/Uri;)V

    .line 481
    return-void

    .line 476
    :cond_1
    iget v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->mStream:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$1900(Landroid/preference/SeekBarVolumizer;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->ZEN_MODE_ALARMS_SILENT_MANUAL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 478
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$1900(Landroid/preference/SeekBarVolumizer;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->ZEN_MODE_ALARMS_PRIORITY_MANUAL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 485
    invoke-virtual {p0, p2}, Landroid/preference/SeekBarVolumizer$MuteObserver;->update(Landroid/net/Uri;)V

    .line 486
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 489
    iget v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->mStream:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 490
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$800(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "oem_zen_media_silent_switch"

    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/preference/SeekBarVolumizer;->isASBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/preference/SeekBarVolumizer;->isASWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    # setter for: Landroid/preference/SeekBarVolumizer;->mMuteSilent:Z
    invoke-static {v3, v0}, Landroid/preference/SeekBarVolumizer;->access$2002(Landroid/preference/SeekBarVolumizer;Z)Z

    .line 493
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->access$800(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_zen_media_priority_switch"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/preference/SeekBarVolumizer;->isASBluetoothA2dpOn()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/preference/SeekBarVolumizer;->isASWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    # setter for: Landroid/preference/SeekBarVolumizer;->mMutePrority:Z
    invoke-static {v0, v1}, Landroid/preference/SeekBarVolumizer;->access$2102(Landroid/preference/SeekBarVolumizer;Z)Z

    .line 502
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 490
    goto :goto_0

    :cond_2
    move v1, v2

    .line 493
    goto :goto_1

    .line 496
    :cond_3
    iget v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->mStream:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 497
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$800(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "oem_zen_alarms_silent_switch"

    invoke-static {v0, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_3
    # setter for: Landroid/preference/SeekBarVolumizer;->mMuteSilent:Z
    invoke-static {v3, v0}, Landroid/preference/SeekBarVolumizer;->access$2002(Landroid/preference/SeekBarVolumizer;Z)Z

    .line 499
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$MuteObserver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->access$800(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_zen_alarms_priority_switch"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_4
    # setter for: Landroid/preference/SeekBarVolumizer;->mMutePrority:Z
    invoke-static {v0, v1}, Landroid/preference/SeekBarVolumizer;->access$2102(Landroid/preference/SeekBarVolumizer;Z)Z

    goto :goto_2

    :cond_4
    move v0, v2

    .line 497
    goto :goto_3

    :cond_5
    move v1, v2

    .line 499
    goto :goto_4
.end method
