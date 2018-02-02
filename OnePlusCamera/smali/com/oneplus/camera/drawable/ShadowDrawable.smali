.class public Lcom/oneplus/camera/drawable/ShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShadowDrawable.java"


# static fields
.field private static final SHARED_BITMAP_BUFFER_SIZE:I = 0x280

.field private static final SHARED_DRAWABLE_BITMAP_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARED_DRAWABLE_BITMAP_BUFFER_CANVAS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private static final STYLED_ATTRS:[I


# instance fields
.field private m_ContentBounds:Landroid/graphics/Rect;

.field private final m_DestRect:Landroid/graphics/Rect;

.field private final m_Drawable:Landroid/graphics/drawable/Drawable;

.field private m_NoRadiusShadowBounds:Landroid/graphics/Rect;

.field private m_OutputBuffer:Landroid/graphics/Bitmap;

.field private m_OutputBufferCanvas:Landroid/graphics/Canvas;

.field private m_PaddingBottom:I

.field private m_PaddingEnd:I

.field private m_PaddingStart:I

.field private m_PaddingTop:I

.field private m_ShadowBounds:Landroid/graphics/Rect;

.field private m_ShadowColor:I

.field private m_ShadowDx:I

.field private m_ShadowDy:I

.field private final m_ShadowPaint:Landroid/graphics/Paint;

.field private m_ShadowRadius:F

.field private m_ShadowRadiusCeiling:I

.field private final m_SrcRect:Landroid/graphics/Rect;

.field private m_UnionBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    const v0, 0x1010161

    .line 27
    const v1, 0x1010162

    .line 28
    const v2, 0x1010163

    .line 29
    const v3, 0x1010164

    .line 25
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/drawable/ShadowDrawable;->STYLED_ATTRS:[I

    .line 35
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/camera/drawable/ShadowDrawable;->SHARED_DRAWABLE_BITMAP_BUFFER:Ljava/lang/ThreadLocal;

    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/camera/drawable/ShadowDrawable;->SHARED_DRAWABLE_BITMAP_BUFFER_CANVAS:Ljava/lang/ThreadLocal;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableResId"    # I

    .prologue
    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableResId"    # I
    .param p3, "shadowStyleResId"    # I

    .prologue
    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 79
    const v0, 0x7f0c0018

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "shadowStyleResId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 101
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    .line 41
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_DestRect:Landroid/graphics/Rect;

    .line 43
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_NoRadiusShadowBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowBounds:Landroid/graphics/Rect;

    .line 54
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_SrcRect:Landroid/graphics/Rect;

    .line 58
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    .line 103
    iput-object p2, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Lcom/oneplus/camera/drawable/ShadowDrawable$1;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/drawable/ShadowDrawable$1;-><init>(Lcom/oneplus/camera/drawable/ShadowDrawable;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 124
    if-eqz p3, :cond_1

    .line 126
    sget-object v3, Lcom/oneplus/camera/drawable/ShadowDrawable;->STYLED_ATTRS:[I

    invoke-virtual {p1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowColor:I

    .line 128
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowDx:I

    .line 129
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowDy:I

    .line 130
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowRadius:F

    .line 131
    iget v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowRadius:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 132
    iput v6, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowRadius:F

    .line 133
    :cond_0
    iget v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowRadius:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowRadiusCeiling:I

    .line 134
    iget v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 135
    .local v2, "shadowAlpha":I
    iget v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowRadius:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    if-lez v2, :cond_2

    .line 137
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowRadius:F

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 138
    .local v1, "blurFilter":Landroid/graphics/BlurMaskFilter;
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 139
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 144
    .end local v0    # "attrs":Landroid/content/res/TypedArray;
    .end local v1    # "blurFilter":Landroid/graphics/BlurMaskFilter;
    .end local v2    # "shadowAlpha":I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 101
    return-void

    .line 142
    .restart local v0    # "attrs":Landroid/content/res/TypedArray;
    .restart local v2    # "shadowAlpha":I
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x280

    const/4 v9, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 155
    .local v2, "targetBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingStart:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingTop:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingEnd:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_1

    .line 157
    :cond_0
    return-void

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-nez v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 163
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    return-void

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gt v3, v10, :cond_5

    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v3, v10, :cond_5

    .line 172
    sget-object v3, Lcom/oneplus/camera/drawable/ShadowDrawable;->SHARED_DRAWABLE_BITMAP_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 173
    sget-object v3, Lcom/oneplus/camera/drawable/ShadowDrawable;->SHARED_DRAWABLE_BITMAP_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 179
    :goto_0
    sget-object v3, Lcom/oneplus/camera/drawable/ShadowDrawable;->SHARED_DRAWABLE_BITMAP_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 180
    .local v0, "drawableBuffer":Landroid/graphics/Bitmap;
    sget-object v3, Lcom/oneplus/camera/drawable/ShadowDrawable;->SHARED_DRAWABLE_BITMAP_BUFFER_CANVAS:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Canvas;

    .line 187
    .local v1, "drawableBufferCanvas":Landroid/graphics/Canvas;
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 192
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowDx:I

    iget v5, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowDy:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 193
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_NoRadiusShadowBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 194
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowRadiusCeiling:I

    neg-int v4, v4

    iget v5, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowRadiusCeiling:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 197
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 198
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 199
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 202
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_OutputBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_OutputBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_6

    .line 204
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_OutputBuffer:Landroid/graphics/Bitmap;

    .line 205
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_OutputBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_OutputBufferCanvas:Landroid/graphics/Canvas;

    .line 211
    :goto_2
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_SrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 212
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_DestRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_NoRadiusShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 213
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_DestRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 214
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_OutputBufferCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_SrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_DestRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 217
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_DestRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 218
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_DestRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 219
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_OutputBufferCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_SrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_DestRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v4, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 222
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_SrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_DestRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 224
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_OutputBuffer:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_SrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_DestRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 151
    return-void

    .line 176
    .end local v0    # "drawableBuffer":Landroid/graphics/Bitmap;
    .end local v1    # "drawableBufferCanvas":Landroid/graphics/Canvas;
    :cond_4
    sget-object v3, Lcom/oneplus/camera/drawable/ShadowDrawable;->SHARED_DRAWABLE_BITMAP_BUFFER:Ljava/lang/ThreadLocal;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 177
    sget-object v4, Lcom/oneplus/camera/drawable/ShadowDrawable;->SHARED_DRAWABLE_BITMAP_BUFFER_CANVAS:Ljava/lang/ThreadLocal;

    new-instance v5, Landroid/graphics/Canvas;

    sget-object v3, Lcom/oneplus/camera/drawable/ShadowDrawable;->SHARED_DRAWABLE_BITMAP_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 184
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    .restart local v0    # "drawableBuffer":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v1    # "drawableBufferCanvas":Landroid/graphics/Canvas;
    goto/16 :goto_1

    .line 202
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_UnionBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_OutputBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 208
    iget-object v3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_OutputBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_2
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingStart:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingEnd:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, -0x3

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 297
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_ShadowColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 294
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 303
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 311
    return-void
.end method

.method public setPaddings(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 326
    iput p1, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingStart:I

    .line 327
    iput p2, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingTop:I

    .line 328
    iput p3, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingEnd:I

    .line 329
    iput p4, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_PaddingBottom:I

    .line 324
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ShadowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method
