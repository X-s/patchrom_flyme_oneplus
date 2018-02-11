.class Lcom/google/tagmanager/SendHitRateLimiter;
.super Ljava/lang/Object;
.source "SendHitRateLimiter.java"

# interfaces
.implements Lcom/google/tagmanager/RateLimiter;


# instance fields
.field private mLastTrackTime:J

.field private final mMaxTokens:I

.field private final mMillisecondsPerToken:J

.field private final mTokenLock:Ljava/lang/Object;

.field private mTokens:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v0, 0x3c

    const-wide/16 v2, 0x7d0

    .line 37
    invoke-direct {p0, v0, v2, v3}, Lcom/google/tagmanager/SendHitRateLimiter;-><init>(IJ)V

    .line 38
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    .line 27
    iput p1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    .line 28
    iget v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    .line 29
    iput-wide p2, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMillisecondsPerToken:J

    .line 30
    return-void
.end method


# virtual methods
.method setLastTrackTime(J)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mLastTrackTime:J

    .line 43
    return-void
.end method

.method setTokensAvailable(J)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 47
    long-to-double v0, p1

    iput-wide v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    .line 48
    return-void
.end method

.method public tokenAvailable()Z
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 60
    iget-object v1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 62
    iget-wide v4, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    iget v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    .line 63
    iget-wide v4, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mLastTrackTime:J

    sub-long v4, v2, v4

    .line 64
    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMillisecondsPerToken:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 65
    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    .line 66
    iget v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v6, v0

    iget-wide v8, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    .line 69
    :cond_0
    iput-wide v2, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mLastTrackTime:J

    .line 70
    iget-wide v2, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    cmpl-double v0, v2, v10

    if-ltz v0, :cond_1

    .line 71
    iget-wide v2, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    .line 72
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "No more tokens available."

    .line 74
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 75
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
