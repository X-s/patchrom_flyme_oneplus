.class public Lcom/adobe/xmp/impl/XMPDateTimeImpl;
.super Ljava/lang/Object;
.source "XMPDateTimeImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPDateTime;


# instance fields
.field private day:I

.field private hour:I

.field private minute:I

.field private month:I

.field private nanoSeconds:I

.field private second:I

.field private timeZone:Ljava/util/TimeZone;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const-string/jumbo v0, "UTC"

    .line 44
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const-string/jumbo v0, "UTC"

    .line 44
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 121
    invoke-static {p1, p0}, Lcom/adobe/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const-string/jumbo v0, "UTC"

    .line 44
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 69
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 76
    new-instance v3, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    const/4 v1, 0x2

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    const/4 v1, 0x5

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    const/16 v1, 0xb

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    const/16 v1, 0xc

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    const/16 v1, 0xd

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const/16 v1, 0xe

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const v2, 0xf4240

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 87
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const-string/jumbo v0, "UTC"

    .line 44
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 100
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 101
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    const/4 v1, 0x2

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    const/4 v1, 0x5

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    const/16 v1, 0xb

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    const/16 v1, 0xc

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    const/16 v1, 0xd

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const/16 v1, 0xe

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const v1, 0xf4240

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 109
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 110
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x2

    .line 278
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-object v0, p1

    .line 279
    check-cast v0, Lcom/adobe/xmp/XMPDateTime;

    invoke-interface {v0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 278
    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    .line 280
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 282
    rem-long/2addr v0, v4

    long-to-int v0, v0

    return v0

    .line 287
    :cond_0
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    check-cast p1, Lcom/adobe/xmp/XMPDateTime;

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 288
    rem-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 316
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 317
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 318
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x1

    .line 319
    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v1, 0x2

    .line 320
    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v1, 0x5

    .line 321
    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0xb

    .line 322
    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0xc

    .line 323
    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0xd

    .line 324
    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0xe

    .line 325
    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 326
    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    return v0
.end method

.method public getISO8601String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    invoke-static {p0}, Lcom/adobe/xmp/impl/ISO8601Converter;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    return v0
.end method

.method public getNanoSecond()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 2

    .prologue
    const/16 v1, 0x1f

    const/4 v0, 0x1

    .line 186
    if-lt p1, v0, :cond_0

    .line 190
    if-gt p1, v1, :cond_1

    .line 196
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 198
    :goto_0
    return-void

    .line 188
    :cond_0
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0

    .line 192
    :cond_1
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0
.end method

.method public setHour(I)V
    .locals 2

    .prologue
    .line 215
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 216
    return-void
.end method

.method public setMinute(I)V
    .locals 2

    .prologue
    .line 233
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 234
    return-void
.end method

.method public setMonth(I)V
    .locals 2

    .prologue
    const/16 v1, 0xc

    const/4 v0, 0x1

    .line 157
    if-lt p1, v0, :cond_0

    .line 161
    if-gt p1, v1, :cond_1

    .line 167
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 169
    :goto_0
    return-void

    .line 159
    :cond_0
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0

    .line 163
    :cond_1
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0
.end method

.method public setNanoSecond(I)V
    .locals 0

    .prologue
    .line 269
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 270
    return-void
.end method

.method public setSecond(I)V
    .locals 2

    .prologue
    .line 251
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 252
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 308
    return-void
.end method

.method public setYear(I)V
    .locals 2

    .prologue
    .line 139
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x270f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getISO8601String()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
