.class public Lcom/oneplus/drawable/SizeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SizeDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static final EMPTY_SIZE:Landroid/util/Size;


# instance fields
.field private m_Drawable:Landroid/graphics/drawable/Drawable;

.field private m_Handler:Landroid/os/Handler;

.field private m_Size:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 18
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    invoke-direct {p0, v0}, Lcom/oneplus/drawable/SizeDrawable;-><init>(Landroid/util/Size;)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 66
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/drawable/SizeDrawable;-><init>(Landroid/util/Size;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    .line 55
    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/drawable/SizeDrawable;->initialize(IIILandroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    .line 93
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/drawable/SizeDrawable;->initialize(IIILandroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method

.method public constructor <init>(IILandroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    .line 134
    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/drawable/SizeDrawable;->initialize(IIILandroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-void
.end method

.method public constructor <init>(IILandroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    .line 172
    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/drawable/SizeDrawable;->initialize(IIILandroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 105
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/drawable/SizeDrawable;-><init>(Landroid/util/Size;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 145
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/drawable/SizeDrawable;-><init>(Landroid/util/Size;Landroid/graphics/drawable/Drawable;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;)V
    .locals 7
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    .line 42
    if-nez p1, :cond_0

    .line 43
    sget-object p1, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/drawable/SizeDrawable;->initialize(IIILandroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;I)V
    .locals 7
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    .line 78
    if-nez p1, :cond_0

    .line 79
    sget-object p1, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    move-object v0, p0

    move v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/drawable/SizeDrawable;->initialize(IIILandroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    .line 118
    if-nez p1, :cond_0

    .line 119
    sget-object p1, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/drawable/SizeDrawable;->initialize(IIILandroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 155
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    .line 157
    if-nez p1, :cond_0

    .line 158
    sget-object p1, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v5, v4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/drawable/SizeDrawable;->initialize(IIILandroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void
.end method

.method private initialize(IIILandroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "color"    # I
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;
    .param p6, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 231
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    .line 234
    if-lez p3, :cond_2

    .line 235
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 240
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 242
    :cond_1
    return-void

    .line 236
    :cond_2
    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    .line 237
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p4, p5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 238
    :cond_3
    if-eqz p6, :cond_0

    .line 239
    iput-object p6, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private resetDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 296
    iput-object v1, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/drawable/SizeDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/oneplus/drawable/SizeDrawable;->reset()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Handler:Landroid/os/Handler;

    .line 271
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/oneplus/drawable/SizeDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    .line 283
    invoke-direct {p0}, Lcom/oneplus/drawable/SizeDrawable;->resetDrawable()V

    .line 284
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 310
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/oneplus/drawable/SizeDrawable;->resetDrawable()V

    .line 345
    if-eqz p2, :cond_0

    .line 347
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 348
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 354
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/drawable/SizeDrawable;->invalidateSelf()V

    .line 355
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/drawable/SizeDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/oneplus/drawable/SizeDrawable;->resetDrawable()V

    .line 403
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 404
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 407
    invoke-virtual {p0}, Lcom/oneplus/drawable/SizeDrawable;->invalidateSelf()V

    .line 408
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/oneplus/drawable/SizeDrawable;->resetDrawable()V

    .line 437
    iput-object p1, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 438
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/drawable/SizeDrawable;->invalidateSelf()V

    .line 443
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 465
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    .line 466
    return-void
.end method

.method public setSize(Landroid/util/Size;)V
    .locals 3
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 452
    if-nez p1, :cond_0

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Size:Landroid/util/Size;

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/oneplus/drawable/SizeDrawable;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
