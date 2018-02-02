.class public Lcom/oneplus/media/ExifMetadata;
.super Lcom/oneplus/base/BasicBaseObject;
.source "ExifMetadata.java"

# interfaces
.implements Lcom/oneplus/media/PhotoMetadata;


# static fields
.field private static final synthetic -com-oneplus-media-IfdSwitchesValues:[I = null

.field private static final ENTRY_ID_DATE_TIME_ORIGINAL:I = 0x9003

.field private static final ENTRY_ID_EXPOSURE_TIME:I = 0x829a

.field private static final ENTRY_ID_FLASH:I = 0x9209

.field private static final ENTRY_ID_FOCAL_LENGTH:I = 0x920a

.field private static final ENTRY_ID_F_NUMBER:I = 0x829d

.field private static final ENTRY_ID_GPS_ALTITUDE:I = 0x6

.field private static final ENTRY_ID_GPS_ALTITUDE_REF:I = 0x5

.field private static final ENTRY_ID_GPS_DATE_STAMP:I = 0x1d

.field private static final ENTRY_ID_GPS_LATITUDE:I = 0x2

.field private static final ENTRY_ID_GPS_LATITUDE_REF:I = 0x1

.field private static final ENTRY_ID_GPS_LONGITUDE:I = 0x4

.field private static final ENTRY_ID_GPS_LONGITUDE_REF:I = 0x3

.field private static final ENTRY_ID_GPS_TIME_STAMP:I = 0x7

.field private static final ENTRY_ID_ISO:I = 0x8827

.field private static final ENTRY_ID_MAKE:I = 0x10f

.field private static final ENTRY_ID_MAKER_NOTE:I = 0x927c

.field private static final ENTRY_ID_MODEL:I = 0x110

.field private static final ENTRY_ID_WHITE_BALANCE:I = 0xa403

.field private static final GPS_REF_ABOVE_SEA:I = 0x1

.field private static final GPS_REF_BELOW_SEA:I = 0x1

.field private static final GPS_REF_EAST:Ljava/lang/String; = "E"

.field private static final GPS_REF_NORTH:Ljava/lang/String; = "N"

.field private static final GPS_REF_SOUTH:Ljava/lang/String; = "S"

.field private static final GPS_REF_WEST:Ljava/lang/String; = "W"


# instance fields
.field private m_Location:Landroid/location/Location;


# direct methods
.method private static synthetic -getcom-oneplus-media-IfdSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/media/ExifMetadata;->-com-oneplus-media-IfdSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/media/ExifMetadata;->-com-oneplus-media-IfdSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/media/Ifd;->values()[Lcom/oneplus/media/Ifd;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/media/ExifMetadata;->-com-oneplus-media-IfdSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 13
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    const/4 v9, 0x0

    .line 128
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 131
    new-instance v3, Landroid/location/Location;

    iget-object v8, p0, Lcom/oneplus/media/ExifMetadata;->TAG:Ljava/lang/String;

    invoke-direct {v3, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    .line 132
    iget-object v3, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v3, v10, v11}, Landroid/location/Location;->setLatitude(D)V

    .line 133
    iget-object v3, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v3, v10, v11}, Landroid/location/Location;->setLongitude(D)V

    .line 136
    const/4 v1, 0x0

    .local v1, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :try_start_0
    new-instance v2, Lcom/oneplus/media/IfdEntryEnumerator;

    const-wide/16 v10, 0x0

    invoke-direct {v2, p1, v10, v11}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 138
    .end local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v2, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-static {}, Lcom/oneplus/media/ExifMetadata;->-getcom-oneplus-media-IfdSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v8

    aget v3, v3, v8

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 145
    :goto_1
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/oneplus/media/ExifMetadata;->processExif(Lcom/oneplus/media/IfdEntryEnumerator;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_2
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v8

    move-object v12, v8

    move-object v8, v3

    move-object v3, v12

    :goto_3
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_4
    if-eqz v8, :cond_7

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 154
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Throwable;
    :goto_5
    iget-object v3, p0, Lcom/oneplus/media/ExifMetadata;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "ExifMetadata() - Error when IFD enumerator"

    invoke-static {v3, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6
    iget-object v3, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 160
    .local v4, "latitude":D
    iget-object v3, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 161
    .local v6, "longitude":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    :cond_1
    iput-object v9, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    .line 128
    :cond_2
    return-void

    .line 143
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    .restart local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :pswitch_1
    :try_start_5
    invoke-direct {p0, v2}, Lcom/oneplus/media/ExifMetadata;->processIFD0(Lcom/oneplus/media/IfdEntryEnumerator;)V

    goto :goto_1

    .line 156
    :catchall_1
    move-exception v3

    move-object v8, v9

    move-object v1, v2

    .end local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v1, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto :goto_3

    .line 148
    .end local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/oneplus/media/ExifMetadata;->processGPS(Lcom/oneplus/media/IfdEntryEnumerator;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 156
    :cond_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    move-object v3, v9

    :goto_7
    if-eqz v3, :cond_5

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 154
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    move-object v1, v2

    .end local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto :goto_5

    .line 156
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_3
    move-exception v3

    goto :goto_7

    :cond_5
    move-object v1, v2

    .end local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto :goto_6

    .end local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_4
    move-exception v10

    if-nez v8, :cond_6

    move-object v8, v10

    goto :goto_4

    :cond_6
    if-eq v8, v10, :cond_0

    :try_start_8
    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    throw v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .local v1, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catchall_2
    move-exception v3

    move-object v8, v9

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_2

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private convertLatLong([Landroid/util/Rational;)D
    .locals 12
    .param p1, "rationals"    # [Landroid/util/Rational;

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 169
    if-eqz p1, :cond_0

    array-length v6, p1

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 170
    :cond_0
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    return-wide v6

    .line 171
    :cond_1
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v0

    .line 172
    .local v0, "degrees":D
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v2

    .line 173
    .local v2, "minutes":D
    const/4 v6, 0x2

    aget-object v6, p1, v6

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    .line 174
    .local v4, "seconds":D
    mul-double v6, v2, v10

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    div-double/2addr v6, v8

    add-double/2addr v6, v0

    mul-double v8, v4, v10

    const-wide v10, 0x40ac200000000000L    # 3600.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    return-wide v6
.end method

.method private convertUnsignedLatLong([Landroid/util/Rational;)D
    .locals 12
    .param p1, "rationals"    # [Landroid/util/Rational;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    array-length v6, p1

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 182
    :cond_0
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    return-wide v6

    .line 183
    :cond_1
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Landroid/util/Rational;->getNumerator()I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-double v6, v6

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v8}, Landroid/util/Rational;->getDenominator()I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    long-to-double v8, v8

    div-double v0, v6, v8

    .line 184
    .local v0, "degrees":D
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v6}, Landroid/util/Rational;->getNumerator()I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-double v6, v6

    const/4 v8, 0x1

    aget-object v8, p1, v8

    invoke-virtual {v8}, Landroid/util/Rational;->getDenominator()I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    long-to-double v8, v8

    div-double v2, v6, v8

    .line 185
    .local v2, "minutes":D
    const/4 v6, 0x2

    aget-object v6, p1, v6

    invoke-virtual {v6}, Landroid/util/Rational;->getNumerator()I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-double v6, v6

    const/4 v8, 0x2

    aget-object v8, p1, v8

    invoke-virtual {v8}, Landroid/util/Rational;->getDenominator()I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    long-to-double v8, v8

    div-double v4, v6, v8

    .line 186
    .local v4, "seconds":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    div-double/2addr v6, v8

    add-double/2addr v6, v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v4

    const-wide v10, 0x40ac200000000000L    # 3600.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    return-wide v6
.end method

.method private processExif(Lcom/oneplus/media/IfdEntryEnumerator;)V
    .locals 10
    .param p1, "entryEnumerator"    # Lcom/oneplus/media/IfdEntryEnumerator;

    .prologue
    const/4 v8, 0x0

    .line 204
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 208
    :sswitch_0
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v4

    .line 209
    .local v4, "rationals":[Landroid/util/Rational;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    .line 210
    sget-object v6, Lcom/oneplus/media/ExifMetadata;->PROP_APERTURE_VALUE:Lcom/oneplus/base/PropertyKey;

    aget-object v7, v4, v8

    invoke-virtual {v7}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    .end local v4    # "rationals":[Landroid/util/Rational;
    :sswitch_1
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "dateTime":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 218
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    sget-object v6, Lcom/oneplus/media/ExifMetadata;->PROP_DATE_TIME_ORIGINAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/media/ExifMetadata;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "processExif() - Error when parse date time original"

    invoke-static {v6, v7, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 232
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "dateTime":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Throwable;
    :sswitch_2
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v4

    .line 233
    .restart local v4    # "rationals":[Landroid/util/Rational;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    .line 234
    sget-object v6, Lcom/oneplus/media/ExifMetadata;->PROP_EXPOSURE_TIME:Lcom/oneplus/base/PropertyKey;

    aget-object v7, v4, v8

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    .end local v4    # "rationals":[Landroid/util/Rational;
    :sswitch_3
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v5

    .line 240
    .local v5, "values":[I
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 242
    new-instance v3, Lcom/oneplus/media/FlashData;

    aget v6, v5, v8

    invoke-direct {v3, v6}, Lcom/oneplus/media/FlashData;-><init>(I)V

    .line 243
    .local v3, "flashData":Lcom/oneplus/media/FlashData;
    sget-object v6, Lcom/oneplus/media/ExifMetadata;->PROP_FLASH_DATA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6, v3}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v3    # "flashData":Lcom/oneplus/media/FlashData;
    .end local v5    # "values":[I
    :sswitch_4
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v4

    .line 250
    .restart local v4    # "rationals":[Landroid/util/Rational;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    .line 251
    sget-object v6, Lcom/oneplus/media/ExifMetadata;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    aget-object v7, v4, v8

    invoke-virtual {v7}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 256
    .end local v4    # "rationals":[Landroid/util/Rational;
    :sswitch_5
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v5

    .line 257
    .restart local v5    # "values":[I
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 258
    sget-object v6, Lcom/oneplus/media/ExifMetadata;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    aget v7, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 263
    .end local v5    # "values":[I
    :sswitch_6
    sget-object v6, Lcom/oneplus/media/ExifMetadata;->PROP_MAKER_NOTE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryData()[B

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 268
    :sswitch_7
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v5

    .line 269
    .restart local v5    # "values":[I
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 270
    sget-object v7, Lcom/oneplus/media/ExifMetadata;->PROP_WHITE_BALANCE:Lcom/oneplus/base/PropertyKey;

    aget v6, v5, v8

    if-nez v6, :cond_1

    sget-object v6, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->AUTO:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    :goto_1
    invoke-virtual {p0, v7, v6}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    sget-object v6, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->MANUAL:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    goto :goto_1

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x829a -> :sswitch_2
        0x829d -> :sswitch_0
        0x8827 -> :sswitch_5
        0x9003 -> :sswitch_1
        0x9209 -> :sswitch_3
        0x920a -> :sswitch_4
        0x927c -> :sswitch_6
        0xa403 -> :sswitch_7
    .end sparse-switch
.end method

.method private processGPS(Lcom/oneplus/media/IfdEntryEnumerator;)V
    .locals 34
    .param p1, "entryEnumerator"    # Lcom/oneplus/media/IfdEntryEnumerator;

    .prologue
    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v30

    sparse-switch v30, :sswitch_data_0

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 284
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v24

    .line 285
    .local v24, "rationals":[Landroid/util/Rational;
    if-eqz v24, :cond_0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_0

    .line 287
    const/16 v30, 0x0

    aget-object v30, v24, v30

    invoke-virtual/range {v30 .. v30}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    .line 288
    .local v6, "altitude":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 289
    .local v26, "signum":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->hasAltitude()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->getAltitude()D

    move-result-wide v26

    .line 291
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    mul-double v32, v26, v6

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_0

    .line 297
    .end local v6    # "altitude":D
    .end local v24    # "rationals":[Landroid/util/Rational;
    .end local v26    # "signum":D
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v4

    .line 298
    .local v4, "altRef":[I
    if-eqz v4, :cond_0

    array-length v0, v4

    move/from16 v30, v0

    if-lez v30, :cond_0

    .line 300
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 301
    .restart local v26    # "signum":D
    const/16 v30, 0x0

    aget v30, v4, v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 302
    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    .line 303
    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 304
    .restart local v6    # "altitude":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->hasAltitude()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    .line 306
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    mul-double v32, v26, v6

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_0

    .line 312
    .end local v4    # "altRef":[I
    .end local v6    # "altitude":D
    .end local v26    # "signum":D
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v24

    .line 314
    .restart local v24    # "rationals":[Landroid/util/Rational;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryType()I

    move-result v30

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/oneplus/media/ExifMetadata;->convertUnsignedLatLong([Landroid/util/Rational;)D

    move-result-wide v18

    .line 318
    .local v18, "latitude":D
    :goto_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v30

    if-nez v30, :cond_0

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    .line 321
    .restart local v26    # "signum":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isNaN(D)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 322
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 323
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    mul-double v32, v26, v18

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    goto/16 :goto_0

    .line 317
    .end local v18    # "latitude":D
    .end local v26    # "signum":D
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/oneplus/media/ExifMetadata;->convertLatLong([Landroid/util/Rational;)D

    move-result-wide v18

    .restart local v18    # "latitude":D
    goto :goto_1

    .line 329
    .end local v18    # "latitude":D
    .end local v24    # "rationals":[Landroid/util/Rational;
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v17

    .line 330
    .local v17, "latRef":Ljava/lang/String;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    .line 333
    .restart local v18    # "latitude":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 334
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 335
    :cond_6
    const/16 v25, 0x1

    .line 336
    .local v25, "signum":I
    const-string/jumbo v30, "S"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 337
    const/16 v25, -0x1

    .line 338
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v32, v32, v18

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    goto/16 :goto_0

    .line 344
    .end local v17    # "latRef":Ljava/lang/String;
    .end local v18    # "latitude":D
    .end local v25    # "signum":I
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v24

    .line 346
    .restart local v24    # "rationals":[Landroid/util/Rational;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryType()I

    move-result v30

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/oneplus/media/ExifMetadata;->convertUnsignedLatLong([Landroid/util/Rational;)D

    move-result-wide v22

    .line 350
    .local v22, "longitude":D
    :goto_2
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v30

    if-nez v30, :cond_0

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    .line 353
    .restart local v26    # "signum":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isNaN(D)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 354
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 355
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    mul-double v32, v26, v22

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    goto/16 :goto_0

    .line 349
    .end local v22    # "longitude":D
    .end local v26    # "signum":D
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/oneplus/media/ExifMetadata;->convertLatLong([Landroid/util/Rational;)D

    move-result-wide v22

    .restart local v22    # "longitude":D
    goto :goto_2

    .line 361
    .end local v22    # "longitude":D
    .end local v24    # "rationals":[Landroid/util/Rational;
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v20

    .line 362
    .local v20, "longRef":Ljava/lang/String;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_0

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    .line 365
    .restart local v22    # "longitude":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 366
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    .line 367
    :cond_a
    const/16 v25, 0x1

    .line 368
    .restart local v25    # "signum":I
    const-string/jumbo v30, "W"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 369
    const/16 v25, -0x1

    .line 370
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v32, v32, v22

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    goto/16 :goto_0

    .line 376
    .end local v20    # "longRef":Ljava/lang/String;
    .end local v22    # "longitude":D
    .end local v25    # "signum":I
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v12

    .line 377
    .local v12, "dateTime":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_0

    .line 379
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v30, "yyyy:MM:dd"

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 380
    .local v5, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v30, "UTC"

    invoke-static/range {v30 .. v30}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 383
    :try_start_0
    invoke-virtual {v5, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 384
    .local v8, "dateInMillies":J
    sget-object v30, Lcom/oneplus/media/ExifMetadata;->PROP_GPS_DATE_TIME_STAMP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/oneplus/media/ExifMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_c

    .line 386
    sget-object v30, Lcom/oneplus/media/ExifMetadata;->PROP_GPS_DATE_TIME_STAMP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/oneplus/media/ExifMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 387
    .local v28, "timeStamp":J
    sget-object v30, Lcom/oneplus/media/ExifMetadata;->PROP_GPS_DATE_TIME_STAMP:Lcom/oneplus/base/PropertyKey;

    add-long v32, v8, v28

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 392
    .end local v8    # "dateInMillies":J
    .end local v28    # "timeStamp":J
    :catch_0
    move-exception v13

    .line 393
    .local v13, "e":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/media/ExifMetadata;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string/jumbo v31, "processExif() - Error when parse GPS date stamp"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 389
    .end local v13    # "e":Ljava/lang/Throwable;
    .restart local v8    # "dateInMillies":J
    :cond_c
    :try_start_1
    sget-object v30, Lcom/oneplus/media/ExifMetadata;->PROP_GPS_DATE_TIME_STAMP:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 400
    .end local v5    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v8    # "dateInMillies":J
    .end local v12    # "dateTime":Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v24

    .line 401
    .restart local v24    # "rationals":[Landroid/util/Rational;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v30, v0

    if-gtz v30, :cond_d

    .line 402
    return-void

    .line 404
    :cond_d
    const-wide/16 v14, 0x0

    .line 405
    .local v14, "gpstime":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    .line 407
    aget-object v30, v24, v16

    invoke-virtual/range {v30 .. v30}, Landroid/util/Rational;->getNumerator()I

    move-result v21

    .line 408
    .local v21, "numberator":I
    if-nez v16, :cond_f

    .line 409
    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v30, v0

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v14, v14, v30

    .line 405
    :cond_e
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 410
    :cond_f
    const/16 v30, 0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 411
    mul-int/lit8 v30, v21, 0x3c

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v14, v14, v30

    goto :goto_4

    .line 412
    :cond_10
    const/16 v30, 0x2

    move/from16 v0, v16

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 413
    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v14, v14, v30

    goto :goto_4

    .line 416
    .end local v21    # "numberator":I
    :cond_11
    sget-object v30, Lcom/oneplus/media/ExifMetadata;->PROP_GPS_DATE_TIME_STAMP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/oneplus/media/ExifMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_12

    .line 418
    sget-object v30, Lcom/oneplus/media/ExifMetadata;->PROP_GPS_DATE_TIME_STAMP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/oneplus/media/ExifMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 419
    .local v10, "dateStamp":J
    sget-object v30, Lcom/oneplus/media/ExifMetadata;->PROP_GPS_DATE_TIME_STAMP:Lcom/oneplus/base/PropertyKey;

    add-long v32, v14, v10

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 421
    .end local v10    # "dateStamp":J
    :cond_12
    sget-object v30, Lcom/oneplus/media/ExifMetadata;->PROP_GPS_DATE_TIME_STAMP:Lcom/oneplus/base/PropertyKey;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_7
        0x1d -> :sswitch_6
    .end sparse-switch
.end method

.method private processIFD0(Lcom/oneplus/media/IfdEntryEnumerator;)V
    .locals 2
    .param p1, "entryEnumerator"    # Lcom/oneplus/media/IfdEntryEnumerator;

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_0
    return-void

    .line 435
    :pswitch_0
    sget-object v0, Lcom/oneplus/media/ExifMetadata;->PROP_MAKE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :pswitch_1
    sget-object v0, Lcom/oneplus/media/ExifMetadata;->PROP_MODEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x10f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setLocationProp(Landroid/location/Location;)Z
    .locals 2
    .param p1, "value"    # Landroid/location/Location;

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/oneplus/media/ExifMetadata;->verifyAccess()V

    .line 459
    invoke-virtual {p0}, Lcom/oneplus/media/ExifMetadata;->verifyReleaseState()V

    .line 462
    iget-object v0, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    .line 463
    .local v0, "oldValue":Landroid/location/Location;
    iput-object p1, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    .line 466
    sget-object v1, Lcom/oneplus/media/ExifMetadata;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/media/ExifMetadata;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/media/ExifMetadata;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    return-object v0

    .line 197
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/base/BasicBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/media/ExifMetadata;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 449
    check-cast p2, Landroid/location/Location;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/media/ExifMetadata;->setLocationProp(Landroid/location/Location;)Z

    move-result v0

    return v0

    .line 450
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BasicBaseObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
