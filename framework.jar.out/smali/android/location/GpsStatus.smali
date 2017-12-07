.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$1;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BEIDOU_SVID_OFFSET:I = 0xc8

.field private static final GALILEO_SVID_OFFSET:I = 0x12c

.field private static final GLONASS_SVID_OFFSET:I = 0x40

.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0x154

.field private static final SBAS_SVID_OFFSET:I = -0x57


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToFirstFix:I


# direct methods
.method static synthetic -get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    return-object v0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/location/GpsStatus$1;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 154
    return-void
.end method

.method private clearSatellites()V
    .locals 4

    .prologue
    .line 253
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 254
    .local v2, "satellitesCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 255
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 256
    .local v1, "satellite":Landroid/location/GpsSatellite;
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/location/GpsSatellite;->mValid:Z

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "satellite":Landroid/location/GpsSatellite;
    :cond_0
    return-void
.end method

.method private setStatus(I[I[F[F[F)V
    .locals 7
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 158
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    .line 159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_a

    .line 161
    aget v4, p2, v1

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v0, v4, 0xf

    .line 163
    .local v0, "constellationType":I
    aget v4, p2, v1

    shr-int/lit8 v2, v4, 0x7

    .line 170
    .local v2, "prn":I
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 171
    add-int/lit8 v2, v2, 0x40

    .line 185
    :cond_0
    :goto_1
    if-lez v2, :cond_2

    const/16 v4, 0x154

    if-gt v2, v4, :cond_2

    .line 186
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 187
    .local v3, "satellite":Landroid/location/GpsSatellite;
    if-nez v3, :cond_1

    .line 188
    new-instance v3, Landroid/location/GpsSatellite;

    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v3, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    .line 189
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    :cond_1
    iput-boolean v5, v3, Landroid/location/GpsSatellite;->mValid:Z

    .line 193
    aget v4, p3, v1

    iput v4, v3, Landroid/location/GpsSatellite;->mSnr:F

    .line 194
    aget v4, p4, v1

    iput v4, v3, Landroid/location/GpsSatellite;->mElevation:F

    .line 195
    aget v4, p5, v1

    iput v4, v3, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 197
    aget v4, p2, v1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    move v4, v5

    .line 196
    :goto_2
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 199
    aget v4, p2, v1

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    move v4, v5

    .line 198
    :goto_3
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 201
    aget v4, p2, v1

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    move v4, v5

    .line 200
    :goto_4
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 159
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_3
    const/4 v4, 0x5

    if-ne v0, v4, :cond_4

    .line 173
    add-int/lit16 v2, v2, 0xc8

    goto :goto_1

    .line 174
    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 175
    add-int/lit8 v2, v2, -0x57

    goto :goto_1

    .line 178
    :cond_5
    const/4 v4, 0x6

    if-ne v0, v4, :cond_6

    .line 179
    add-int/lit16 v2, v2, 0x12c

    goto :goto_1

    .line 181
    :cond_6
    if-eq v0, v5, :cond_0

    .line 182
    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto :goto_5

    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_7
    move v4, v6

    .line 197
    goto :goto_2

    :cond_8
    move v4, v6

    .line 199
    goto :goto_3

    :cond_9
    move v4, v6

    .line 201
    goto :goto_4

    .line 157
    .end local v0    # "constellationType":I
    .end local v2    # "prn":I
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_a
    return-void
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    .prologue
    .line 249
    const/16 v0, 0x154

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method setStatus(Landroid/location/GnssStatus;I)V
    .locals 6
    .param p1, "status"    # Landroid/location/GnssStatus;
    .param p2, "timeToFirstFix"    # I

    .prologue
    .line 213
    iput p2, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 214
    iget v1, p1, Landroid/location/GnssStatus;->mSvCount:I

    iget-object v2, p1, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    iget-object v3, p1, Landroid/location/GnssStatus;->mCn0DbHz:[F

    iget-object v4, p1, Landroid/location/GnssStatus;->mElevations:[F

    .line 215
    iget-object v5, p1, Landroid/location/GnssStatus;->mAzimuths:[F

    move-object v0, p0

    .line 214
    invoke-direct/range {v0 .. v5}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[F)V

    .line 212
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    .prologue
    .line 219
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 218
    return-void
.end method
