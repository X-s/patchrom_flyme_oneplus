.class public final enum Lcom/oneplus/util/AspectRatio;
.super Ljava/lang/Enum;
.source "AspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/util/AspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/util/AspectRatio;

.field public static final enum RATIO_16x10:Lcom/oneplus/util/AspectRatio;

.field public static final enum RATIO_16x9:Lcom/oneplus/util/AspectRatio;

.field public static final enum RATIO_1x1:Lcom/oneplus/util/AspectRatio;

.field public static final enum RATIO_3x2:Lcom/oneplus/util/AspectRatio;

.field public static final enum RATIO_4x3:Lcom/oneplus/util/AspectRatio;

.field public static final enum UNKNOWN:Lcom/oneplus/util/AspectRatio;


# instance fields
.field private final landscapeRatio:F

.field private final portraitRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/oneplus/util/AspectRatio;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/oneplus/util/AspectRatio;-><init>(Ljava/lang/String;III)V

    .line 13
    sput-object v0, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    .line 14
    new-instance v0, Lcom/oneplus/util/AspectRatio;

    const-string/jumbo v1, "RATIO_16x9"

    .line 17
    const/16 v2, 0x10

    const/16 v3, 0x9

    .line 14
    invoke-direct {v0, v1, v5, v2, v3}, Lcom/oneplus/util/AspectRatio;-><init>(Ljava/lang/String;III)V

    .line 17
    sput-object v0, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    .line 18
    new-instance v0, Lcom/oneplus/util/AspectRatio;

    const-string/jumbo v1, "RATIO_16x10"

    .line 21
    const/16 v2, 0x10

    const/16 v3, 0xa

    .line 18
    invoke-direct {v0, v1, v7, v2, v3}, Lcom/oneplus/util/AspectRatio;-><init>(Ljava/lang/String;III)V

    .line 21
    sput-object v0, Lcom/oneplus/util/AspectRatio;->RATIO_16x10:Lcom/oneplus/util/AspectRatio;

    .line 22
    new-instance v0, Lcom/oneplus/util/AspectRatio;

    const-string/jumbo v1, "RATIO_4x3"

    invoke-direct {v0, v1, v6, v8, v6}, Lcom/oneplus/util/AspectRatio;-><init>(Ljava/lang/String;III)V

    .line 25
    sput-object v0, Lcom/oneplus/util/AspectRatio;->RATIO_4x3:Lcom/oneplus/util/AspectRatio;

    .line 26
    new-instance v0, Lcom/oneplus/util/AspectRatio;

    const-string/jumbo v1, "RATIO_3x2"

    invoke-direct {v0, v1, v8, v6, v7}, Lcom/oneplus/util/AspectRatio;-><init>(Ljava/lang/String;III)V

    .line 29
    sput-object v0, Lcom/oneplus/util/AspectRatio;->RATIO_3x2:Lcom/oneplus/util/AspectRatio;

    .line 30
    new-instance v0, Lcom/oneplus/util/AspectRatio;

    const-string/jumbo v1, "RATIO_1x1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/oneplus/util/AspectRatio;-><init>(Ljava/lang/String;III)V

    .line 33
    sput-object v0, Lcom/oneplus/util/AspectRatio;->RATIO_1x1:Lcom/oneplus/util/AspectRatio;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/util/AspectRatio;

    sget-object v1, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_16x10:Lcom/oneplus/util/AspectRatio;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_4x3:Lcom/oneplus/util/AspectRatio;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_3x2:Lcom/oneplus/util/AspectRatio;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_1x1:Lcom/oneplus/util/AspectRatio;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/util/AspectRatio;->$VALUES:[Lcom/oneplus/util/AspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    if-lez p4, :cond_0

    .line 47
    int-to-float v0, p3

    int-to-float v1, p4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/util/AspectRatio;->landscapeRatio:F

    .line 48
    int-to-float v0, p4

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/util/AspectRatio;->portraitRatio:F

    .line 43
    :goto_0
    return-void

    .line 52
    :cond_0
    iput v0, p0, Lcom/oneplus/util/AspectRatio;->landscapeRatio:F

    .line 53
    iput v0, p0, Lcom/oneplus/util/AspectRatio;->portraitRatio:F

    goto :goto_0
.end method

.method public static get(FF)Lcom/oneplus/util/AspectRatio;
    .locals 8
    .param p0, "width"    # F
    .param p1, "height"    # F

    .prologue
    const/4 v5, 0x0

    .line 67
    cmpl-float v4, p0, p1

    if-ltz v4, :cond_1

    .line 69
    cmpl-float v4, p1, v5

    if-lez v4, :cond_0

    .line 70
    div-float v4, p0, p1

    float-to-double v2, v4

    .line 81
    .local v2, "ratio":D
    :goto_0
    invoke-static {}, Lcom/oneplus/util/AspectRatio;->values()[Lcom/oneplus/util/AspectRatio;

    move-result-object v1

    .line 82
    .local v1, "ratios":[Lcom/oneplus/util/AspectRatio;
    array-length v4, v1

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_4

    .line 84
    aget-object v4, v1, v0

    iget v4, v4, Lcom/oneplus/util/AspectRatio;->landscapeRatio:F

    float-to-double v4, v4

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f9eb851e0000000L    # 0.029999999329447746

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_3

    .line 85
    aget-object v4, v1, v0

    return-object v4

    .line 72
    .end local v0    # "i":I
    .end local v1    # "ratios":[Lcom/oneplus/util/AspectRatio;
    .end local v2    # "ratio":D
    :cond_0
    sget-object v4, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    return-object v4

    .line 76
    :cond_1
    cmpl-float v4, p0, v5

    if-lez v4, :cond_2

    .line 77
    div-float v4, p1, p0

    float-to-double v2, v4

    .restart local v2    # "ratio":D
    goto :goto_0

    .line 79
    .end local v2    # "ratio":D
    :cond_2
    sget-object v4, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    return-object v4

    .line 82
    .restart local v0    # "i":I
    .restart local v1    # "ratios":[Lcom/oneplus/util/AspectRatio;
    .restart local v2    # "ratio":D
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 87
    :cond_4
    sget-object v4, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    return-object v4
.end method

.method public static get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;
    .locals 2
    .param p0, "size"    # Landroid/util/Size;

    .prologue
    .line 98
    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/oneplus/util/AspectRatio;->get(FF)Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    sget-object v0, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/util/AspectRatio;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/oneplus/util/AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/util/AspectRatio;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/util/AspectRatio;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oneplus/util/AspectRatio;->$VALUES:[Lcom/oneplus/util/AspectRatio;

    return-object v0
.end method
