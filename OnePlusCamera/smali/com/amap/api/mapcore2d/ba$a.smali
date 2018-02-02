.class public Lcom/amap/api/mapcore2d/ba$a;
.super Lcom/amap/api/mapcore2d/ba;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field p:F

.field q:F

.field r:F

.field s:F

.field t:J

.field u:I

.field v:I

.field private w:J


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ba;-><init>()V

    .line 111
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/ba$a;->t:J

    .line 112
    iput v0, p0, Lcom/amap/api/mapcore2d/ba$a;->u:I

    .line 113
    iput v0, p0, Lcom/amap/api/mapcore2d/ba$a;->v:I

    .line 115
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/ba$a;->w:J

    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const-string/jumbo v3, "midPoint"

    .line 276
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/ba;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 277
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 276
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 277
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 278
    invoke-static {}, Lcom/amap/api/mapcore2d/ba;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 279
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 278
    invoke-virtual {v0, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 280
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    .line 294
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore2d/ba;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 295
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 294
    invoke-virtual {v0, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 295
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 296
    invoke-static {}, Lcom/amap/api/mapcore2d/ba;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 297
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 296
    invoke-virtual {v0, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 298
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v0

    add-float v2, v4, v0

    .line 309
    :goto_1
    iget v0, p0, Lcom/amap/api/mapcore2d/ba$a;->u:I

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_2
    div-float v0, v1, v8

    div-float v1, v2, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 316
    return-void

    .line 290
    :catch_0
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    .line 283
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v1, v2

    .line 290
    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    .line 286
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 290
    :catch_2
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    .line 289
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    .line 308
    :catch_3
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    .line 301
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :catch_4
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    .line 304
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :catch_5
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    .line 307
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 309
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore2d/ba$a;->v:I

    if-eqz v0, :cond_0

    .line 310
    iget v0, p0, Lcom/amap/api/mapcore2d/ba$a;->u:I

    int-to-float v1, v0

    .line 311
    iget v0, p0, Lcom/amap/api/mapcore2d/ba$a;->v:I

    int-to-float v2, v0

    goto :goto_2
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 8

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v3, "distance"

    .line 233
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/ba;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 234
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 233
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 234
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 235
    invoke-static {}, Lcom/amap/api/mapcore2d/ba;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 235
    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    sub-float v0, v1, v0

    move v1, v0

    .line 251
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore2d/ba;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 252
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 251
    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 252
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 253
    invoke-static {}, Lcom/amap/api/mapcore2d/ba;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 254
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 253
    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 255
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v0

    sub-float v2, v4, v0

    .line 268
    :goto_1
    mul-float v0, v1, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 247
    :catch_0
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    .line 240
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v1, v2

    .line 247
    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    .line 243
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 247
    :catch_2
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    .line 246
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    .line 265
    :catch_3
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    .line 258
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :catch_4
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    .line 261
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :catch_5
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    .line 264
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;II)Z
    .locals 11

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/4 v3, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 119
    iput p2, p0, Lcom/amap/api/mapcore2d/ba$a;->u:I

    .line 120
    iput p3, p0, Lcom/amap/api/mapcore2d/ba$a;->v:I

    .line 121
    invoke-static {p1}, Lcom/amap/api/mapcore2d/ba;->a(Landroid/view/MotionEvent;)V

    .line 123
    invoke-static {}, Lcom/amap/api/mapcore2d/ba;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    return v2

    .line 128
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amap/api/mapcore2d/ba$a;->t:J

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore2d/ba$a;->p:F

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore2d/ba$a;->q:F

    .line 131
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ba$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 132
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->e:Landroid/graphics/PointF;

    iget v3, p0, Lcom/amap/api/mapcore2d/ba$a;->p:F

    iget v4, p0, Lcom/amap/api/mapcore2d/ba$a;->q:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 133
    iput v0, p0, Lcom/amap/api/mapcore2d/ba$a;->b:I

    move v0, v2

    .line 134
    goto :goto_0

    .line 137
    :pswitch_2
    iget v1, p0, Lcom/amap/api/mapcore2d/ba$a;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/ba$a;->n:I

    .line 138
    iget v1, p0, Lcom/amap/api/mapcore2d/ba$a;->n:I

    if-eq v1, v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 139
    :cond_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ba$a;->m:Z

    .line 140
    sput v10, Lcom/amap/api/mapcore2d/ba$a;->j:F

    .line 141
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ba$a;->b(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore2d/ba$a;->h:F

    .line 142
    iget v1, p0, Lcom/amap/api/mapcore2d/ba$a;->h:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 144
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 145
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->d:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 146
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->f:Landroid/graphics/PointF;

    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore2d/ba$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 147
    iput v3, p0, Lcom/amap/api/mapcore2d/ba$a;->b:I

    .line 148
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ba$a;->k:Z

    .line 149
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$a;->a:Lcom/amap/api/mapcore2d/ba$b;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->e:Landroid/graphics/PointF;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ba$b;->a(Landroid/graphics/PointF;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, p0, Lcom/amap/api/mapcore2d/ba$a;->r:F

    .line 151
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p0, Lcom/amap/api/mapcore2d/ba$a;->s:F

    goto :goto_0

    :cond_3
    move v0, v2

    .line 142
    goto :goto_0

    .line 156
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ba$a;->o:J

    .line 157
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/ba$a;->k:Z

    .line 158
    iput v2, p0, Lcom/amap/api/mapcore2d/ba$a;->b:I

    move v0, v2

    .line 159
    goto/16 :goto_0

    .line 162
    :pswitch_4
    iget v1, p0, Lcom/amap/api/mapcore2d/ba$a;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/ba$a;->n:I

    .line 163
    iget v1, p0, Lcom/amap/api/mapcore2d/ba$a;->n:I

    if-eq v1, v0, :cond_4

    .line 170
    :goto_1
    iget v0, p0, Lcom/amap/api/mapcore2d/ba$a;->n:I

    if-eqz v0, :cond_5

    move v0, v2

    goto/16 :goto_0

    .line 164
    :cond_4
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ba$a;->m:Z

    .line 165
    iput v3, p0, Lcom/amap/api/mapcore2d/ba$a;->b:I

    goto :goto_1

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$a;->f:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore2d/ba$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 172
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/ba$a;->l:Z

    .line 173
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/ba$a;->m:Z

    .line 174
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ba$a;->k:Z

    if-nez v0, :cond_6

    move v0, v2

    goto/16 :goto_0

    .line 176
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$a;->a:Lcom/amap/api/mapcore2d/ba$b;

    iget v1, p0, Lcom/amap/api/mapcore2d/ba$a;->i:F

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ba$a;->f:Landroid/graphics/PointF;

    invoke-interface {v0, v1, v3}, Lcom/amap/api/mapcore2d/ba$b;->b(FLandroid/graphics/PointF;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 181
    iput v2, p0, Lcom/amap/api/mapcore2d/ba$a;->b:I

    goto/16 :goto_0

    .line 186
    :pswitch_5
    iget v1, p0, Lcom/amap/api/mapcore2d/ba$a;->b:I

    if-eq v1, v0, :cond_7

    .line 204
    iget v1, p0, Lcom/amap/api/mapcore2d/ba$a;->b:I

    if-eq v1, v3, :cond_9

    move v0, v2

    goto/16 :goto_0

    .line 188
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 191
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba$a;->c:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/ba$a;->d:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 192
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore2d/ba$a;->e:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/amap/api/mapcore2d/ba$a;->e:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 194
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba$a;->a:Lcom/amap/api/mapcore2d/ba$b;

    iget v5, p0, Lcom/amap/api/mapcore2d/ba$a;->p:F

    sub-float v5, v1, v5

    iget v6, p0, Lcom/amap/api/mapcore2d/ba$a;->q:F

    sub-float v6, v3, v6

    invoke-interface {v4, v5, v6}, Lcom/amap/api/mapcore2d/ba$b;->a(FF)Z

    move-result v4

    or-int/lit8 v4, v4, 0x0

    .line 196
    iput v1, p0, Lcom/amap/api/mapcore2d/ba$a;->p:F

    .line 197
    iput v3, p0, Lcom/amap/api/mapcore2d/ba$a;->q:F

    .line 198
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->a:Lcom/amap/api/mapcore2d/ba$b;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ba$a;->c:Landroid/graphics/Matrix;

    invoke-interface {v1, v3}, Lcom/amap/api/mapcore2d/ba$b;->a(Landroid/graphics/Matrix;)Z

    move-result v1

    or-int/2addr v1, v4

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/ba$a;->t:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1e

    cmp-long v3, v4, v6

    if-ltz v3, :cond_8

    move v2, v0

    :cond_8
    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 205
    :cond_9
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ba$a;->b(Landroid/view/MotionEvent;)F

    move-result v3

    .line 206
    iput v10, p0, Lcom/amap/api/mapcore2d/ba$a;->i:F

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 208
    cmpl-float v1, v3, v6

    if-lez v1, :cond_a

    iget v1, p0, Lcom/amap/api/mapcore2d/ba$a;->h:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_a

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/ba$a;->w:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-gtz v1, :cond_b

    move v1, v0

    :goto_2
    if-nez v1, :cond_a

    .line 210
    iput-wide v4, p0, Lcom/amap/api/mapcore2d/ba$a;->w:J

    .line 211
    iget v1, p0, Lcom/amap/api/mapcore2d/ba$a;->h:F

    div-float v1, v3, v1

    iput v1, p0, Lcom/amap/api/mapcore2d/ba$a;->i:F

    .line 212
    sput v10, Lcom/amap/api/mapcore2d/ba$a;->j:F

    .line 213
    iput v3, p0, Lcom/amap/api/mapcore2d/ba$a;->h:F

    .line 214
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->g:Landroid/graphics/PointF;

    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore2d/ba$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 215
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba$a;->a:Lcom/amap/api/mapcore2d/ba$b;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba$a;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/amap/api/mapcore2d/ba$a;->r:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ba$a;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/amap/api/mapcore2d/ba$a;->s:F

    sub-float/2addr v3, v4

    invoke-interface {v1, v2, v3}, Lcom/amap/api/mapcore2d/ba$b;->a(FF)Z

    move-result v1

    or-int/lit8 v1, v1, 0x0

    .line 218
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba$a;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, p0, Lcom/amap/api/mapcore2d/ba$a;->r:F

    .line 219
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba$a;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, p0, Lcom/amap/api/mapcore2d/ba$a;->s:F

    .line 220
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba$a;->a:Lcom/amap/api/mapcore2d/ba$b;

    iget v3, p0, Lcom/amap/api/mapcore2d/ba$a;->i:F

    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba$a;->f:Landroid/graphics/PointF;

    invoke-interface {v2, v3, v4}, Lcom/amap/api/mapcore2d/ba$b;->a(FLandroid/graphics/PointF;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 221
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ba$a;->l:Z

    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 208
    goto/16 :goto_0

    :cond_b
    move v1, v2

    goto :goto_2

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
