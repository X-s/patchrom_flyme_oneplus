.class public Lnet/oneplus/odm/crypto/CRC64;
.super Ljava/lang/Object;
.source "CRC64.java"


# static fields
.field private static final GF2_DIM:I = 0x40

.field private static final POLY:J = -0x3693a86a2878f0beL

.field private static final table:[J


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/16 v9, 0x100

    const/4 v8, 0x1

    .line 21
    new-array v4, v9, [J

    sput-object v4, Lnet/oneplus/odm/crypto/CRC64;->table:[J

    .line 23
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 24
    int-to-long v0, v3

    .line 25
    .local v0, "crc":J
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 26
    and-long v4, v0, v10

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    .line 27
    ushr-long v4, v0, v8

    const-wide v6, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    xor-long v0, v4, v6

    .line 25
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    :cond_0
    ushr-long/2addr v0, v8

    goto :goto_2

    .line 32
    :cond_1
    sget-object v4, Lnet/oneplus/odm/crypto/CRC64;->table:[J

    aput-wide v0, v4, v3

    .line 23
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "crc":J
    .end local v2    # "k":I
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    .line 38
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    .line 42
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "len"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    .line 46
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/odm/crypto/CRC64;->update([BI)V

    .line 47
    return-void
.end method

.method public static combine(Lnet/oneplus/odm/crypto/CRC64;Lnet/oneplus/odm/crypto/CRC64;J)Lnet/oneplus/odm/crypto/CRC64;
    .locals 14
    .param p0, "summ1"    # Lnet/oneplus/odm/crypto/CRC64;
    .param p1, "summ2"    # Lnet/oneplus/odm/crypto/CRC64;
    .param p2, "len2"    # J

    .prologue
    .line 120
    const-wide/16 v10, 0x0

    cmp-long v7, p2, v10

    if-nez v7, :cond_0

    .line 121
    new-instance v7, Lnet/oneplus/odm/crypto/CRC64;

    invoke-virtual {p0}, Lnet/oneplus/odm/crypto/CRC64;->getValue()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Lnet/oneplus/odm/crypto/CRC64;-><init>(J)V

    .line 169
    :goto_0
    return-object v7

    .line 125
    :cond_0
    const/16 v7, 0x40

    new-array v4, v7, [J

    .line 126
    .local v4, "even":[J
    const/16 v7, 0x40

    new-array v6, v7, [J

    .line 129
    .local v6, "odd":[J
    const/4 v7, 0x0

    const-wide v10, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    aput-wide v10, v6, v7

    .line 131
    const-wide/16 v8, 0x1

    .line 132
    .local v8, "row":J
    const/4 v5, 0x1

    .local v5, "n":I
    :goto_1
    const/16 v7, 0x40

    if-ge v5, v7, :cond_1

    .line 133
    aput-wide v8, v6, v5

    .line 134
    const/4 v7, 0x1

    shl-long/2addr v8, v7

    .line 132
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    :cond_1
    invoke-static {v4, v6}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    .line 141
    invoke-static {v6, v4}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    .line 145
    invoke-virtual {p0}, Lnet/oneplus/odm/crypto/CRC64;->getValue()J

    move-result-wide v0

    .line 146
    .local v0, "crc1":J
    invoke-virtual {p1}, Lnet/oneplus/odm/crypto/CRC64;->getValue()J

    move-result-wide v2

    .line 149
    .local v2, "crc2":J
    :cond_2
    invoke-static {v4, v6}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    .line 150
    const-wide/16 v10, 0x1

    and-long v10, v10, p2

    const-wide/16 v12, 0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_3

    .line 151
    invoke-static {v4, v0, v1}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v0

    .line 152
    :cond_3
    const/4 v7, 0x1

    ushr-long p2, p2, v7

    .line 155
    const-wide/16 v10, 0x0

    cmp-long v7, p2, v10

    if-nez v7, :cond_4

    .line 168
    :goto_2
    xor-long/2addr v0, v2

    .line 169
    new-instance v7, Lnet/oneplus/odm/crypto/CRC64;

    invoke-direct {v7, v0, v1}, Lnet/oneplus/odm/crypto/CRC64;-><init>(J)V

    goto :goto_0

    .line 159
    :cond_4
    invoke-static {v6, v4}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixSquare([J[J)V

    .line 160
    const-wide/16 v10, 0x1

    and-long v10, v10, p2

    const-wide/16 v12, 0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_5

    .line 161
    invoke-static {v6, v0, v1}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v0

    .line 162
    :cond_5
    const/4 v7, 0x1

    ushr-long p2, p2, v7

    .line 165
    const-wide/16 v10, 0x0

    cmp-long v7, p2, v10

    if-nez v7, :cond_2

    goto :goto_2
.end method

.method public static fromBytes([B)Lnet/oneplus/odm/crypto/CRC64;
    .locals 8
    .param p0, "b"    # [B

    .prologue
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .local v2, "l":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 55
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    .line 56
    aget-byte v1, p0, v0

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Lnet/oneplus/odm/crypto/CRC64;

    invoke-direct {v1, v2, v3}, Lnet/oneplus/odm/crypto/CRC64;-><init>(J)V

    return-object v1
.end method

.method private static gf2MatrixSquare([J[J)V
    .locals 4
    .param p0, "square"    # [J
    .param p1, "mat"    # [J

    .prologue
    .line 109
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 110
    aget-wide v2, p1, v0

    invoke-static {p1, v2, v3}, Lnet/oneplus/odm/crypto/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method private static gf2MatrixTimes([JJ)J
    .locals 9
    .param p0, "mat"    # [J
    .param p1, "vec"    # J

    .prologue
    const-wide/16 v6, 0x1

    .line 97
    const-wide/16 v2, 0x0

    .line 98
    .local v2, "sum":J
    const/4 v0, 0x0

    .line 99
    .local v0, "idx":I
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-eqz v1, :cond_1

    .line 100
    and-long v4, p1, v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 101
    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    .line 102
    :cond_0
    const/4 v1, 0x1

    ushr-long/2addr p1, v1

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    return-wide v2
.end method


# virtual methods
.method public getBytes()[B
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 65
    new-array v0, v6, [B

    .line 66
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 67
    rsub-int/lit8 v2, v1, 0x7

    iget-wide v4, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    mul-int/lit8 v3, v1, 0x8

    ushr-long/2addr v4, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-object v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    return-wide v0
.end method

.method public update([BI)V
    .locals 8
    .param p1, "b"    # [B
    .param p2, "len"    # I

    .prologue
    const-wide/16 v6, -0x1

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "idx":I
    iget-wide v2, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    xor-long/2addr v2, v6

    iput-wide v2, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    .line 86
    :goto_0
    if-lez p2, :cond_0

    .line 87
    sget-object v1, Lnet/oneplus/odm/crypto/CRC64;->table:[J

    iget-wide v2, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    aget-byte v4, p1, v0

    int-to-long v4, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    aget-wide v2, v1, v2

    iget-wide v4, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    const/16 v1, 0x8

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 89
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 91
    :cond_0
    iget-wide v2, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    xor-long/2addr v2, v6

    iput-wide v2, p0, Lnet/oneplus/odm/crypto/CRC64;->value:J

    .line 92
    return-void
.end method
