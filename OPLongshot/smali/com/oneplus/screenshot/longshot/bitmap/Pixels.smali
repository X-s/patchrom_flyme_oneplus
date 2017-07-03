.class public Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
.super Ljava/lang/Object;
.source "Pixels.java"


# static fields
.field private static final MAX:I = 0x64

.field private static final PERCENT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Pixels"


# instance fields
.field private mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

.field private mPixels:[I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 25
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .line 39
    mul-int v0, p4, p5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 40
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    const/4 v2, 0x0

    move-object v0, p1

    move v3, p4

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 41
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "buffer"    # [I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 25
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .line 31
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    .line 32
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->setComparable(Lcom/oneplus/screenshot/longshot/compare/Comparable;)V

    .line 94
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 49
    move-object v4, p1

    check-cast v4, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 50
    .local v4, "pixels":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-nez v6, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v8

    .line 53
    :cond_1
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v6, v6

    iget-object v9, v4, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v9, v9

    if-ne v6, v9, :cond_0

    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "match":I
    const/4 v5, 0x0

    .line 58
    .local v5, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v6, v6

    if-ge v0, v6, :cond_3

    .line 59
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v9, v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v4, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v10, v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 62
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 58
    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 64
    :cond_3
    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->LINE_SAMPLES:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 65
    .local v3, "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 66
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v9, v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v4, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v10, v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lcom/oneplus/screenshot/longshot/compare/Comparable;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 69
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 65
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_2

    .line 72
    .end local v3    # "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v6, v6

    sget-object v9, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v9}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v9

    sub-int/2addr v6, v9

    if-le v2, v6, :cond_7

    .line 73
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v2, v6

    .line 75
    :cond_7
    mul-int/lit8 v6, v2, 0x64

    div-int/2addr v6, v5

    const/16 v9, 0x64

    if-ne v6, v9, :cond_8

    move v6, v7

    :goto_3
    move v8, v6

    goto/16 :goto_0

    :cond_8
    move v6, v8

    goto :goto_3
.end method

.method public get()[I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    return-object v0
.end method

.method public setComparable(Lcom/oneplus/screenshot/longshot/compare/Comparable;)V
    .locals 0
    .param p1, "comparable"    # Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/Comparable;

    .line 83
    return-void
.end method
