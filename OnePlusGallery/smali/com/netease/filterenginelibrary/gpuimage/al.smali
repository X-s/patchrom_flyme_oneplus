.class public Lcom/netease/filterenginelibrary/gpuimage/al;
.super Ljava/lang/Object;


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static final c:[F

.field public static final d:[F

.field private static synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/al;->a:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/al;->b:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/al;->c:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/al;->d:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(F)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    return v0
.end method

.method public static a(Lcom/netease/filterenginelibrary/gpuimage/aj;Landroid/graphics/RectF;)[F
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/al;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/aj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aput v1, v0, v3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v4

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aput v1, v0, v5

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v6

    const/4 v1, 0x5

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aput v1, v0, v3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v5

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v6

    const/4 v1, 0x5

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v3

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v5

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v6

    const/4 v1, 0x5

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v3

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v4

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aput v1, v0, v5

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v6

    const/4 v1, 0x5

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/netease/filterenginelibrary/gpuimage/aj;ZZ)[F
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/al;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/aj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/al;->a:[F

    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [F

    aget v2, v0, v4

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v2

    aput v2, v1, v4

    aget v2, v0, v5

    aput v2, v1, v5

    aget v2, v0, v6

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v2

    aput v2, v1, v6

    aget v2, v0, v7

    aput v2, v1, v7

    aget v2, v0, v8

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v2

    aput v2, v1, v8

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v0, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v0, v3

    invoke-static {v3}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v0, v0, v3

    aput v0, v1, v2

    :goto_1
    if-eqz p2, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    aget v2, v1, v4

    aput v2, v0, v4

    aget v2, v1, v5

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v2

    aput v2, v0, v5

    aget v2, v1, v6

    aput v2, v0, v6

    aget v2, v1, v7

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v2

    aput v2, v0, v7

    aget v2, v1, v8

    aput v2, v0, v8

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v1, v3

    invoke-static {v3}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v1, v3

    aput v3, v0, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v1, v1, v3

    invoke-static {v1}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v1

    aput v1, v0, v2

    :goto_2
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/al;->b:[F

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/al;->c:[F

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/al;->d:[F

    goto/16 :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/netease/filterenginelibrary/gpuimage/aj;ZZLandroid/graphics/RectF;)[F
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/al;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/aj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    aput v1, v0, v4

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    aput v1, v0, v5

    iget v1, p3, Landroid/graphics/RectF;->right:F

    aput v1, v0, v6

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    aput v1, v0, v7

    iget v1, p3, Landroid/graphics/RectF;->left:F

    aput v1, v0, v8

    const/4 v1, 0x5

    iget v2, p3, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p3, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p3, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    :goto_0
    if-eqz p2, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [F

    aget v2, v0, v4

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v2

    aput v2, v1, v4

    aget v2, v0, v5

    aput v2, v1, v5

    aget v2, v0, v6

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v2

    aput v2, v1, v6

    aget v2, v0, v7

    aput v2, v1, v7

    aget v2, v0, v8

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v2

    aput v2, v1, v8

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v0, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v0, v3

    invoke-static {v3}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v0, v0, v3

    aput v0, v1, v2

    :goto_1
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    aget v2, v1, v4

    aput v2, v0, v4

    aget v2, v1, v5

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v2

    aput v2, v0, v5

    aget v2, v1, v6

    aput v2, v0, v6

    aget v2, v1, v7

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v2

    aput v2, v0, v7

    aget v2, v1, v8

    aput v2, v0, v8

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v1, v3

    invoke-static {v3}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v1, v3

    aput v3, v0, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v1, v1, v3

    invoke-static {v1}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(F)F

    move-result v1

    aput v1, v0, v2

    :goto_2
    return-object v0

    :pswitch_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    aput v1, v0, v4

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    aput v1, v0, v5

    iget v1, p3, Landroid/graphics/RectF;->right:F

    aput v1, v0, v6

    iget v1, p3, Landroid/graphics/RectF;->top:F

    aput v1, v0, v7

    iget v1, p3, Landroid/graphics/RectF;->left:F

    aput v1, v0, v8

    const/4 v1, 0x5

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p3, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p3, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    goto/16 :goto_0

    :pswitch_1
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    aput v1, v0, v4

    iget v1, p3, Landroid/graphics/RectF;->top:F

    aput v1, v0, v5

    iget v1, p3, Landroid/graphics/RectF;->left:F

    aput v1, v0, v6

    iget v1, p3, Landroid/graphics/RectF;->top:F

    aput v1, v0, v7

    iget v1, p3, Landroid/graphics/RectF;->right:F

    aput v1, v0, v8

    const/4 v1, 0x5

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p3, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    aput v1, v0, v4

    iget v1, p3, Landroid/graphics/RectF;->top:F

    aput v1, v0, v5

    iget v1, p3, Landroid/graphics/RectF;->left:F

    aput v1, v0, v6

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    aput v1, v0, v7

    iget v1, p3, Landroid/graphics/RectF;->right:F

    aput v1, v0, v8

    const/4 v1, 0x5

    iget v2, p3, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p3, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    goto/16 :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/al;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/aj;->a()[Lcom/netease/filterenginelibrary/gpuimage/aj;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/aj;->a:Lcom/netease/filterenginelibrary/gpuimage/aj;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/aj;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/aj;->c:Lcom/netease/filterenginelibrary/gpuimage/aj;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/aj;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/aj;->d:Lcom/netease/filterenginelibrary/gpuimage/aj;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/aj;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/aj;->b:Lcom/netease/filterenginelibrary/gpuimage/aj;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/aj;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/al;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method
