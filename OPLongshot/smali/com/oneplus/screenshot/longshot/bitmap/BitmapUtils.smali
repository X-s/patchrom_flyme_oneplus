.class public Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBitmaps(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local p1, "sources":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    return-void
.end method

.method public static createPreview(Ljava/util/List;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "previewSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v8, 0x0

    .line 133
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v4

    .line 134
    .local v4, "imageHeight":I
    if-gtz v4, :cond_0

    .line 148
    :goto_0
    return-object v8

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v5

    .line 138
    .local v5, "imageWidth":I
    if-ge v5, v4, :cond_1

    move v2, v5

    .line 139
    .local v2, "cutSize":I
    :goto_1
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v2, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 140
    .local v7, "preview":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 141
    .local v1, "canvas":Landroid/graphics/Canvas;
    move v6, v2

    .line 142
    .local v6, "pos":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_2

    if-lez v6, :cond_2

    .line 143
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 144
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v6, v9

    .line 145
    const/4 v9, 0x0

    int-to-float v10, v6

    invoke-virtual {v1, v0, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "cutSize":I
    .end local v3    # "i":I
    .end local v6    # "pos":I
    .end local v7    # "preview":Landroid/graphics/Bitmap;
    :cond_1
    move v2, v4

    .line 138
    goto :goto_1

    .line 147
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "cutSize":I
    .restart local v3    # "i":I
    .restart local v6    # "pos":I
    .restart local v7    # "preview":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    const/4 v8, 0x1

    invoke-static {v7, p1, p1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0
.end method

.method public static drawBitmaps(Ljava/util/List;IIIILandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "hdiv"    # I
    .param p5, "canvas"    # Landroid/graphics/Canvas;
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;IIII",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap$Config;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    .line 105
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 106
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 107
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    int-to-float v0, p1

    int-to-float v1, p2

    const/4 v2, 0x0

    invoke-virtual {p5, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 112
    add-int/lit8 v0, v8, -0x1

    invoke-static {p4, v7, v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->hasDivider(III)Z

    move-result v3

    move v0, p3

    move v1, p4

    move v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->drawDivider(IIIZLandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)I

    move-result p2

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 114
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private static drawDivider(IIIZLandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)I
    .locals 6
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "pos"    # I
    .param p3, "draw"    # Z
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 165
    if-eqz p3, :cond_1

    .line 166
    mul-int v3, p0, p1

    new-array v2, v3, [I

    .line 167
    .local v2, "pixels":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    mul-int v3, p0, p1

    if-ge v1, v3, :cond_0

    .line 168
    sget v3, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_COLOR:I

    aput v3, v2, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {v2, p0, p1, p5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    int-to-float v4, p2

    const/4 v5, 0x0

    invoke-virtual {p4, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 172
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr p2, v3

    .line 174
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "i":I
    .end local v2    # "pixels":[I
    :cond_1
    return p2
.end method

.method public static getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap$Config;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImageHeight(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .line 28
    .local v1, "height":I
    if-eqz p0, :cond_0

    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 30
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 31
    goto :goto_0

    .line 33
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return v1
.end method

.method public static getImageHeight([Landroid/graphics/Bitmap;)I
    .locals 6
    .param p0, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "height":I
    if-eqz p0, :cond_0

    .line 46
    move-object v0, p0

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 47
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "arr$":[Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return v2
.end method

.method public static getImageWidth(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 20
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 21
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 23
    :cond_0
    return v0
.end method

.method public static getImageWidth([Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 37
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 38
    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 40
    :cond_0
    return v0
.end method

.method private static hasDivider(III)Z
    .locals 2
    .param p0, "hdiv"    # I
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 155
    if-gtz p0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    add-int/lit8 v1, p2, -0x2

    if-gt p1, v1, :cond_0

    .line 161
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static joinBitmaps(ILjava/util/List;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "hdiv"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 77
    .local v9, "size":I
    if-eqz v9, :cond_0

    .line 80
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2

    .line 81
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 83
    :cond_2
    const/4 v8, 0x0

    .line 84
    .local v8, "image":Landroid/graphics/Bitmap;
    monitor-enter p1

    .line 85
    :try_start_0
    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v3

    .line 86
    .local v3, "width":I
    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v7

    .line 87
    .local v7, "height":I
    add-int/lit8 v0, v9, -0x1

    mul-int/2addr v0, p0

    add-int/2addr v7, v0

    .line 88
    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 89
    .local v6, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 90
    invoke-static {}, Ljava/lang/System;->runFinalization()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_1
    :try_start_2
    invoke-static {v3, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 96
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    .local v5, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v4, p0

    invoke-static/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->drawBitmaps(Ljava/util/List;IIIILandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    monitor-exit p1

    move-object v0, v8

    .line 100
    goto :goto_0

    .line 99
    .end local v3    # "width":I
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "config":Landroid/graphics/Bitmap$Config;
    .end local v7    # "height":I
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 93
    .restart local v3    # "width":I
    .restart local v6    # "config":Landroid/graphics/Bitmap$Config;
    .restart local v7    # "height":I
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static varargs joinBitmaps(I[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "hdiv"    # I
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 69
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->joinBitmaps(ILjava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static joinBitmaps(Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->joinBitmaps(ILjava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static varargs joinBitmaps([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->joinBitmaps(I[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static pickBitmaps(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/screenshot/longshot/cache/BitmapCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local p1, "caches":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/screenshot/longshot/cache/BitmapCache;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 118
    .local v0, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_2
    return-void
.end method
