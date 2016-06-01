.class public Lcom/oppo/tribune/DateAndTimeGetter;
.super Ljava/lang/Object;
.source "DateAndTimeGetter.java"


# static fields
.field private static sSingleton:Lcom/oppo/tribune/DateAndTimeGetter;


# instance fields
.field private final mBaseMillis:J

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field private final mSystemBaseMillis:J

.field private final mTime:Ljava/util/Calendar;

.field private final mTimeFormat:Ljava/text/SimpleDateFormat;

.field private final mTimeZone:I


# direct methods
.method private constructor <init>(JI)V
    .locals 5
    .param p1, "millis"    # J
    .param p3, "zone"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mTime:Ljava/util/Calendar;

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mSystemBaseMillis:J

    .line 43
    iput-wide p1, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mBaseMillis:J

    .line 44
    iput p3, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mTimeZone:I

    .line 45
    invoke-static {p3}, Lcom/oppo/tribune/DateAndTimeGetter;->getTimeZone(I)Ljava/util/TimeZone;

    move-result-object v0

    .line 47
    .local v0, "timezone":Ljava/util/TimeZone;
    iget-object v1, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mTime:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 48
    iget-object v1, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mTime:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 51
    iget-object v1, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 52
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mTimeFormat:Ljava/text/SimpleDateFormat;

    .line 53
    iget-object v1, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 54
    return-void
.end method

.method public static declared-synchronized getCurrentStandardDate(Landroid/content/Context;)Lcom/oppo/tribune/parse/StandardDate;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-class v2, Lcom/oppo/tribune/DateAndTimeGetter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/oppo/tribune/DateAndTimeGetter;->sSingleton:Lcom/oppo/tribune/DateAndTimeGetter;

    if-nez v1, :cond_0

    .line 76
    invoke-static {p0}, Lcom/oppo/tribune/parse/StandardDate;->parse(Landroid/content/Context;)Lcom/oppo/tribune/parse/StandardDate;

    move-result-object v0

    .line 77
    .local v0, "time":Lcom/oppo/tribune/parse/StandardDate;
    if-eqz v0, :cond_0

    .line 78
    invoke-static {v0}, Lcom/oppo/tribune/DateAndTimeGetter;->parse(Lcom/oppo/tribune/parse/StandardDate;)Lcom/oppo/tribune/DateAndTimeGetter;

    move-result-object v1

    sput-object v1, Lcom/oppo/tribune/DateAndTimeGetter;->sSingleton:Lcom/oppo/tribune/DateAndTimeGetter;

    .line 82
    .end local v0    # "time":Lcom/oppo/tribune/parse/StandardDate;
    :cond_0
    sget-object v1, Lcom/oppo/tribune/DateAndTimeGetter;->sSingleton:Lcom/oppo/tribune/DateAndTimeGetter;

    if-eqz v1, :cond_1

    .line 83
    sget-object v1, Lcom/oppo/tribune/DateAndTimeGetter;->sSingleton:Lcom/oppo/tribune/DateAndTimeGetter;

    invoke-direct {v1}, Lcom/oppo/tribune/DateAndTimeGetter;->getStandardDate()Lcom/oppo/tribune/parse/StandardDate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 85
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/oppo/tribune/parse/StandardDate;->parse(Landroid/content/Context;)Lcom/oppo/tribune/parse/StandardDate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getStandardDate()Lcom/oppo/tribune/parse/StandardDate;
    .locals 5

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/oppo/tribune/DateAndTimeGetter;->updateTime()V

    .line 68
    iget-object v1, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 69
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Lcom/oppo/tribune/parse/StandardDate;

    iget-object v2, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mTimeZone:I

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/tribune/parse/StandardDate;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method private static getTimeZone(I)Ljava/util/TimeZone;
    .locals 2
    .param p0, "timezone"    # I

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Lcom/oppo/tribune/parse/StandardDate;)Lcom/oppo/tribune/DateAndTimeGetter;
    .locals 9
    .param p0, "time"    # Lcom/oppo/tribune/parse/StandardDate;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/StandardDate;->getTimeZone()I

    move-result v5

    invoke-static {v5}, Lcom/oppo/tribune/DateAndTimeGetter;->getTimeZone(I)Ljava/util/TimeZone;

    move-result-object v4

    .line 94
    .local v4, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 99
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/StandardDate;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/StandardDate;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 100
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 101
    new-instance v5, Lcom/oppo/tribune/DateAndTimeGetter;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/StandardDate;->getTimeZone()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/oppo/tribune/DateAndTimeGetter;-><init>(JI)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "date":Ljava/util/Date;
    :goto_0
    return-object v5

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 106
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private updateTime()V
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mSystemBaseMillis:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mBaseMillis:J

    add-long v0, v2, v4

    .line 63
    .local v0, "millis":J
    iget-object v2, p0, Lcom/oppo/tribune/DateAndTimeGetter;->mTime:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 64
    return-void
.end method
