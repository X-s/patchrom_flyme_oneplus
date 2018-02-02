.class public final Lcom/amap/api/maps2d/model/Text;
.super Ljava/lang/Object;
.source "Text.java"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x5

.field public static final ALIGN_CENTER_HORIZONTAL:I = 0x3

.field public static final ALIGN_CENTER_VERTICAL:I = 0x6

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x4


# instance fields
.field private a:Lcom/amap/api/mapcore2d/ai;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ai;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    .line 65
    return-void
.end method


# virtual methods
.method public getAlignX()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->g()I

    move-result v0

    return v0
.end method

.method public getAlignY()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->h()I

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->e()I

    move-result v0

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->c()I

    move-result v0

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->b()I

    move-result v0

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->u()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->d()F

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->f()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->r()F

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->s()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->i()V

    .line 114
    return-void
.end method

.method public setAlign(II)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore2d/ai;->a(II)V

    .line 277
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ai;->d(I)V

    .line 216
    return-void
.end method

.method public setFontColor(I)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ai;->c(I)V

    .line 175
    return-void
.end method

.method public setFontSize(I)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ai;->a(I)V

    .line 155
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ai;->a(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ai;->b(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 75
    return-void
.end method

.method public setRotate(F)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ai;->a(F)V

    .line 196
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ai;->a(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ai;->a(Landroid/graphics/Typeface;)V

    .line 236
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ai;->a(Z)V

    .line 287
    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/mapcore2d/ai;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ai;->b(F)V

    .line 105
    return-void
.end method
