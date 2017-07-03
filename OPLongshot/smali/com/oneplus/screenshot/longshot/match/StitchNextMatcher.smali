.class public Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "StitchNextMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchNextMatcher"


# instance fields
.field protected mExtendCurr:I

.field protected mExtendLast:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 22
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    .line 23
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    .line 30
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH:I

    packed-switch v0, :pswitch_data_0

    .line 35
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    .line 38
    :goto_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_NEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    .line 39
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_NEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    .line 40
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_NEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetLast:I

    .line 41
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_NEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetCurr:I

    .line 42
    return-void

    .line 32
    :pswitch_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 9
    .param p1, "step"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p6, "isCurr"    # Z

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 121
    .local v4, "w":I
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 122
    .local v6, "h":I
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 123
    new-array v8, p3, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 124
    .local v8, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p3, :cond_1

    .line 125
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    mul-int/2addr v0, v7

    add-int v3, v0, p1

    .line 126
    .local v3, "y":I
    if-eqz p6, :cond_0

    .line 127
    add-int/2addr v3, p2

    .line 131
    :goto_1
    new-instance v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v5, 0x1

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v0, v8, v7

    .line 124
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    mul-int/2addr v0, p3

    sub-int v0, v6, v0

    sub-int/2addr v0, p2

    add-int/2addr v3, v0

    goto :goto_1

    .line 133
    .end local v3    # "y":I
    :cond_1
    if-eqz p5, :cond_2

    .line 134
    array-length v0, v8

    invoke-virtual {p5, v8, v2, v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 136
    :cond_2
    return-object v8
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->NEXT:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 54
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 55
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 56
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 57
    return-void
.end method

.method protected getStep()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH:I

    packed-switch v0, :pswitch_data_0

    .line 70
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    :goto_0
    return v0

    .line 68
    :pswitch_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "StitchNext"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 27
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    div-int v9, v2, v3

    .line 78
    .local v9, "sizeLast":I
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    div-int v5, v2, v3

    .line 79
    .local v5, "sizeCurr":I
    const/16 v18, 0x0

    .line 80
    .local v18, "offset":I
    const/16 v23, 0x0

    .line 81
    .local v23, "matched":I
    const/16 v25, 0x0

    .line 82
    .local v25, "posLast":I
    const/4 v13, 0x0

    .line 83
    .local v13, "posCurr":I
    const/4 v14, 0x0

    .line 84
    .local v14, "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetCurr:I

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v15

    .line 85
    .local v15, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    if-ge v7, v2, :cond_4

    .line 86
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetLast:I

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v12, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v24

    .line 87
    .local v24, "pLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move-object/from16 v0, v24

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v26, v0

    .line 88
    .local v26, "prevLine":[I
    move-object/from16 v0, v24

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 89
    .local v20, "currLine":[I
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 90
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    array-length v2, v15

    move/from16 v0, v21

    if-ge v0, v2, :cond_3

    .line 91
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 92
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_2
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 93
    aget-object v2, v24, v22

    aget-object v3, v15, v21

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    if-nez v22, :cond_1

    .line 95
    const/4 v2, 0x1

    aput v2, v20, v22

    .line 99
    :goto_3
    aget v2, v20, v22

    move/from16 v0, v23

    if-ge v0, v2, :cond_0

    .line 100
    aget v23, v20, v22

    .line 101
    move/from16 v25, v22

    .line 102
    move/from16 v13, v21

    .line 103
    move-object/from16 v14, v24

    .line 104
    move/from16 v18, v7

    .line 92
    :cond_0
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 97
    :cond_1
    add-int/lit8 v2, v22, -0x1

    aget v2, v26, v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v20, v22

    goto :goto_3

    .line 108
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v26

    array-length v4, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 90
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 85
    .end local v22    # "j":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 111
    .end local v20    # "currLine":[I
    .end local v21    # "i":I
    .end local v24    # "pLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .end local v26    # "prevLine":[I
    :cond_4
    new-instance v10, Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-direct {v10, v2, v3}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    .line 112
    .local v10, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move-object/from16 v19, v0

    move/from16 v11, v23

    move/from16 v12, v25

    invoke-virtual/range {v10 .. v19}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    .line 113
    return-object v10
.end method
