.class public Lcom/amap/api/mapcore2d/u;
.super Ljava/lang/Object;
.source "GeoPoint.java"


# instance fields
.field private a:J

.field private b:J

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/u;->a:J

    .line 6
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/u;->b:J

    .line 7
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->c:D

    .line 8
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->d:D

    .line 11
    iput-wide v4, p0, Lcom/amap/api/mapcore2d/u;->a:J

    .line 12
    iput-wide v4, p0, Lcom/amap/api/mapcore2d/u;->b:J

    .line 13
    return-void
.end method

.method private constructor <init>(DDJJ)V
    .locals 5

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/u;->a:J

    .line 6
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/u;->b:J

    .line 7
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->c:D

    .line 8
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->d:D

    .line 44
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/u;->c:D

    .line 45
    iput-wide p3, p0, Lcom/amap/api/mapcore2d/u;->d:D

    .line 46
    iput-wide p5, p0, Lcom/amap/api/mapcore2d/u;->a:J

    .line 47
    iput-wide p7, p0, Lcom/amap/api/mapcore2d/u;->b:J

    .line 48
    return-void
.end method

.method constructor <init>(DDZ)V
    .locals 7

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const-wide/16 v0, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v4, p0, Lcom/amap/api/mapcore2d/u;->a:J

    .line 6
    iput-wide v4, p0, Lcom/amap/api/mapcore2d/u;->b:J

    .line 7
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->c:D

    .line 8
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->d:D

    const/4 v0, 0x1

    .line 23
    if-eq p5, v0, :cond_0

    .line 27
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/u;->c:D

    .line 28
    iput-wide p3, p0, Lcom/amap/api/mapcore2d/u;->d:D

    .line 30
    :goto_0
    return-void

    .line 24
    :cond_0
    mul-double v0, p1, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->a:J

    .line 25
    mul-double v0, p3, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->b:J

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/u;->a:J

    .line 6
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/u;->b:J

    .line 7
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->c:D

    .line 8
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->d:D

    .line 17
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->a:J

    .line 18
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->b:J

    .line 19
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->b:J

    long-to-int v0, v0

    return v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/u;->d:D

    .line 35
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public b(D)V
    .locals 1

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/u;->c:D

    .line 40
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->b:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->a:J

    return-wide v0
.end method

.method public e()D
    .locals 4

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 107
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->b:J

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v0

    const-wide v2, 0x41731bf84570a3d7L    # 2.003750834E7

    .line 108
    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 109
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->d:D

    .line 111
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->d:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    if-eq p0, p1, :cond_0

    .line 54
    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 58
    check-cast p1, Lcom/amap/api/mapcore2d/u;

    .line 59
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->a:J

    iget-wide v2, p1, Lcom/amap/api/mapcore2d/u;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 60
    return v4

    .line 53
    :cond_0
    return v5

    .line 55
    :cond_1
    return v4

    .line 57
    :cond_2
    return v4

    .line 61
    :cond_3
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->b:J

    iget-wide v2, p1, Lcom/amap/api/mapcore2d/u;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 62
    return v4

    .line 63
    :cond_4
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/amap/api/mapcore2d/u;->c:D

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 65
    return v4

    .line 66
    :cond_5
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/amap/api/mapcore2d/u;->d:D

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 68
    return v4

    .line 69
    :cond_6
    return v5
.end method

.method public f()D
    .locals 4

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 117
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->a:J

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    .line 118
    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr v0, v2

    const-wide v2, 0x41731bf84570a3d7L    # 2.003750834E7

    .line 121
    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 122
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/u;->c:D

    .line 124
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->c:D

    return-wide v0
.end method

.method public g()Lcom/amap/api/mapcore2d/u;
    .locals 10

    .prologue
    .line 128
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/u;->c:D

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/u;->d:D

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/u;->a:J

    iget-wide v8, p0, Lcom/amap/api/mapcore2d/u;->b:J

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/mapcore2d/u;-><init>(DDJJ)V

    return-object v1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 76
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/u;->a:J

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/u;->a:J

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/u;->b:J

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/u;->b:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 79
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/u;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 81
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/u;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 83
    return v0
.end method
