.class public abstract Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
.super Ljava/lang/Object;
.source "BitmapDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "Dump"

.field public static DIV_COLOR:I = 0x0

.field public static DIV_HEIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BitmapDumper"

.field public static final TAG_CURR:Ljava/lang/String; = "Curr"

.field public static final TAG_LAST:Ljava/lang/String; = "Last"

.field public static final TAG_NEXT:Ljava/lang/String; = "Next"

.field public static final TAG_PREV:Ljava/lang/String; = "Prev"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndex:I

.field protected mIsNext:Z

.field protected mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    .line 35
    const v0, -0xffff01

    sput v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I
    .param p3, "isNext"    # Z

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    .line 41
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    .line 53
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    .line 55
    iput-boolean p3, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    .line 56
    return-void
.end method

.method private getCombinedTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    if-eqz v0, :cond_0

    const-string v0, "Next"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Prev"

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    invoke-static {}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->values()[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    move-result-object v0

    .local v0, "arr$":[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 64
    .local v3, "opt":Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    const/4 v4, 0x0

    # setter for: Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->mValue:Z
    invoke-static {v3, v4}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->access$002(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;Z)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "arr$":[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "opt":Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    :cond_0
    sget-object v4, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->DIVIDE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    const/4 v4, 0x1

    sput v4, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    .line 70
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Z)V
    .locals 15
    .param p1, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "isCurr"    # Z

    .prologue
    .line 90
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v6, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 93
    .local v14, "top":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 94
    .local v13, "main":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 95
    .local v7, "bottom":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_0

    if-nez p2, :cond_0

    .line 96
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    if-eqz v13, :cond_1

    .line 99
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    if-eqz v7, :cond_2

    .line 102
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2
    invoke-static {v6}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v4

    .line 105
    .local v4, "w":I
    invoke-static {v6}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v8

    .line 106
    .local v8, "h":I
    new-array v12, v8, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 107
    .local v12, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v9, 0x0

    .line 108
    .local v9, "i":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 109
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 110
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    new-instance v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v0, v12, v9

    .line 109
    add-int/lit8 v3, v3, 0x1

    move v9, v10

    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 113
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "y":I
    :cond_4
    const/4 v0, 0x0

    array-length v2, v12

    invoke-virtual {p0, v12, v0, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 115
    .end local v4    # "w":I
    .end local v6    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .end local v7    # "bottom":Landroid/graphics/Bitmap;
    .end local v8    # "h":I
    .end local v9    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .end local v13    # "main":Landroid/graphics/Bitmap;
    .end local v14    # "top":Landroid/graphics/Bitmap;
    :cond_5
    return-void
.end method

.method public dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V
    .locals 10
    .param p1, "lines"    # [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .param p2, "offset"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 73
    sget-object v6, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v6

    if-eqz v6, :cond_1

    if-lez p3, :cond_1

    .line 74
    aget-object v6, p1, v9

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v6

    array-length v5, v6

    .line 75
    .local v5, "w":I
    move v1, p3

    .line 76
    .local v1, "h":I
    mul-int v6, v5, v1

    new-array v4, v6, [I

    .line 77
    .local v4, "pixels":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 78
    add-int v6, v2, p2

    aget-object v3, p1, v6

    .line 79
    .local v3, "line":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v6

    mul-int v7, v5, v2

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v8

    array-length v8, v8

    invoke-static {v6, v9, v4, v7, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "line":Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string v8, "Dump"

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getCombinedTag()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7, v0}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    .line 84
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v4    # "pixels":[I
    .end local v5    # "w":I
    :cond_1
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method protected setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    .line 126
    return-void
.end method
