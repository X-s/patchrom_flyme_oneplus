.class public Lcom/adobe/xmp/impl/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final EQUAL:B = -0x3t

.field private static final INVALID:B = -0x1t

.field private static final WHITESPACE:B = -0x2t

.field private static ascii:[B

.field private static base64:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v0, 0x0

    const/4 v4, -0x2

    const/16 v1, 0x40

    .line 31
    new-array v1, v1, [B

    .line 32
    const/16 v2, 0x41

    aput-byte v2, v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x42

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x43

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x44

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    .line 33
    const/16 v3, 0x45

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x46

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x47

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x48

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    .line 34
    const/16 v3, 0x49

    aput-byte v3, v1, v2

    const/16 v2, 0x4a

    aput-byte v2, v1, v5

    const/16 v2, 0x4b

    aput-byte v2, v1, v6

    const/16 v2, 0xb

    const/16 v3, 0x4c

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    .line 35
    const/16 v3, 0x4d

    aput-byte v3, v1, v2

    const/16 v2, 0x4e

    aput-byte v2, v1, v7

    const/16 v2, 0xe

    const/16 v3, 0x4f

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x50

    aput-byte v3, v1, v2

    const/16 v2, 0x10

    .line 36
    const/16 v3, 0x51

    aput-byte v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0x52

    aput-byte v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x53

    aput-byte v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0x54

    aput-byte v3, v1, v2

    const/16 v2, 0x14

    .line 37
    const/16 v3, 0x55

    aput-byte v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x56

    aput-byte v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0x57

    aput-byte v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x58

    aput-byte v3, v1, v2

    const/16 v2, 0x18

    .line 38
    const/16 v3, 0x59

    aput-byte v3, v1, v2

    const/16 v2, 0x19

    const/16 v3, 0x5a

    aput-byte v3, v1, v2

    const/16 v2, 0x1a

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0x62

    aput-byte v3, v1, v2

    const/16 v2, 0x1c

    .line 39
    const/16 v3, 0x63

    aput-byte v3, v1, v2

    const/16 v2, 0x1d

    const/16 v3, 0x64

    aput-byte v3, v1, v2

    const/16 v2, 0x1e

    const/16 v3, 0x65

    aput-byte v3, v1, v2

    const/16 v2, 0x1f

    const/16 v3, 0x66

    aput-byte v3, v1, v2

    const/16 v2, 0x20

    .line 40
    const/16 v3, 0x67

    aput-byte v3, v1, v2

    const/16 v2, 0x21

    const/16 v3, 0x68

    aput-byte v3, v1, v2

    const/16 v2, 0x22

    const/16 v3, 0x69

    aput-byte v3, v1, v2

    const/16 v2, 0x23

    const/16 v3, 0x6a

    aput-byte v3, v1, v2

    const/16 v2, 0x24

    .line 41
    const/16 v3, 0x6b

    aput-byte v3, v1, v2

    const/16 v2, 0x25

    const/16 v3, 0x6c

    aput-byte v3, v1, v2

    const/16 v2, 0x26

    const/16 v3, 0x6d

    aput-byte v3, v1, v2

    const/16 v2, 0x27

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    const/16 v2, 0x28

    .line 42
    const/16 v3, 0x6f

    aput-byte v3, v1, v2

    const/16 v2, 0x29

    const/16 v3, 0x70

    aput-byte v3, v1, v2

    const/16 v2, 0x2a

    const/16 v3, 0x71

    aput-byte v3, v1, v2

    const/16 v2, 0x2b

    const/16 v3, 0x72

    aput-byte v3, v1, v2

    const/16 v2, 0x2c

    .line 43
    const/16 v3, 0x73

    aput-byte v3, v1, v2

    const/16 v2, 0x2d

    const/16 v3, 0x74

    aput-byte v3, v1, v2

    const/16 v2, 0x2e

    const/16 v3, 0x75

    aput-byte v3, v1, v2

    const/16 v2, 0x2f

    const/16 v3, 0x76

    aput-byte v3, v1, v2

    const/16 v2, 0x30

    .line 44
    const/16 v3, 0x77

    aput-byte v3, v1, v2

    const/16 v2, 0x31

    const/16 v3, 0x78

    aput-byte v3, v1, v2

    const/16 v2, 0x32

    const/16 v3, 0x79

    aput-byte v3, v1, v2

    const/16 v2, 0x33

    const/16 v3, 0x7a

    aput-byte v3, v1, v2

    const/16 v2, 0x34

    .line 45
    const/16 v3, 0x30

    aput-byte v3, v1, v2

    const/16 v2, 0x35

    const/16 v3, 0x31

    aput-byte v3, v1, v2

    const/16 v2, 0x36

    const/16 v3, 0x32

    aput-byte v3, v1, v2

    const/16 v2, 0x37

    const/16 v3, 0x33

    aput-byte v3, v1, v2

    const/16 v2, 0x38

    .line 46
    const/16 v3, 0x34

    aput-byte v3, v1, v2

    const/16 v2, 0x39

    const/16 v3, 0x35

    aput-byte v3, v1, v2

    const/16 v2, 0x3a

    const/16 v3, 0x36

    aput-byte v3, v1, v2

    const/16 v2, 0x3b

    const/16 v3, 0x37

    aput-byte v3, v1, v2

    const/16 v2, 0x3c

    .line 47
    const/16 v3, 0x38

    aput-byte v3, v1, v2

    const/16 v2, 0x3d

    const/16 v3, 0x39

    aput-byte v3, v1, v2

    const/16 v2, 0x3e

    const/16 v3, 0x2b

    aput-byte v3, v1, v2

    const/16 v2, 0x3f

    const/16 v3, 0x2f

    aput-byte v3, v1, v2

    .line 31
    sput-object v1, Lcom/adobe/xmp/impl/Base64;->base64:[B

    const/16 v1, 0xff

    .line 50
    new-array v1, v1, [B

    sput-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    .line 54
    if-ge v1, v2, :cond_1

    .line 56
    sget-object v2, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    sget-object v2, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 59
    add-int/lit8 v0, v0, 0x1

    :cond_1
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->base64:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 64
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    aput-byte v4, v0, v5

    .line 65
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    aput-byte v4, v0, v6

    .line 66
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    aput-byte v4, v0, v7

    .line 67
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    .line 70
    sget-object v0, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v1, 0x3d

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Base64;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final decode([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    move v2, v3

    move v0, v3

    .line 192
    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_3

    .line 194
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    aget-byte v4, p0, v2

    aget-byte v4, v1, v4

    .line 195
    if-gez v4, :cond_0

    const/4 v1, -0x1

    .line 199
    if-eq v4, v1, :cond_1

    .line 192
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 197
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, p0, v0

    move v0, v1

    .line 198
    goto :goto_1

    .line 201
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid base 64 string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_2
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    .line 210
    add-int/lit8 v0, v0, -0x1

    .line 208
    :cond_3
    if-gtz v0, :cond_2

    .line 212
    :cond_4
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    move v0, v3

    .line 218
    :goto_2
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ge v3, v2, :cond_5

    .line 220
    aget-byte v2, p0, v0

    shl-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xff

    .line 221
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v2, v4

    int-to-byte v2, v2

    .line 220
    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 222
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xff

    .line 223
    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p0, v5

    ushr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 222
    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 224
    add-int/lit8 v2, v3, 0x2

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x6

    and-int/lit16 v4, v4, 0xff

    .line 225
    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 224
    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 218
    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    .line 227
    :cond_5
    array-length v2, v1

    if-lt v3, v2, :cond_6

    .line 232
    :goto_3
    add-int/lit8 v2, v3, 0x1

    array-length v3, v1

    if-lt v2, v3, :cond_7

    .line 237
    :goto_4
    return-object v1

    .line 229
    :cond_6
    aget-byte v2, p0, v0

    shl-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xff

    .line 230
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v2, v4

    int-to-byte v2, v2

    .line 229
    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_3

    .line 234
    :cond_7
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xff

    .line 235
    add-int/lit8 v0, v0, 0x2

    aget-byte v0, p0, v0

    ushr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v3

    int-to-byte v0, v0

    .line 234
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_4
.end method

.method public static final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final encode([B)[B
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encode([BI)[B
    .locals 13

    .prologue
    const/high16 v12, 0xfc0000

    const v11, 0x3f000

    const/16 v10, 0x3d

    const/4 v1, 0x0

    .line 97
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x4

    .line 98
    if-ltz v0, :cond_1

    .line 104
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    .line 105
    if-gtz v0, :cond_2

    .line 110
    :goto_1
    new-array v6, v2, [B

    move v3, v1

    move v4, v1

    .line 119
    :cond_0
    :goto_2
    add-int/lit8 v5, v3, 0x3

    array-length v7, p0

    if-gt v5, v7, :cond_3

    .line 121
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    .line 122
    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v3

    .line 123
    add-int/lit8 v3, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x0

    or-int/2addr v5, v7

    .line 124
    and-int v7, v5, v12

    shr-int/lit8 v7, v7, 0x12

    .line 125
    add-int/lit8 v8, v4, 0x1

    sget-object v9, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v7, v9, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 126
    and-int v4, v5, v11

    shr-int/lit8 v4, v4, 0xc

    .line 127
    add-int/lit8 v7, v8, 0x1

    sget-object v9, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v4, v9, v4

    int-to-byte v4, v4

    aput-byte v4, v6, v8

    .line 128
    and-int/lit16 v4, v5, 0xfc0

    shr-int/lit8 v4, v4, 0x6

    .line 129
    add-int/lit8 v8, v7, 0x1

    sget-object v9, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v4, v9, v4

    int-to-byte v4, v4

    aput-byte v4, v6, v7

    .line 130
    and-int/lit8 v5, v5, 0x3f

    .line 131
    add-int/lit8 v4, v8, 0x1

    sget-object v7, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v5, v7, v5

    int-to-byte v5, v5

    aput-byte v5, v6, v8

    .line 133
    add-int/lit8 v1, v1, 0x4

    .line 134
    if-ge v4, v2, :cond_0

    if-lez v0, :cond_0

    rem-int v5, v1, v0

    if-nez v5, :cond_0

    .line 136
    add-int/lit8 v5, v4, 0x1

    const/16 v7, 0xa

    aput-byte v7, v6, v4

    move v4, v5

    goto :goto_2

    :cond_1
    move v0, v1

    .line 100
    goto :goto_0

    .line 107
    :cond_2
    add-int/lit8 v3, v2, -0x1

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    goto :goto_1

    .line 139
    :cond_3
    array-length v0, p0

    sub-int/2addr v0, v3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 151
    array-length v0, p0

    sub-int/2addr v0, v3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 161
    :goto_3
    return-object v6

    .line 141
    :cond_4
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 142
    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 143
    and-int v1, v0, v12

    shr-int/lit8 v1, v1, 0x12

    .line 144
    add-int/lit8 v2, v4, 0x1

    sget-object v3, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v1, v3, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v4

    .line 145
    and-int v1, v0, v11

    shr-int/lit8 v1, v1, 0xc

    .line 146
    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v1, v4, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v2

    .line 147
    and-int/lit16 v0, v0, 0xfc0

    shr-int/lit8 v0, v0, 0x6

    .line 148
    add-int/lit8 v1, v3, 0x1

    sget-object v2, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v0, v2, v0

    int-to-byte v0, v0

    aput-byte v0, v6, v3

    .line 149
    add-int/lit8 v0, v1, 0x1

    aput-byte v10, v6, v1

    goto :goto_3

    .line 153
    :cond_5
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 154
    and-int v1, v0, v12

    shr-int/lit8 v1, v1, 0x12

    .line 155
    add-int/lit8 v2, v4, 0x1

    sget-object v3, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v1, v3, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v4

    .line 156
    and-int/2addr v0, v11

    shr-int/lit8 v0, v0, 0xc

    .line 157
    add-int/lit8 v1, v2, 0x1

    sget-object v3, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v0, v3, v0

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    .line 158
    add-int/lit8 v0, v1, 0x1

    aput-byte v10, v6, v1

    .line 159
    add-int/lit8 v1, v0, 0x1

    aput-byte v10, v6, v0

    goto :goto_3
.end method
