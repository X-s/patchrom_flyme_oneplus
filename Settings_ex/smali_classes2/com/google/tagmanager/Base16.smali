.class Lcom/google/tagmanager/Base16;
.super Ljava/lang/Object;
.source "Base16.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 35
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 38
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 39
    :goto_0
    if-lt v0, v1, :cond_1

    .line 47
    return-object v2

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "purported base16 string has odd number of characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 41
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 42
    if-ne v3, v6, :cond_3

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "purported base16 string has illegal char"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_3
    if-eq v4, v6, :cond_2

    .line 45
    div-int/lit8 v5, v0, 0x2

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 39
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15
    :cond_0
    aget-byte v3, p0, v0

    .line 17
    and-int/lit16 v4, v3, 0xf0

    if-eqz v4, :cond_1

    .line 20
    :goto_1
    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "0"

    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
