.class public Landroid/content/res/OpDisplayUtils;
.super Ljava/lang/Object;
.source "OpDisplayUtils.java"


# static fields
.field private static final DENSITIES:[I

.field public static final DENSITY_NONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/res/OpDisplayUtils;->DENSITIES:[I

    return-void

    :array_0
    .array-data 4
        0x280
        0x1e0
        0x140
        0xf0
        0xa0
        0x78
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestDensityOrder(I)[I
    .locals 6
    .param p0, "density"    # I

    .prologue
    .line 26
    const/4 v1, 0x1

    .line 29
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    sget-object v5, Landroid/content/res/OpDisplayUtils;->DENSITIES:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 30
    sget-object v5, Landroid/content/res/OpDisplayUtils;->DENSITIES:[I

    aget v5, v5, v2

    if-eq p0, v5, :cond_0

    .line 29
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 35
    :cond_1
    sget-object v5, Landroid/content/res/OpDisplayUtils;->DENSITIES:[I

    array-length v5, v5

    add-int/2addr v5, v1

    new-array v0, v5, [I

    .line 36
    .local v0, "array":[I
    const/4 v5, 0x0

    aput p0, v0, v5

    .line 37
    const/4 v3, 0x1

    .line 38
    .local v3, "m":I
    :goto_2
    sget-object v5, Landroid/content/res/OpDisplayUtils;->DENSITIES:[I

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 39
    sget-object v5, Landroid/content/res/OpDisplayUtils;->DENSITIES:[I

    aget v5, v5, v1

    if-eq p0, v5, :cond_2

    .line 40
    add-int/lit8 v4, v3, 0x1

    .line 41
    .local v4, "n":I
    sget-object v5, Landroid/content/res/OpDisplayUtils;->DENSITIES:[I

    aget v5, v5, v1

    aput v5, v0, v3

    .line 42
    move v3, v4

    .line 44
    .end local v4    # "n":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 47
    :cond_3
    return-object v0
.end method

.method public static getDensityName(I)Ljava/lang/String;
    .locals 1
    .param p0, "density"    # I

    .prologue
    .line 53
    sparse-switch p0, :sswitch_data_0

    .line 76
    const-string v0, ""

    .line 81
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 55
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "xxxhdpi"

    .line 56
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 58
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "xxhdpi"

    .line 59
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 61
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "xhdpi"

    .line 62
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 64
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_3
    const-string v0, "hdpi"

    .line 65
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "mdpi"

    .line 68
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_5
    const-string v0, "ldpi"

    .line 71
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "nodpi"

    .line 74
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x78 -> :sswitch_5
        0xa0 -> :sswitch_4
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_2
        0x1e0 -> :sswitch_1
        0x280 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDensitySuffix(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 85
    invoke-static {p0}, Landroid/content/res/OpDisplayUtils;->getDensityName(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    return-object v0
.end method

.method public static getDrawbleDensityFolder(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/content/res/OpDisplayUtils;->getDrawbleDensityName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawbleDensityName(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/content/res/OpDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
