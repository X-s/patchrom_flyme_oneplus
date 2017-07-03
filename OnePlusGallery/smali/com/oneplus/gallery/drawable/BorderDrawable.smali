.class public Lcom/oneplus/gallery/drawable/BorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/drawable/BorderDrawable$1;,
        Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;,
        Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;,
        Lcom/oneplus/gallery/drawable/BorderDrawable$Border;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_LINE_HEIGHT:I = 0x1


# instance fields
.field private m_ActionBarLinePaint:Landroid/graphics/Paint;

.field private m_Alpha:I

.field private m_BorderInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/drawable/BorderDrawable$Border;",
            "Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_BorderLengthRatio:F

.field private m_BorderType:Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;

.field private m_Paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Alpha:I

    .line 63
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_BorderInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_BorderInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 73
    .local v6, "bounds":Landroid/graphics/Rect;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Paint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_ActionBarLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_ActionBarLinePaint:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_ActionBarLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_ActionBarLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0x1f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_BorderInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;

    .line 89
    .local v8, "info":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, v8, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    sget-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$1;->$SwitchMap$com$oneplus$gallery$drawable$BorderDrawable$Border:[I

    iget-object v1, v8, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;->border:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    invoke-virtual {v1}, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 93
    :pswitch_0
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v3, v8, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;->borderWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget v4, v8, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;->borderWidth:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 99
    :pswitch_2
    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v1, v8, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;->borderWidth:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 102
    :pswitch_3
    iget v0, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_BorderLengthRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v9, v0, v1

    .line 103
    .local v9, "targetX":I
    sget-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$1;->$SwitchMap$com$oneplus$gallery$drawable$BorderDrawable$BorderType:[I

    iget-object v1, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_BorderType:Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;

    invoke-virtual {v1}, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 106
    :pswitch_4
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    int-to-float v3, v9

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_ActionBarLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    int-to-float v1, v9

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v8, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;->borderWidth:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 110
    :pswitch_5
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v8, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;->borderWidth:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v9

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    int-to-float v1, v9

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_ActionBarLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 114
    :pswitch_6
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_ActionBarLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 103
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_Alpha:I

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/BorderDrawable;->invalidateSelf()V

    .line 137
    return-void
.end method

.method public setBorder()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->LEFT:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/drawable/BorderDrawable;->setBorder(Lcom/oneplus/gallery/drawable/BorderDrawable$Border;)V

    .line 144
    sget-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->TOP:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/drawable/BorderDrawable;->setBorder(Lcom/oneplus/gallery/drawable/BorderDrawable$Border;)V

    .line 145
    sget-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->RIGHT:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/drawable/BorderDrawable;->setBorder(Lcom/oneplus/gallery/drawable/BorderDrawable$Border;)V

    .line 146
    sget-object v0, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->BOTTOM:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/drawable/BorderDrawable;->setBorder(Lcom/oneplus/gallery/drawable/BorderDrawable$Border;)V

    .line 147
    return-void
.end method

.method public setBorder(Lcom/oneplus/gallery/drawable/BorderDrawable$Border;)V
    .locals 2
    .param p1, "border"    # Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    .prologue
    .line 150
    const/high16 v0, -0x1000000

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/gallery/drawable/BorderDrawable;->setBorder(Lcom/oneplus/gallery/drawable/BorderDrawable$Border;II)V

    .line 151
    return-void
.end method

.method public setBorder(Lcom/oneplus/gallery/drawable/BorderDrawable$Border;II)V
    .locals 2
    .param p1, "border"    # Lcom/oneplus/gallery/drawable/BorderDrawable$Border;
    .param p2, "color"    # I
    .param p3, "borderWidth"    # I

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_BorderInfos:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_BorderInfos:Ljava/util/HashMap;

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_BorderInfos:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;-><init>(Lcom/oneplus/gallery/drawable/BorderDrawable$Border;II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/BorderDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setBorderLengthRatio(FLcom/oneplus/gallery/drawable/BorderDrawable$BorderType;)V
    .locals 1
    .param p1, "ratio"    # F
    .param p2, "type"    # Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;

    .prologue
    .line 164
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 165
    const/high16 p1, 0x3f800000    # 1.0f

    .line 169
    :cond_0
    :goto_0
    iput p1, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_BorderLengthRatio:F

    .line 170
    iput-object p2, p0, Lcom/oneplus/gallery/drawable/BorderDrawable;->m_BorderType:Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;

    .line 171
    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/BorderDrawable;->invalidateSelf()V

    .line 172
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 167
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 178
    return-void
.end method
