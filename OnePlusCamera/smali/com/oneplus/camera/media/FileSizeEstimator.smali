.class public final Lcom/oneplus/camera/media/FileSizeEstimator;
.super Ljava/lang/Object;
.source "FileSizeEstimator.java"


# static fields
.field private static final JPEG_SIZE_COEFF:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 12
    const/16 v0, 0xb

    new-array v0, v0, [[D

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [D

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [D

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [D

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/media/FileSizeEstimator;->JPEG_SIZE_COEFF:[[D

    return-void

    nop

    :array_0
    .array-data 8
        -0x3f0c7d1000000000L    # -79919.0
        0x4108595800000000L    # 199467.0
        -0x3f2b12c000000000L    # -21429.0
        0x408c886666666666L    # 913.05
    .end array-data

    :array_1
    .array-data 8
        -0x3efcb32000000000L    # -158108.0
        0x4114b33800000000L    # 339150.0
        -0x3f1ceca000000000L    # -39067.0
        0x40a0153333333333L    # 2058.6
    .end array-data

    :array_2
    .array-data 8
        -0x3eefc07800000000L    # -266210.0
        0x41254de400000000L    # 698098.0
        -0x3f0e726000000000L    # -71898.0
        0x40ad66cccccccccdL    # 3763.4
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static estimateJpegFileSize(III)J
    .locals 12
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "quality"    # I

    .prologue
    .line 59
    const/16 v8, 0x50

    if-lt p2, v8, :cond_0

    const/16 v8, 0x64

    if-le p2, v8, :cond_1

    .line 60
    :cond_0
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid JPEG quality : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 63
    :cond_1
    div-int/lit8 v8, p2, 0xa

    mul-int/lit8 v2, v8, 0xa

    .line 64
    .local v2, "lowerBound":I
    sget-object v8, Lcom/oneplus/camera/media/FileSizeEstimator;->JPEG_SIZE_COEFF:[[D

    div-int/lit8 v9, v2, 0xa

    aget-object v3, v8, v9

    .line 65
    .local v3, "lowerBoundCoeff":[D
    if-ne v2, p2, :cond_2

    if-eqz v3, :cond_2

    .line 66
    invoke-static {p0, p1, v3}, Lcom/oneplus/camera/media/FileSizeEstimator;->estimateJpegFileSize(II[D)J

    move-result-wide v8

    .line 83
    :goto_0
    return-wide v8

    .line 69
    :cond_2
    add-int/lit8 v6, v2, 0xa

    .line 70
    .local v6, "upperBound":I
    sget-object v8, Lcom/oneplus/camera/media/FileSizeEstimator;->JPEG_SIZE_COEFF:[[D

    div-int/lit8 v9, v6, 0xa

    aget-object v7, v8, v9

    .line 71
    .local v7, "upperBoundCoeff":[D
    :goto_1
    if-nez v3, :cond_3

    .line 73
    add-int/lit8 v2, v2, -0xa

    .line 74
    sget-object v8, Lcom/oneplus/camera/media/FileSizeEstimator;->JPEG_SIZE_COEFF:[[D

    div-int/lit8 v9, v2, 0xa

    aget-object v3, v8, v9

    goto :goto_1

    .line 76
    :cond_3
    :goto_2
    if-nez v7, :cond_4

    .line 78
    add-int/lit8 v6, v6, 0xa

    .line 79
    sget-object v8, Lcom/oneplus/camera/media/FileSizeEstimator;->JPEG_SIZE_COEFF:[[D

    div-int/lit8 v9, v6, 0xa

    aget-object v7, v8, v9

    goto :goto_2

    .line 81
    :cond_4
    invoke-static {p0, p1, v3}, Lcom/oneplus/camera/media/FileSizeEstimator;->estimateJpegFileSize(II[D)J

    move-result-wide v8

    long-to-double v0, v8

    .line 82
    .local v0, "lower":D
    invoke-static {p0, p1, v7}, Lcom/oneplus/camera/media/FileSizeEstimator;->estimateJpegFileSize(II[D)J

    move-result-wide v8

    long-to-double v4, v8

    .line 83
    .local v4, "upper":D
    sub-double v8, v4, v0

    sub-int v10, p2, v2

    int-to-double v10, v10

    mul-double/2addr v8, v10

    sub-int v10, v6, v2

    int-to-double v10, v10

    div-double/2addr v8, v10

    add-double/2addr v8, v0

    double-to-long v8, v8

    goto :goto_0
.end method

.method public static estimateJpegFileSize(II[D)J
    .locals 12
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "coeff"    # [D

    .prologue
    .line 91
    mul-int v8, p0, p1

    int-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v2, v8, v10

    .line 92
    .local v2, "mp":D
    const-wide/16 v4, 0x0

    .line 93
    .local v4, "size":D
    array-length v8, p2

    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 95
    aget-wide v6, p2, v0

    .line 96
    .local v6, "value":D
    move v1, v0

    .local v1, "j":I
    :goto_1
    if-lez v1, :cond_0

    .line 97
    mul-double/2addr v6, v2

    .line 96
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 98
    :cond_0
    add-double/2addr v4, v6

    .line 93
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 100
    .end local v1    # "j":I
    .end local v6    # "value":D
    :cond_1
    double-to-long v8, v4

    return-wide v8
.end method

.method public static estimateJpegFileSize(Landroid/util/Size;I)J
    .locals 2
    .param p0, "size"    # Landroid/util/Size;
    .param p1, "quality"    # I

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oneplus/camera/media/FileSizeEstimator;->estimateJpegFileSize(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public static estimateJpegFileSize(Lcom/oneplus/camera/media/Resolution;I)J
    .locals 2
    .param p0, "resolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p1, "quality"    # I

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oneplus/camera/media/FileSizeEstimator;->estimateJpegFileSize(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final estimateVideoFileSize(Landroid/media/CamcorderProfile;J)J
    .locals 5
    .param p0, "profile"    # Landroid/media/CamcorderProfile;
    .param p1, "durationSeconds"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 112
    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid duration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 116
    iget v2, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    iget v3, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    int-to-long v0, v2

    .line 117
    .local v0, "dataSize":J
    mul-long v2, v0, p1

    .line 119
    .end local v0    # "dataSize":J
    :cond_1
    return-wide v2
.end method
