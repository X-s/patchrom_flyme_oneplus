.class public Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "StitchLastMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchLastMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 27
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH:I

    packed-switch v0, :pswitch_data_0

    .line 41
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 42
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    .line 45
    :goto_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    .line 46
    return-void

    .line 29
    :pswitch_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 30
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    goto :goto_0

    .line 33
    :pswitch_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 34
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 38
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->LAST:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 58
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 59
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 60
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 61
    return-void
.end method

.method protected varargs getCurr(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;II[Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 14
    .param p1, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p2, "offset"    # I
    .param p3, "cut"    # I
    .param p4, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 133
    invoke-static/range {p4 .. p4}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth([Landroid/graphics/Bitmap;)I

    move-result v4

    .line 134
    .local v4, "w":I
    invoke-static/range {p4 .. p4}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight([Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int v7, v0, p3

    .line 135
    .local v7, "h":I
    const/4 v8, 0x0

    .line 136
    .local v8, "i":I
    sub-int v13, v7, p2

    .line 137
    .local v13, "size":I
    new-array v12, v13, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 138
    .local v12, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move-object/from16 v6, p4

    .local v6, "arr$":[Landroid/graphics/Bitmap;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v1, v6, v10

    .line 139
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v3, v0, :cond_0

    if-ge v8, v13, :cond_0

    .line 140
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    new-instance v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v0, v12, v8

    .line 139
    add-int/lit8 v3, v3, 0x1

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_1

    .line 138
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "y":I
    :cond_1
    if-eqz p1, :cond_2

    .line 144
    const/4 v0, 0x0

    array-length v2, v12

    invoke-virtual {p1, v12, v0, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 146
    :cond_2
    return-object v12
.end method

.method protected getCurrOffset(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)I
    .locals 1
    .param p1, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCurrPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getCurr(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;II[Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    return-object v0
.end method

.method protected getLast(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;IILandroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 10
    .param p1, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p2, "offset"    # I
    .param p3, "max"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 119
    .local v4, "w":I
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 120
    .local v6, "h":I
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 121
    .local v9, "size":I
    sub-int v0, v6, v9

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 122
    new-array v8, v9, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 123
    .local v8, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 124
    new-instance v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    add-int v1, v7, v6

    sub-int/2addr v1, v9

    sub-int v3, v1, p2

    const/4 v5, 0x1

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v0, v8, v7

    .line 123
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 126
    :cond_0
    if-eqz p1, :cond_1

    .line 127
    array-length v0, v8

    invoke-virtual {p1, v8, v2, v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 129
    :cond_1
    return-object v8
.end method

.method protected getLastPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getLast(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;IILandroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    return-object v0
.end method

.method protected getStep()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH:I

    packed-switch v0, :pswitch_data_0

    .line 78
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    :goto_0
    return v0

    .line 72
    :pswitch_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    goto :goto_0

    .line 74
    :pswitch_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    goto :goto_0

    .line 76
    :pswitch_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "StitchLast"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 13
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 84
    iget v11, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    .line 85
    .local v11, "offsetLast":I
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getCurrOffset(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)I

    move-result v10

    .line 86
    .local v10, "offsetCurr":I
    invoke-virtual {p0, v11, p1}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getLastPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v4

    .line 87
    .local v4, "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    invoke-virtual {p0, v10, p2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getCurrPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v5

    .line 88
    .local v5, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v3, 0x0

    .line 89
    .local v3, "pos":I
    const/4 v1, 0x0

    .line 90
    .local v1, "matched":I
    const/4 v12, 0x0

    .line 91
    .local v12, "same":Z
    array-length v2, v5

    array-length v6, v4

    sub-int v8, v2, v6

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_0

    .line 92
    if-eqz v12, :cond_1

    .line 93
    array-length v1, v4

    .line 94
    add-int v2, v8, v1

    add-int/lit8 v3, v2, -0x1

    .line 109
    :cond_0
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-direct {v0, v2, v6}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    .line 110
    .local v0, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    add-int/lit8 v2, v1, -0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZLcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    .line 111
    return-object v0

    .line 97
    .end local v0    # "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    :cond_1
    const/4 v12, 0x1

    .line 98
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    array-length v2, v4

    if-ge v9, v2, :cond_2

    .line 99
    aget-object v2, v4, v9

    add-int v6, v9, v8

    aget-object v6, v5, v6

    invoke-virtual {v2, v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 100
    const/4 v12, 0x0

    .line 104
    :cond_2
    array-length v9, v4

    .line 105
    add-int/lit8 v2, v9, -0x1

    aget-object v2, v4, v2

    add-int/lit8 v6, v9, -0x1

    add-int/2addr v6, v8

    aget-object v6, v5, v6

    invoke-virtual {v2, v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    const/4 v12, 0x0

    .line 91
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 98
    :cond_4
    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mStep:I

    add-int/2addr v9, v2

    goto :goto_1
.end method
