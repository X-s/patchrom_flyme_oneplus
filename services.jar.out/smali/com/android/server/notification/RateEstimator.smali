.class public Lcom/android/server/notification/RateEstimator;
.super Ljava/lang/Object;
.source "RateEstimator.java"


# static fields
.field private static final MINIMUM_DT:D = 5.0E-4

.field private static final RATE_ALPHA:D = 0.8


# instance fields
.field private mInterarrivalTime:F

.field private mLastEventTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "now"    # J

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:J

    .line 33
    return-void
.end method

.method private getInterarrivalEstimate(J)D
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 50
    iget-wide v2, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v0, v2, v4

    .line 51
    .local v0, "dt":D
    const-wide v2, 0x3f40624dd2f1a9fcL    # 5.0E-4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 52
    const-wide v2, 0x3fe999999999999aL    # 0.8

    iget v4, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x3fc9999999999998L    # 0.19999999999999996

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public getRate(J)F
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 44
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getInterarrivalEstimate(J)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public update(J)F
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getInterarrivalEstimate(J)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:F

    .line 38
    iput-wide p1, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:J

    .line 39
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget v2, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
