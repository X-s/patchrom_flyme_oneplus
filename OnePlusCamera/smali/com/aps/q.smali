.class public Lcom/aps/q;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field private static a:Lcom/aps/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/aps/q;->a:Lcom/aps/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 137
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method static a(I)[B
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 159
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 160
    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 161
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 162
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 163
    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 164
    return-object v0
.end method

.method public static a(J)[B
    .locals 6

    .prologue
    const/16 v0, 0x8

    .line 189
    new-array v1, v0, [B

    const/4 v0, 0x0

    .line 191
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 197
    return-object v1

    .line 193
    :cond_0
    mul-int/lit8 v2, v0, 0x8

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 155
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/aps/q;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method static b(I)[B
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 181
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 182
    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 183
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 184
    return-object v0
.end method

.method static b(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 177
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/aps/q;->b(I)[B

    move-result-object v0

    return-object v0
.end method
