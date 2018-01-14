.class public Landroid/net/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsHistory$1;,
        Landroid/net/NetworkStatsHistory$DataStreamUtils;,
        Landroid/net/NetworkStatsHistory$Entry;,
        Landroid/net/NetworkStatsHistory$ParcelUtils;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACTIVE_TIME:I = 0x1

.field public static final FIELD_ALL:I = -0x1

.field public static final FIELD_OPERATIONS:I = 0x20

.field public static final FIELD_RX_BYTES:I = 0x2

.field public static final FIELD_RX_PACKETS:I = 0x4

.field public static final FIELD_TX_BYTES:I = 0x8

.field public static final FIELD_TX_PACKETS:I = 0x10

.field private static TAG:Ljava/lang/String; = null

.field private static final VERSION_ADD_ACTIVE:I = 0x3

.field private static final VERSION_ADD_PACKETS:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# instance fields
.field private activeTime:[J

.field private bucketCount:I

.field private bucketDuration:J

.field private bucketStart:[J

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private totalBytes:J

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "NetworkStatsHistory"

    sput-object v0, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    .line 659
    new-instance v0, Landroid/net/NetworkStatsHistory$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "bucketDuration"    # J

    .prologue
    .line 105
    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 104
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "bucketDuration"    # J
    .param p3, "initialSize"    # I

    .prologue
    .line 109
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 108
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 3
    .param p1, "bucketDuration"    # J
    .param p3, "initialSize"    # I
    .param p4, "fields"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 114
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 115
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 116
    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 117
    :cond_1
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_2

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 118
    :cond_2
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_3

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 119
    :cond_3
    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_4

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 120
    :cond_4
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_5

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 121
    :cond_5
    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStatsHistory;J)V
    .locals 2
    .param p1, "existing"    # Landroid/net/NetworkStatsHistory;
    .param p2, "bucketDuration"    # J

    .prologue
    .line 126
    invoke-virtual {p1, p2, p3}, Landroid/net/NetworkStatsHistory;->estimateResizeBuckets(J)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 127
    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 132
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 133
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 134
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 135
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 136
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 137
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 138
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 139
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 158
    .local v0, "version":I
    packed-switch v0, :pswitch_data_0

    .line 187
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 161
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 162
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 163
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 164
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 165
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 166
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 167
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 168
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v2

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 191
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-eq v1, v2, :cond_2

    .line 194
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "Mismatched history lengths"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 174
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 175
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    :goto_1
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 177
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 178
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 179
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 180
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 181
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 182
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 183
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v2

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    goto :goto_0

    .line 176
    :cond_1
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    goto :goto_1

    .line 192
    :cond_2
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_0

    .line 193
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_0

    .line 156
    return-void

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static addLong([JIJ)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .prologue
    .line 680
    if-eqz p0, :cond_0

    aget-wide v0, p0, p1

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    .line 679
    :cond_0
    return-void
.end method

.method private ensureBuckets(JJ)V
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    const/4 v8, 0x0

    .line 407
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v4, p1, v4

    sub-long/2addr p1, v4

    .line 408
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v6, p3, v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long/2addr v4, v6

    add-long/2addr p3, v4

    .line 410
    move-wide v2, p1

    .local v2, "now":J
    :goto_0
    cmp-long v1, v2, p3

    if-gez v1, :cond_1

    .line 412
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v4, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v8, v4, v2, v3}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 413
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 415
    not-int v1, v0

    invoke-direct {p0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    .line 410
    :cond_0
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v2, v4

    goto :goto_0

    .line 405
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method private static getLong([JIJ)J
    .locals 0
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .prologue
    .line 672
    if-eqz p0, :cond_0

    aget-wide p2, p0, p1

    .end local p2    # "value":J
    :cond_0
    return-wide p2
.end method

.method private insertBucket(IJ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "start"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 425
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v4, v4

    if-lt v3, v4, :cond_5

    .line 426
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 427
    .local v2, "newLength":I
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 428
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 429
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 430
    :cond_1
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 431
    :cond_2
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 432
    :cond_3
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 433
    :cond_4
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 437
    .end local v2    # "newLength":I
    :cond_5
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge p1, v3, :cond_b

    .line 438
    add-int/lit8 v0, p1, 0x1

    .line 439
    .local v0, "dstPos":I
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int v1, v3, p1

    .line 441
    .local v1, "length":I
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 442
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 443
    :cond_6
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 444
    :cond_7
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 445
    :cond_8
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 446
    :cond_9
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 447
    :cond_a
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 450
    .end local v0    # "dstPos":I
    .end local v1    # "length":I
    :cond_b
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aput-wide p2, v3, p1

    .line 451
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 452
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 453
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 454
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 455
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 456
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 457
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 423
    return-void
.end method

.method public static randomLong(Ljava/util/Random;JJ)J
    .locals 5
    .param p0, "r"    # Ljava/util/Random;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 596
    long-to-float v0, p1

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-long v2, p3, p1

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private static setLong([JIJ)V
    .locals 0
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .prologue
    .line 676
    if-eqz p0, :cond_0

    aput-wide p2, p0, p1

    .line 675
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v1, 0x0

    .line 613
    const-string/jumbo v2, "NetworkStatsHistory: bucketDuration="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 614
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 615
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 617
    if-eqz p2, :cond_6

    .line 618
    .local v1, "start":I
    :goto_0
    if-lez v1, :cond_0

    .line 619
    const-string/jumbo v2, "(omitting "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string/jumbo v2, " buckets)"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 622
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v2, :cond_7

    .line 623
    const-string/jumbo v2, "st="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v2, v0

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 624
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_1

    const-string/jumbo v2, " rb="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 625
    :cond_1
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_2

    const-string/jumbo v2, " rp="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 626
    :cond_2
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_3

    const-string/jumbo v2, " tb="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 627
    :cond_3
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_4

    const-string/jumbo v2, " tp="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 628
    :cond_4
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_5

    const-string/jumbo v2, " op="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 629
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 617
    .end local v0    # "i":I
    .end local v1    # "start":I
    :cond_6
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v2, v2, -0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_0

    .line 632
    .restart local v0    # "i":I
    .restart local v1    # "start":I
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 612
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-wide/16 v6, 0x3e8

    const/16 v4, 0x2c

    .line 636
    const-string/jumbo v1, "d,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 638
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 640
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_5

    .line 641
    const-string/jumbo v1, "b,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v1, v0

    div-long/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 643
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 644
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_2
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 645
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 646
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_4
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 647
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 648
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    :cond_0
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 644
    :cond_1
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 645
    :cond_2
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 646
    :cond_3
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 647
    :cond_4
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 635
    :cond_5
    return-void
.end method

.method public estimateResizeBuckets(J)I
    .locals 5
    .param p1, "newBucketDuration"    # J

    .prologue
    .line 684
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method public generateRandom(JJJ)V
    .locals 19
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "bytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 551
    new-instance v18, Ljava/util/Random;

    invoke-direct/range {v18 .. v18}, Ljava/util/Random;-><init>()V

    .line 553
    .local v18, "r":Ljava/util/Random;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Random;->nextFloat()F

    move-result v2

    .line 554
    .local v2, "fractionRx":F
    move-wide/from16 v0, p5

    long-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-long v8, v3

    .line 555
    .local v8, "rxBytes":J
    move-wide/from16 v0, p5

    long-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    mul-float/2addr v3, v4

    float-to-long v12, v3

    .line 557
    .local v12, "txBytes":J
    const-wide/16 v4, 0x400

    div-long v10, v8, v4

    .line 558
    .local v10, "rxPackets":J
    const-wide/16 v4, 0x400

    div-long v14, v12, v4

    .line 559
    .local v14, "txPackets":J
    const-wide/16 v4, 0x800

    div-long v16, v8, v4

    .local v16, "operations":J
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    .line 561
    invoke-virtual/range {v3 .. v18}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJJJJJLjava/util/Random;)V

    .line 550
    return-void
.end method

.method public generateRandom(JJJJJJJLjava/util/Random;)V
    .locals 23
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J
    .param p15, "r"    # Ljava/util/Random;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 570
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 572
    new-instance v7, Landroid/net/NetworkStats$Entry;

    .line 573
    sget-object v8, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    .line 572
    invoke-direct/range {v7 .. v21}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 574
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    const-wide/16 v8, 0x400

    cmp-long v6, p5, v8

    if-gtz v6, :cond_0

    const-wide/16 v8, 0x80

    cmp-long v6, p7, v8

    if-lez v6, :cond_1

    .line 576
    :cond_0
    move-object/from16 v0, p15

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v10

    .line 577
    .local v10, "curStart":J
    const-wide/16 v8, 0x0

    sub-long v14, p3, v10

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    move-object/from16 v0, p15

    invoke-static {v0, v8, v9, v14, v15}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    add-long v12, v10, v8

    .line 579
    .local v12, "curEnd":J
    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p5

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 580
    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p7

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 581
    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p9

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 582
    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p11

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 583
    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p13

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->operations:J

    .line 585
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long p5, p5, v8

    .line 586
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long p7, p7, v8

    .line 587
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long p9, p9, v8

    .line 588
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long p11, p11, v8

    .line 589
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->operations:J

    sub-long p13, p13, v8

    move-object/from16 v9, p0

    move-object v14, v7

    .line 591
    invoke-virtual/range {v9 .. v14}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_0

    .line 574
    .end local v10    # "curStart":J
    .end local v12    # "curEnd":J
    :cond_1
    const-wide/16 v8, 0x400

    cmp-long v6, p9, v8

    if-gtz v6, :cond_0

    const-wide/16 v8, 0x80

    cmp-long v6, p11, v8

    if-gtz v6, :cond_0

    .line 575
    const-wide/16 v8, 0x20

    cmp-long v6, p13, v8

    if-gtz v6, :cond_0

    .line 569
    return-void
.end method

.method public getBucketDuration()J
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    return-wide v0
.end method

.method public getEnd()J
    .locals 4

    .prologue
    .line 232
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    return-wide v0

    .line 235
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getIndexAfter(J)I
    .locals 5
    .param p1, "time"    # J

    .prologue
    const/4 v3, 0x0

    .line 265
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 266
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 267
    not-int v0, v0

    .line 271
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexBefore(J)I
    .locals 5
    .param p1, "time"    # J

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 252
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 253
    not-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 257
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1

    .line 255
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getStart()J
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v0, v0, v1

    return-wide v0

    .line 227
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-wide v0
.end method

.method public getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 6
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    .prologue
    const-wide/16 v4, -0x1

    .line 278
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 279
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 280
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 281
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 282
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 283
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 284
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 285
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 286
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 287
    return-object v0

    .line 278
    .end local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    .restart local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    goto :goto_0
.end method

.method public getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 25
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "now"    # J
    .param p7, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    .prologue
    .line 503
    if-eqz p7, :cond_1

    move-object/from16 v5, p7

    .line 504
    .local v5, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    sub-long v18, p3, p1

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 505
    move-wide/from16 v0, p1

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    const-wide/16 v18, 0x0

    :goto_1
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    const-wide/16 v18, 0x0

    :goto_2
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    const-wide/16 v18, 0x0

    :goto_3
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    const-wide/16 v18, 0x0

    :goto_4
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    const-wide/16 v18, 0x0

    :goto_5
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    const-wide/16 v18, 0x0

    :goto_6
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 513
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v11

    .line 514
    .local v11, "startIndex":I
    move v10, v11

    .local v10, "i":I
    :goto_7
    if-ltz v10, :cond_0

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v18, v0

    aget-wide v8, v18, v10

    .line 516
    .local v8, "curStart":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v18, v0

    add-long v6, v8, v18

    .line 519
    .local v6, "curEnd":J
    cmp-long v18, v6, p1

    if-gtz v18, :cond_8

    .line 543
    .end local v6    # "curEnd":J
    .end local v8    # "curStart":J
    :cond_0
    return-object v5

    .line 503
    .end local v5    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v10    # "i":I
    .end local v11    # "startIndex":I
    :cond_1
    new-instance v5, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    goto/16 :goto_0

    .line 506
    .restart local v5    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_2
    const-wide/16 v18, -0x1

    goto :goto_1

    .line 507
    :cond_3
    const-wide/16 v18, -0x1

    goto :goto_2

    .line 508
    :cond_4
    const-wide/16 v18, -0x1

    goto :goto_3

    .line 509
    :cond_5
    const-wide/16 v18, -0x1

    goto :goto_4

    .line 510
    :cond_6
    const-wide/16 v18, -0x1

    goto :goto_5

    .line 511
    :cond_7
    const-wide/16 v18, -0x1

    goto :goto_6

    .line 521
    .restart local v6    # "curEnd":J
    .restart local v8    # "curStart":J
    .restart local v10    # "i":I
    .restart local v11    # "startIndex":I
    :cond_8
    cmp-long v18, v8, p3

    if-ltz v18, :cond_a

    .line 514
    :cond_9
    :goto_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    .line 524
    :cond_a
    cmp-long v18, v8, p5

    if-gez v18, :cond_10

    cmp-long v18, v6, p5

    if-lez v18, :cond_10

    const/4 v4, 0x1

    .line 526
    .local v4, "activeBucket":Z
    :goto_9
    if-eqz v4, :cond_11

    .line 527
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 533
    .local v12, "overlap":J
    :goto_a
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-lez v18, :cond_9

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 537
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 538
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 539
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 540
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 541
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    goto/16 :goto_8

    .line 524
    .end local v4    # "activeBucket":Z
    .end local v12    # "overlap":J
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 529
    .restart local v4    # "activeBucket":Z
    :cond_11
    cmp-long v18, v6, p3

    if-gez v18, :cond_12

    move-wide v14, v6

    .line 530
    .local v14, "overlapEnd":J
    :goto_b
    cmp-long v18, v8, p1

    if-lez v18, :cond_13

    move-wide/from16 v16, v8

    .line 531
    .local v16, "overlapStart":J
    :goto_c
    sub-long v12, v14, v16

    .restart local v12    # "overlap":J
    goto/16 :goto_a

    .line 529
    .end local v12    # "overlap":J
    .end local v14    # "overlapEnd":J
    .end local v16    # "overlapStart":J
    :cond_12
    move-wide/from16 v14, p3

    .restart local v14    # "overlapEnd":J
    goto :goto_b

    :cond_13
    move-wide/from16 v16, p1

    .line 530
    goto :goto_c
.end method

.method public getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    .prologue
    .line 495
    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    return-object v0
.end method

.method public intersects(JJ)Z
    .locals 7
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    const/4 v5, 0x1

    .line 603
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    .line 604
    .local v2, "dataStart":J
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    .line 605
    .local v0, "dataEnd":J
    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    return v5

    .line 606
    :cond_0
    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    cmp-long v4, p3, v0

    if-gtz v4, :cond_1

    return v5

    .line 607
    :cond_1
    cmp-long v4, v2, p1

    if-ltz v4, :cond_2

    cmp-long v4, v2, p3

    if-gtz v4, :cond_2

    return v5

    .line 608
    :cond_2
    cmp-long v4, v0, p1

    if-ltz v4, :cond_3

    cmp-long v4, v0, p3

    if-gtz v4, :cond_3

    return v5

    .line 609
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public recordData(JJJJ)V
    .locals 17
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "rxBytes"    # J
    .param p7, "txBytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 296
    new-instance v1, Landroid/net/NetworkStats$Entry;

    .line 297
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v6, p5

    move-wide/from16 v10, p7

    .line 296
    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 295
    return-void
.end method

.method public recordData(JJLandroid/net/NetworkStats$Entry;)V
    .locals 41
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 305
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v26, v0

    .line 306
    .local v26, "rxBytes":J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v28, v0

    .line 307
    .local v28, "rxPackets":J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v30, v0

    .line 308
    .local v30, "txBytes":J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v32, v0

    .line 309
    .local v32, "txPackets":J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide/from16 v22, v0

    .line 311
    .local v22, "operations":J
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v34

    if-eqz v34, :cond_0

    .line 314
    sget-object v34, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    const-string/jumbo v35, "entry.isNegative() tried recording negative data"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v34, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "rxBytes = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v34, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "rxPackets = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v34, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "txBytes = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v34, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "txPackets = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v34, Landroid/net/NetworkStatsHistory;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "operations = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 327
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_1

    .line 328
    return-void

    .line 332
    :cond_1
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 335
    sub-long v8, p3, p1

    .line 336
    .local v8, "duration":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v21

    .line 337
    .local v21, "startIndex":I
    move/from16 v20, v21

    .local v20, "i":I
    :goto_0
    if-ltz v20, :cond_2

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v34, v0

    aget-wide v6, v34, v20

    .line 339
    .local v6, "curStart":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v34, v0

    add-long v4, v6, v34

    .line 342
    .local v4, "curEnd":J
    cmp-long v34, v4, p1

    if-gez v34, :cond_3

    .line 366
    .end local v4    # "curEnd":J
    .end local v6    # "curStart":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v38, v0

    add-long v36, v36, v38

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 304
    return-void

    .line 344
    .restart local v4    # "curEnd":J
    .restart local v6    # "curStart":J
    :cond_3
    cmp-long v34, v6, p3

    if-lez v34, :cond_5

    .line 337
    :cond_4
    :goto_1
    add-int/lit8 v20, v20, -0x1

    goto :goto_0

    .line 346
    :cond_5
    move-wide/from16 v0, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v34

    move-wide/from16 v0, p1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v36

    sub-long v24, v34, v36

    .line 347
    .local v24, "overlap":J
    const-wide/16 v34, 0x0

    cmp-long v34, v24, v34

    if-lez v34, :cond_4

    .line 350
    mul-long v34, v26, v24

    div-long v12, v34, v8

    .line 351
    .local v12, "fracRxBytes":J
    mul-long v34, v28, v24

    div-long v14, v34, v8

    .line 352
    .local v14, "fracRxPackets":J
    mul-long v34, v30, v24

    div-long v16, v34, v8

    .line 353
    .local v16, "fracTxBytes":J
    mul-long v34, v32, v24

    div-long v18, v34, v8

    .line 354
    .local v18, "fracTxPackets":J
    mul-long v34, v22, v24

    div-long v10, v34, v8

    .line 356
    .local v10, "fracOperations":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v1, v12, v13}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v26, v26, v12

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v1, v14, v15}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v28, v28, v14

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v30, v30, v16

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v32, v32, v18

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v22, v22, v10

    .line 363
    sub-long v8, v8, v24

    goto/16 :goto_1
.end method

.method public recordEntireHistory(Landroid/net/NetworkStatsHistory;)V
    .locals 6
    .param p1, "input"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 374
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 373
    return-void
.end method

.method public recordHistory(Landroid/net/NetworkStatsHistory;JJ)V
    .locals 18
    .param p1, "input"    # Landroid/net/NetworkStatsHistory;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 383
    new-instance v3, Landroid/net/NetworkStats$Entry;

    .line 384
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    .line 383
    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 385
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v2, v4, :cond_2

    .line 386
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v6, v4, v2

    .line 387
    .local v6, "bucketStart":J
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v8, v6, v4

    .line 390
    .local v8, "bucketEnd":J
    cmp-long v4, v6, p2

    if-ltz v4, :cond_0

    cmp-long v4, v8, p4

    if-lez v4, :cond_1

    .line 385
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 393
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 394
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 395
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 396
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->operations:J

    move-object/from16 v5, p0

    move-object v10, v3

    .line 398
    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 382
    .end local v6    # "bucketStart":J
    .end local v8    # "bucketEnd":J
    :cond_2
    return-void
.end method

.method public removeBucketsBefore(J)V
    .locals 9
    .param p1, "cutoff"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v4, v6, :cond_0

    .line 467
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v6, v4

    .line 468
    .local v2, "curStart":J
    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v0, v2, v6

    .line 472
    .local v0, "curEnd":J
    cmp-long v6, v0, p1

    if-lez v6, :cond_8

    .line 475
    .end local v0    # "curEnd":J
    .end local v2    # "curStart":J
    :cond_0
    if-lez v4, :cond_7

    .line 476
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v5, v6

    .line 477
    .local v5, "length":I
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 478
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 479
    :cond_1
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 480
    :cond_2
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 481
    :cond_3
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 482
    :cond_4
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 483
    :cond_5
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 484
    :cond_6
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v6, v4

    iput v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 464
    .end local v5    # "length":I
    :cond_7
    return-void

    .line 466
    .restart local v0    # "curEnd":J
    .restart local v2    # "curStart":J
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 654
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 655
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "  "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 656
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 145
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 147
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 148
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 149
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 150
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 151
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 152
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 153
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 200
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 201
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 202
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 203
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 204
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 205
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 206
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 207
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 198
    return-void
.end method
