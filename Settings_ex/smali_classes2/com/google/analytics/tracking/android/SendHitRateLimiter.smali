.class Lcom/google/analytics/tracking/android/SendHitRateLimiter;
.super Ljava/lang/Object;
.source "SendHitRateLimiter.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/RateLimiter;


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

    .line 39
    invoke-direct {p0, v0, v2, v3}, Lcom/google/analytics/tracking/android/SendHitRateLimiter;-><init>(IJ)V

    .line 40
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    .line 29
    iput p1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    .line 30
    iget v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 31
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMillisecondsPerToken:J

    .line 32
    return-void
.end method


# virtual methods
.method setLastTrackTime(J)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    .line 45
    return-void
.end method

.method setTokensAvailable(J)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 49
    long-to-double v0, p1

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 50
    return-void
.end method

.method public tokenAvailable()Z
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 62
    iget-object v1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 64
    iget-wide v4, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    iget v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    .line 65
    iget-wide v4, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    sub-long v4, v2, v4

    .line 66
    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMillisecondsPerToken:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 67
    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    .line 68
    iget v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v6, v0

    iget-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 71
    :cond_0
    iput-wide v2, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    .line 72
    iget-wide v2, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    cmpl-double v0, v2, v10

    if-ltz v0, :cond_1

    .line 73
    iget-wide v2, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 74
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "Excessive tracking detected.  Tracking call ignored."

    .line 76
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 77
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
