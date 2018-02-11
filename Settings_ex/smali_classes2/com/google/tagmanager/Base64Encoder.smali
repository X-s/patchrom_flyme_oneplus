.class Lcom/google/tagmanager/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final NO_PADDING:I = 0x1

.field public static final URL_SAFE:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    invoke-static {}, Lcom/google/tagmanager/Base64Encoder;->getSdkVersion()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 54
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 55
    :cond_0
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_4

    .line 56
    :goto_0
    if-nez v0, :cond_5

    .line 59
    invoke-static {p0}, Lcom/google/tagmanager/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x2

    .line 45
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_2

    .line 48
    :goto_1
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_3

    .line 52
    :goto_2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0

    .line 46
    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    .line 49
    :cond_3
    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_4
    move v0, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_5
    invoke-static {p0}, Lcom/google/tagmanager/Base64;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    invoke-static {}, Lcom/google/tagmanager/Base64Encoder;->getSdkVersion()I

    move-result v0

    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    .line 32
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    .line 33
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_4

    .line 34
    :goto_1
    if-nez v1, :cond_5

    .line 37
    invoke-static {p0, v0}, Lcom/google/tagmanager/Base64;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 23
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1

    .line 26
    :goto_2
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    .line 30
    :goto_3
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24
    :cond_1
    const/4 v0, 0x3

    goto :goto_2

    .line 27
    :cond_2
    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    move v0, v2

    .line 32
    goto :goto_0

    :cond_4
    move v1, v2

    .line 33
    goto :goto_1

    .line 35
    :cond_5
    invoke-static {p0, v0}, Lcom/google/tagmanager/Base64;->encodeWebSafe([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSdkVersion()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
