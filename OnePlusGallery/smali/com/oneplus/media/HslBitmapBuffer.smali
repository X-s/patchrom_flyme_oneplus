.class public Lcom/oneplus/media/HslBitmapBuffer;
.super Lcom/oneplus/media/BitmapBuffer;
.source "HslBitmapBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/media/BitmapBuffer",
        "<[S>;"
    }
.end annotation


# static fields
.field private static final MAX_COMPONENT_VALUE:D = 65535.0


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/oneplus/media/BitmapBuffer;-><init>(II)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapBuffer;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/media/ArgbBitmapBuffer;)V
    .locals 4
    .param p1, "argbBuffer"    # Lcom/oneplus/media/ArgbBitmapBuffer;

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/oneplus/media/ArgbBitmapBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/media/ArgbBitmapBuffer;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/media/BitmapBuffer;-><init>(II)V

    .line 44
    invoke-virtual {p1}, Lcom/oneplus/media/ArgbBitmapBuffer;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/media/ArgbBitmapBuffer;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/oneplus/media/ArgbBitmapBuffer;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {p0}, Lcom/oneplus/media/HslBitmapBuffer;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    invoke-static {v2, v3, v0, v1}, Lcom/oneplus/media/HslBitmapBuffer;->argbToHslNative(II[I[S)V

    .line 45
    return-void
.end method

.method private static final argbToHsl(II[I[S)V
    .locals 36
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "argb"    # [I
    .param p3, "hsl"    # [S

    .prologue
    .line 51
    mul-int/lit8 v21, p0, 0x3

    .line 52
    .local v21, "hslStride":I
    move/from16 v29, p1

    .local v29, "y":I
    add-int/lit8 v30, p1, -0x1

    mul-int v11, p0, v30

    .local v11, "argbRowOffset":I
    add-int/lit8 v30, p1, -0x1

    mul-int v20, v21, v30

    .local v20, "hslRowOffset":I
    :goto_0
    if-gtz v29, :cond_0

    .line 82
    return-void

    .line 54
    :cond_0
    move/from16 v28, p0

    .local v28, "x":I
    add-int/lit8 v30, p0, -0x1

    add-int v10, v11, v30

    .local v10, "argbPixelOffset":I
    add-int/lit8 v30, p0, -0x1

    mul-int/lit8 v30, v30, 0x3

    add-int v17, v20, v30

    .local v17, "hslPixelOffset":I
    :goto_1
    if-gtz v28, :cond_1

    .line 52
    add-int/lit8 v29, v29, -0x1

    sub-int v11, v11, p0

    sub-int v20, v20, v21

    goto :goto_0

    .line 56
    :cond_1
    aget v16, p2, v10

    .line 57
    .local v16, "color":I
    const/high16 v30, 0xff0000

    and-int v30, v30, v16

    shr-int/lit8 v30, v30, 0x10

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x406fe00000000000L    # 255.0

    div-double v12, v30, v32

    .line 58
    .local v12, "b":D
    const v30, 0xff00

    and-int v30, v30, v16

    shr-int/lit8 v30, v30, 0x8

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x406fe00000000000L    # 255.0

    div-double v18, v30, v32

    .line 59
    .local v18, "g":D
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x406fe00000000000L    # 255.0

    div-double v26, v30, v32

    .line 60
    .local v26, "r":D
    move-wide/from16 v0, v26

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    .line 61
    .local v22, "max":D
    move-wide/from16 v0, v26

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v24

    .line 62
    .local v24, "min":D
    sub-double v14, v22, v24

    .line 64
    .local v14, "c":D
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v30

    const-wide v32, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v30, v30, v32

    if-gez v30, :cond_2

    .line 65
    const-wide/16 v4, 0x0

    .line 72
    .local v4, "H":D
    :goto_2
    add-double v30, v22, v24

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v6, v30, v32

    .line 73
    .local v6, "L":D
    const-wide/16 v30, 0x0

    cmpl-double v30, v14, v30

    if-nez v30, :cond_5

    .line 74
    const-wide/16 v8, 0x0

    .line 77
    .local v8, "S":D
    :goto_3
    const-wide v30, 0x40efffe000000000L    # 65535.0

    mul-double v30, v30, v4

    const-wide/high16 v32, 0x4018000000000000L    # 6.0

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v30, v0

    aput-short v30, p3, v17

    .line 78
    add-int/lit8 v30, v17, 0x1

    const-wide v32, 0x40efffe000000000L    # 65535.0

    mul-double v32, v32, v8

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-short v0, v0

    move/from16 v31, v0

    aput-short v31, p3, v30

    .line 79
    add-int/lit8 v30, v17, 0x2

    const-wide v32, 0x40efffe000000000L    # 65535.0

    mul-double v32, v32, v6

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-short v0, v0

    move/from16 v31, v0

    aput-short v31, p3, v30

    .line 54
    add-int/lit8 v28, v28, -0x1

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v17, v17, -0x3

    goto/16 :goto_1

    .line 66
    .end local v4    # "H":D
    .end local v6    # "L":D
    .end local v8    # "S":D
    :cond_2
    sub-double v30, v22, v26

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v30

    const-wide v32, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v30, v30, v32

    if-gez v30, :cond_3

    .line 67
    sub-double v30, v18, v12

    div-double v30, v30, v14

    const-wide/high16 v32, 0x4018000000000000L    # 6.0

    rem-double v4, v30, v32

    .restart local v4    # "H":D
    goto :goto_2

    .line 68
    .end local v4    # "H":D
    :cond_3
    sub-double v30, v22, v18

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v30

    const-wide v32, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v30, v30, v32

    if-gez v30, :cond_4

    .line 69
    sub-double v30, v12, v26

    div-double v30, v30, v14

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    add-double v4, v30, v32

    .restart local v4    # "H":D
    goto/16 :goto_2

    .line 71
    .end local v4    # "H":D
    :cond_4
    sub-double v30, v26, v18

    div-double v30, v30, v14

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    add-double v4, v30, v32

    .restart local v4    # "H":D
    goto/16 :goto_2

    .line 76
    .restart local v6    # "L":D
    :cond_5
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v6

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    sub-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(D)D

    move-result-wide v32

    sub-double v30, v30, v32

    div-double v8, v14, v30

    .restart local v8    # "S":D
    goto/16 :goto_3
.end method

.method private static final native argbToHslNative(II[I[S)V
.end method

.method private static final hslToArgb(II[S[I)V
    .locals 42
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "hsl"    # [S
    .param p3, "argb"    # [I

    .prologue
    .line 124
    mul-int/lit8 v24, p0, 0x3

    .line 125
    .local v24, "hslStride":I
    move/from16 v34, p1

    .local v34, "y":I
    add-int/lit8 v35, p1, -0x1

    mul-int v11, p0, v35

    .local v11, "argbRowOffset":I
    add-int/lit8 v35, p1, -0x1

    mul-int v23, v24, v35

    .local v23, "hslRowOffset":I
    :goto_0
    if-gtz v34, :cond_0

    .line 200
    return-void

    .line 127
    :cond_0
    move/from16 v25, p0

    .local v25, "x":I
    add-int/lit8 v35, p0, -0x1

    add-int v10, v11, v35

    .local v10, "argbPixelOffset":I
    add-int/lit8 v35, p0, -0x1

    mul-int/lit8 v35, v35, 0x3

    add-int v22, v23, v35

    .local v22, "hslPixelOffset":I
    :goto_1
    if-gtz v25, :cond_1

    .line 125
    add-int/lit8 v34, v34, -0x1

    sub-int v11, v11, p0

    sub-int v23, v23, v24

    goto :goto_0

    .line 129
    :cond_1
    aget-short v35, p2, v22

    move/from16 v0, v35

    int-to-double v2, v0

    .line 130
    .local v2, "H":D
    add-int/lit8 v35, v22, 0x1

    aget-short v35, p2, v35

    move/from16 v0, v35

    int-to-double v8, v0

    .line 131
    .local v8, "S":D
    add-int/lit8 v35, v22, 0x2

    aget-short v35, p2, v35

    move/from16 v0, v35

    int-to-double v6, v0

    .line 132
    .local v6, "L":D
    const-wide/16 v36, 0x0

    cmpg-double v35, v2, v36

    if-gez v35, :cond_2

    .line 133
    const-wide/high16 v36, 0x40f0000000000000L    # 65536.0

    add-double v2, v2, v36

    .line 134
    :cond_2
    const-wide/16 v36, 0x0

    cmpg-double v35, v8, v36

    if-gez v35, :cond_3

    .line 135
    const-wide/high16 v36, 0x40f0000000000000L    # 65536.0

    add-double v8, v8, v36

    .line 136
    :cond_3
    const-wide/16 v36, 0x0

    cmpg-double v35, v6, v36

    if-gez v35, :cond_4

    .line 137
    const-wide/high16 v36, 0x40f0000000000000L    # 65536.0

    add-double v6, v6, v36

    .line 138
    :cond_4
    const-wide v36, 0x40efffe000000000L    # 65535.0

    div-double v2, v2, v36

    .line 139
    const-wide v36, 0x40efffe000000000L    # 65535.0

    div-double v8, v8, v36

    .line 140
    const-wide v36, 0x40efffe000000000L    # 65535.0

    div-double v6, v6, v36

    .line 141
    const-wide/high16 v36, 0x4018000000000000L    # 6.0

    mul-double v4, v2, v36

    .line 142
    .local v4, "Hp":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v38, v38, v6

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    sub-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->abs(D)D

    move-result-wide v38

    sub-double v36, v36, v38

    mul-double v16, v36, v8

    .line 143
    .local v16, "c":D
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    div-double v36, v16, v36

    sub-double v26, v6, v36

    .line 144
    .local v26, "m":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    rem-double v38, v4, v38

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    sub-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->abs(D)D

    move-result-wide v38

    sub-double v36, v36, v38

    mul-double v32, v16, v36

    .line 146
    .local v32, "t":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpg-double v35, v4, v36

    if-gez v35, :cond_8

    .line 148
    move-wide/from16 v30, v16

    .line 149
    .local v30, "r1":D
    move-wide/from16 v20, v32

    .line 150
    .local v20, "g1":D
    const-wide/16 v14, 0x0

    .line 182
    .local v14, "b1":D
    :goto_2
    add-double v28, v30, v26

    .line 183
    .local v28, "r":D
    add-double v18, v20, v26

    .line 184
    .local v18, "g":D
    add-double v12, v14, v26

    .line 185
    .local v12, "b":D
    const-wide/16 v36, 0x0

    cmpg-double v35, v28, v36

    if-gez v35, :cond_d

    .line 186
    const-wide/16 v28, 0x0

    .line 189
    :cond_5
    :goto_3
    const-wide/16 v36, 0x0

    cmpg-double v35, v18, v36

    if-gez v35, :cond_e

    .line 190
    const-wide/16 v18, 0x0

    .line 193
    :cond_6
    :goto_4
    const-wide/16 v36, 0x0

    cmpg-double v35, v12, v36

    if-gez v35, :cond_f

    .line 194
    const-wide/16 v12, 0x0

    .line 197
    :cond_7
    :goto_5
    aget v35, p3, v10

    const/high16 v36, -0x1000000

    and-int v35, v35, v36

    const-wide v36, 0x406fe00000000000L    # 255.0

    mul-double v36, v36, v12

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v36, v0

    shl-int/lit8 v36, v36, 0x10

    or-int v35, v35, v36

    const-wide v36, 0x406fe00000000000L    # 255.0

    mul-double v36, v36, v18

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v36, v0

    shl-int/lit8 v36, v36, 0x8

    or-int v35, v35, v36

    const-wide v36, 0x406fe00000000000L    # 255.0

    mul-double v36, v36, v28

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v36, v0

    or-int v35, v35, v36

    aput v35, p3, v10

    .line 127
    add-int/lit8 v25, v25, -0x1

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v22, v22, -0x3

    goto/16 :goto_1

    .line 152
    .end local v12    # "b":D
    .end local v14    # "b1":D
    .end local v18    # "g":D
    .end local v20    # "g1":D
    .end local v28    # "r":D
    .end local v30    # "r1":D
    :cond_8
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    cmpg-double v35, v4, v36

    if-gez v35, :cond_9

    .line 154
    move-wide/from16 v30, v32

    .line 155
    .restart local v30    # "r1":D
    move-wide/from16 v20, v16

    .line 156
    .restart local v20    # "g1":D
    const-wide/16 v14, 0x0

    .line 157
    .restart local v14    # "b1":D
    goto :goto_2

    .line 158
    .end local v14    # "b1":D
    .end local v20    # "g1":D
    .end local v30    # "r1":D
    :cond_9
    const-wide/high16 v36, 0x4008000000000000L    # 3.0

    cmpg-double v35, v4, v36

    if-gez v35, :cond_a

    .line 160
    const-wide/16 v30, 0x0

    .line 161
    .restart local v30    # "r1":D
    move-wide/from16 v20, v16

    .line 162
    .restart local v20    # "g1":D
    move-wide/from16 v14, v32

    .line 163
    .restart local v14    # "b1":D
    goto :goto_2

    .line 164
    .end local v14    # "b1":D
    .end local v20    # "g1":D
    .end local v30    # "r1":D
    :cond_a
    const-wide/high16 v36, 0x4010000000000000L    # 4.0

    cmpg-double v35, v4, v36

    if-gez v35, :cond_b

    .line 166
    const-wide/16 v30, 0x0

    .line 167
    .restart local v30    # "r1":D
    move-wide/from16 v20, v32

    .line 168
    .restart local v20    # "g1":D
    move-wide/from16 v14, v16

    .line 169
    .restart local v14    # "b1":D
    goto/16 :goto_2

    .line 170
    .end local v14    # "b1":D
    .end local v20    # "g1":D
    .end local v30    # "r1":D
    :cond_b
    const-wide/high16 v36, 0x4014000000000000L    # 5.0

    cmpg-double v35, v4, v36

    if-gez v35, :cond_c

    .line 172
    move-wide/from16 v30, v32

    .line 173
    .restart local v30    # "r1":D
    const-wide/16 v20, 0x0

    .line 174
    .restart local v20    # "g1":D
    move-wide/from16 v14, v16

    .line 175
    .restart local v14    # "b1":D
    goto/16 :goto_2

    .line 178
    .end local v14    # "b1":D
    .end local v20    # "g1":D
    .end local v30    # "r1":D
    :cond_c
    move-wide/from16 v30, v16

    .line 179
    .restart local v30    # "r1":D
    const-wide/16 v20, 0x0

    .line 180
    .restart local v20    # "g1":D
    move-wide/from16 v14, v32

    .restart local v14    # "b1":D
    goto/16 :goto_2

    .line 187
    .restart local v12    # "b":D
    .restart local v18    # "g":D
    .restart local v28    # "r":D
    :cond_d
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpl-double v35, v28, v36

    if-lez v35, :cond_5

    .line 188
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_3

    .line 191
    :cond_e
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpl-double v35, v18, v36

    if-lez v35, :cond_6

    .line 192
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_4

    .line 195
    :cond_f
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpl-double v35, v12, v36

    if-lez v35, :cond_7

    .line 196
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_5
.end method

.method private static final native hslToArgbNative(II[S[I)V
.end method


# virtual methods
.method public copyFromBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 91
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 92
    .local v1, "height":I
    mul-int v3, v2, v1

    new-array v0, v3, [I

    .line 93
    .local v0, "argb":[I
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/media/HslBitmapBuffer;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    invoke-static {v2, v1, v0, v3}, Lcom/oneplus/media/HslBitmapBuffer;->argbToHslNative(II[I[S)V

    .line 95
    return-void
.end method

.method public copyToBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 103
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 104
    .local v2, "height":I
    mul-int v4, v3, v2

    new-array v0, v4, [I

    .line 105
    .local v0, "argb":[I
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 106
    .local v1, "argbBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/oneplus/media/HslBitmapBuffer;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [S

    invoke-static {v5, v6, v4, v0}, Lcom/oneplus/media/HslBitmapBuffer;->hslToArgbNative(II[S[I)V

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 110
    return-void
.end method

.method protected bridge synthetic createBuffer(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/media/HslBitmapBuffer;->createBuffer(II)[S

    move-result-object v0

    return-object v0
.end method

.method protected createBuffer(II)[S
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 117
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [S

    return-object v0
.end method
