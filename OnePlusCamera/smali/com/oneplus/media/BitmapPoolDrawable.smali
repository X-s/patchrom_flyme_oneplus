.class public Lcom/oneplus/media/BitmapPoolDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BitmapPoolDrawable.java"


# instance fields
.field private m_Alpha:I

.field private final m_BitmapPool:Lcom/oneplus/media/BitmapPool;

.field private m_DummyPaint:Landroid/graphics/Paint;

.field private final m_FilePath:Ljava/lang/String;

.field private final m_Handler:Landroid/os/Handler;

.field private m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private m_IsDecoding:Z

.field private final m_MaxHeight:I

.field private final m_MaxWidth:I

.field private final m_UseDummyColor:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/media/BitmapPool;Ljava/lang/String;IIZ)V
    .locals 2
    .param p1, "pool"    # Lcom/oneplus/media/BitmapPool;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "fillDummyColor"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    const/16 v0, 0xff

    iput v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_Alpha:I

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bitmap pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-nez p2, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No file path."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_BitmapPool:Lcom/oneplus/media/BitmapPool;

    .line 47
    iput-object p2, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_FilePath:Ljava/lang/String;

    .line 48
    iput p3, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_MaxWidth:I

    .line 49
    iput p4, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_MaxHeight:I

    .line 50
    iput-boolean p5, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_UseDummyColor:Z

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_Handler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/media/BitmapPoolDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/media/BitmapPoolDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_IsDecoding:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/media/BitmapPoolDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/media/BitmapPoolDrawable;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/media/BitmapPoolDrawable;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/media/BitmapPoolDrawable;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/media/BitmapPoolDrawable;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/media/BitmapPoolDrawable;

    .prologue
    .line 17
    iget v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_Alpha:I

    return v0
.end method

.method private checkBitmap()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 58
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return v6

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_IsDecoding:Z

    if-nez v0, :cond_1

    .line 62
    iput-boolean v6, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_IsDecoding:Z

    .line 63
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_BitmapPool:Lcom/oneplus/media/BitmapPool;

    iget-object v1, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_FilePath:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_MaxWidth:I

    iget v3, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_MaxHeight:I

    new-instance v4, Lcom/oneplus/media/BitmapPoolDrawable$1;

    invoke-direct {v4, p0}, Lcom/oneplus/media/BitmapPoolDrawable$1;-><init>(Lcom/oneplus/media/BitmapPoolDrawable;)V

    iget-object v5, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_Handler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    move v0, v6

    :goto_1
    move v6, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0x50

    .line 87
    invoke-direct {p0}, Lcom/oneplus/media/BitmapPoolDrawable;->checkBitmap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPoolDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_UseDummyColor:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_DummyPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_DummyPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_DummyPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPoolDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_DummyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iput p1, p0, Lcom/oneplus/media/BitmapPoolDrawable;->m_Alpha:I

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 148
    return-void
.end method
