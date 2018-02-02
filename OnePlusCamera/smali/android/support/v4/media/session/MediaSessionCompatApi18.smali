.class public Landroid/support/v4/media/session/MediaSessionCompatApi18;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi18.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)V

    return-object v0
.end method

.method public static registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "audio"

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 33
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 34
    return-void
.end method

.method public static setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p0, Landroid/media/RemoteControlClient;

    check-cast p1, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-virtual {p0, p1}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 62
    return-void
.end method

.method public static setState(Ljava/lang/Object;IJFJ)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v4, 0x3

    .line 44
    if-eq p1, v4, :cond_1

    .line 54
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    move-result v0

    .line 55
    check-cast p0, Landroid/media/RemoteControlClient;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 56
    return-void

    .line 44
    :cond_1
    cmp-long v4, p2, v0

    if-gtz v4, :cond_3

    move v4, v2

    :goto_1
    if-nez v4, :cond_0

    .line 46
    cmp-long v4, p5, v0

    if-gtz v4, :cond_4

    :goto_2
    if-nez v2, :cond_2

    .line 47
    sub-long v0, v6, p5

    const/4 v2, 0x0

    .line 48
    cmpl-float v2, p4, v2

    if-lez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_2

    .line 49
    long-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-long v0, v0

    .line 52
    :cond_2
    add-long/2addr p2, v0

    goto :goto_0

    :cond_3
    move v4, v3

    .line 44
    goto :goto_1

    :cond_4
    move v2, v3

    .line 46
    goto :goto_2
.end method

.method public static unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "audio"

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 38
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 39
    return-void
.end method
