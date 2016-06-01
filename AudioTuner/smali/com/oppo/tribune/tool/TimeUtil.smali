.class public Lcom/oppo/tribune/tool/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field private static final TIME_GAP_DAY:J = 0x5265c00L

.field private static final TIME_GAP_HOUR:J = 0x36ee80L

.field private static final TIME_GAP_MIN:J = 0xea60L

.field private static final TIME_SAMPLE:J = 0xe8d4a51000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTime(J)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # J

    .prologue
    .line 53
    move-wide v2, p0

    .line 54
    .local v2, "timeResult":J
    const-wide v4, 0xe8d4a51000L

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    .line 55
    const-wide/16 v4, 0x3e8

    mul-long v2, p0, v4

    .line 57
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 59
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getTimeText(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    const-wide/32 v8, 0x36ee80

    .line 31
    move-wide v4, p1

    .line 32
    .local v4, "timeResult":J
    const-wide v6, 0xe8d4a51000L

    cmp-long v6, p1, v6

    if-gez v6, :cond_0

    .line 33
    const-wide/16 v6, 0x3e8

    mul-long v4, p1, v6

    .line 35
    :cond_0
    invoke-static {v4, v5}, Lcom/oppo/tribune/tool/TimeUtil;->getTime(J)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 37
    .local v0, "gap":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_3

    cmp-long v6, v0, v8

    if-gtz v6, :cond_3

    .line 39
    const-wide/32 v6, 0xea60

    div-long v6, v0, v6

    long-to-int v2, v6

    .line 40
    .local v2, "min":I
    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 41
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0c0539

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    .end local v2    # "min":I
    :cond_2
    :goto_0
    return-object v3

    .line 44
    :cond_3
    cmp-long v6, v0, v8

    if-lez v6, :cond_2

    const-wide/32 v6, 0x5265c00

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-long v8, v0, v8

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0c053a

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
