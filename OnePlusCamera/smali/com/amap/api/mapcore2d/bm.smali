.class public Lcom/amap/api/mapcore2d/bm;
.super Ljava/lang/Object;
.source "TextDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ai;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/b;

.field private b:Lcom/amap/api/mapcore2d/as;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lcom/amap/api/maps2d/model/LatLng;

.field private g:F

.field private h:I

.field private i:Landroid/graphics/Typeface;

.field private j:Z

.field private k:F

.field private l:I

.field private m:I

.field private n:Ljava/lang/Object;

.field private o:I


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/maps2d/model/TextOptions;Lcom/amap/api/mapcore2d/as;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p3, p0, Lcom/amap/api/mapcore2d/bm;->b:Lcom/amap/api/mapcore2d/as;

    .line 56
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bm;->c:Ljava/lang/String;

    .line 57
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getFontSize()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bm;->d:I

    .line 58
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getFontColor()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bm;->e:I

    .line 59
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bm;->f:Lcom/amap/api/maps2d/model/LatLng;

    .line 60
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getRotate()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bm;->g:F

    .line 61
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bm;->h:I

    .line 62
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bm;->i:Landroid/graphics/Typeface;

    .line 63
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bm;->j:Z

    .line 64
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bm;->k:F

    .line 65
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getAlignX()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bm;->l:I

    .line 66
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getAlignY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bm;->m:I

    .line 67
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bm;->n:Ljava/lang/Object;

    .line 68
    check-cast p1, Lcom/amap/api/mapcore2d/b;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bm;->a:Lcom/amap/api/mapcore2d/b;

    .line 69
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 229
    iput p1, p0, Lcom/amap/api/mapcore2d/bm;->g:F

    .line 230
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 231
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 194
    iput p1, p0, Lcom/amap/api/mapcore2d/bm;->d:I

    .line 195
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 196
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 274
    iput p1, p0, Lcom/amap/api/mapcore2d/bm;->l:I

    .line 275
    iput p2, p0, Lcom/amap/api/mapcore2d/bm;->m:I

    .line 276
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 277
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const-wide v10, 0x412e848000000000L    # 1000000.0

    const/4 v0, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 106
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm;->f:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_0

    .line 109
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm;->i:Landroid/graphics/Typeface;

    if-eqz v1, :cond_4

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm;->i:Landroid/graphics/Typeface;

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 114
    invoke-virtual {v5, v12}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 115
    iget v1, p0, Lcom/amap/api/mapcore2d/bm;->d:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 117
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm;->c:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 118
    iget v1, p0, Lcom/amap/api/mapcore2d/bm;->d:I

    int-to-float v3, v1

    .line 120
    iget v1, p0, Lcom/amap/api/mapcore2d/bm;->h:I

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 122
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bm;->f:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v6, v10

    double-to-int v4, v6

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bm;->f:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v6, v10

    double-to-int v6, v6

    invoke-direct {v1, v4, v6}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 124
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 125
    iget-object v6, p0, Lcom/amap/api/mapcore2d/bm;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v6

    invoke-interface {v6, v1, v4}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 127
    iget v1, p0, Lcom/amap/api/mapcore2d/bm;->g:F

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v1, v6

    neg-float v1, v1

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {p1, v1, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 128
    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 129
    iget v1, p0, Lcom/amap/api/mapcore2d/bm;->l:I

    if-ge v1, v12, :cond_5

    .line 130
    :cond_2
    iput v13, p0, Lcom/amap/api/mapcore2d/bm;->l:I

    .line 132
    :goto_1
    iget v1, p0, Lcom/amap/api/mapcore2d/bm;->m:I

    const/4 v6, 0x4

    if-ge v1, v6, :cond_6

    :cond_3
    const/4 v1, 0x6

    .line 133
    iput v1, p0, Lcom/amap/api/mapcore2d/bm;->m:I

    .line 137
    :goto_2
    iget v1, p0, Lcom/amap/api/mapcore2d/bm;->l:I

    packed-switch v1, :pswitch_data_0

    move v6, v0

    .line 148
    :goto_3
    iget v1, p0, Lcom/amap/api/mapcore2d/bm;->m:I

    packed-switch v1, :pswitch_data_1

    move v7, v0

    .line 160
    :goto_4
    add-float v0, v2, v9

    .line 161
    add-float/2addr v9, v3

    .line 162
    add-int/lit8 v1, v6, -0x1

    int-to-float v1, v1

    add-int/lit8 v2, v7, -0x1

    int-to-float v2, v2

    int-to-float v3, v6

    add-float/2addr v3, v0

    int-to-float v0, v7

    add-float v4, v0, v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 164
    iget v0, p0, Lcom/amap/api/mapcore2d/bm;->e:I

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->c:Ljava/lang/String;

    int-to-float v1, v6

    int-to-float v2, v7

    add-float/2addr v2, v9

    iget v3, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 177
    return-void

    .line 111
    :cond_4
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bm;->i:Landroid/graphics/Typeface;

    goto/16 :goto_0

    .line 129
    :cond_5
    iget v1, p0, Lcom/amap/api/mapcore2d/bm;->l:I

    if-gt v1, v13, :cond_2

    goto :goto_1

    .line 132
    :cond_6
    iget v1, p0, Lcom/amap/api/mapcore2d/bm;->m:I

    const/4 v6, 0x6

    if-gt v1, v6, :cond_3

    goto :goto_2

    .line 139
    :pswitch_0
    iget v1, v4, Landroid/graphics/Point;->x:I

    move v6, v1

    .line 140
    goto :goto_3

    .line 142
    :pswitch_1
    iget v1, v4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    move v6, v1

    .line 143
    goto :goto_3

    .line 145
    :pswitch_2
    iget v1, v4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float v6, v2, v9

    sub-float/2addr v1, v6

    float-to-int v1, v1

    move v6, v1

    goto :goto_3

    .line 150
    :pswitch_3
    iget v0, v4, Landroid/graphics/Point;->y:I

    move v7, v0

    .line 151
    goto :goto_4

    .line 153
    :pswitch_4
    iget v0, v4, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    float-to-int v0, v0

    move v7, v0

    .line 154
    goto :goto_4

    .line 156
    :pswitch_5
    iget v0, v4, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float v1, v3, v9

    sub-float/2addr v0, v1

    float-to-int v0, v0

    move v7, v0

    goto :goto_4

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 148
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 252
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bm;->i:Landroid/graphics/Typeface;

    .line 253
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 254
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bm;->n:Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bm;->c:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 184
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bm;->j:Z

    .line 95
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 96
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/amap/api/mapcore2d/bm;->d:I

    return v0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 82
    iput p1, p0, Lcom/amap/api/mapcore2d/bm;->k:F

    .line 83
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->b:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->d()V

    .line 84
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 294
    iput p1, p0, Lcom/amap/api/mapcore2d/bm;->o:I

    .line 296
    return-void
.end method

.method public b(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    .prologue
    .line 218
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bm;->f:Lcom/amap/api/maps2d/model/LatLng;

    .line 219
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 220
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/amap/api/mapcore2d/bm;->e:I

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 207
    iput p1, p0, Lcom/amap/api/mapcore2d/bm;->e:I

    .line 208
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 209
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/amap/api/mapcore2d/bm;->g:F

    return v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 241
    iput p1, p0, Lcom/amap/api/mapcore2d/bm;->h:I

    .line 242
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 243
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/amap/api/mapcore2d/bm;->h:I

    return v0
.end method

.method public f()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->i:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/amap/api/mapcore2d/bm;->l:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/amap/api/mapcore2d/bm;->m:I

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->b:Lcom/amap/api/mapcore2d/as;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->b:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/as;->b(Lcom/amap/api/mapcore2d/ai;)V

    goto :goto_0
.end method

.method public r()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/amap/api/mapcore2d/bm;->k:F

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bm;->j:Z

    return v0
.end method

.method public t()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->f:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public u()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/amap/api/mapcore2d/bm;->o:I

    return v0
.end method
