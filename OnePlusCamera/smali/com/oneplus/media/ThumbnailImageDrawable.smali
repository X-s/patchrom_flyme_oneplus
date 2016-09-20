.class public Lcom/oneplus/media/ThumbnailImageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ThumbnailImageDrawable.java"


# static fields
.field private static final MAX_THUMBNAIL_IMAGE_SIDE:I = 0x780

.field private static final MAX_THUMBNAIL_IMAGE_SIDE_SMALL:I = 0x100


# instance fields
.field private m_Alpha:I

.field private m_DummyPaint:Landroid/graphics/Paint;

.field private final m_FilePath:Ljava/lang/String;

.field private final m_Handler:Landroid/os/Handler;

.field private m_IsDecoding:Z

.field private m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final m_UseDummyColor:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fillDummyColor"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    const/16 v0, 0xff

    iput v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_Alpha:I

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No file path."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_FilePath:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_UseDummyColor:Z

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_Handler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/media/ThumbnailImageDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/media/ThumbnailImageDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_IsDecoding:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/media/ThumbnailImageDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/media/ThumbnailImageDrawable;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/media/ThumbnailImageDrawable;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/media/ThumbnailImageDrawable;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/media/ThumbnailImageDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/media/ThumbnailImageDrawable;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/media/ThumbnailImageDrawable;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/media/ThumbnailImageDrawable;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/media/ThumbnailImageDrawable;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/media/ThumbnailImageDrawable;

    .prologue
    .line 18
    iget v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_Alpha:I

    return v0
.end method

.method private checkBitmap()Z
    .locals 9

    .prologue
    const/16 v2, 0x780

    const/16 v8, 0x100

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 54
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    :cond_0
    move v0, v7

    .line 96
    :goto_0
    return v0

    .line 56
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_IsDecoding:Z

    if-nez v0, :cond_2

    .line 59
    iput-boolean v7, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_IsDecoding:Z

    .line 60
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    iget-object v1, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_FilePath:Ljava/lang/String;

    new-instance v5, Lcom/oneplus/media/ThumbnailImageDrawable$1;

    invoke-direct {v5, p0}, Lcom/oneplus/media/ThumbnailImageDrawable$1;-><init>(Lcom/oneplus/media/ThumbnailImageDrawable;)V

    iget-object v6, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_Handler:Landroid/os/Handler;

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    .line 78
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_FilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    iget-object v1, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_FilePath:Ljava/lang/String;

    new-instance v5, Lcom/oneplus/media/ThumbnailImageDrawable$2;

    invoke-direct {v5, p0}, Lcom/oneplus/media/ThumbnailImageDrawable$2;-><init>(Lcom/oneplus/media/ThumbnailImageDrawable;)V

    iget-object v6, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_Handler:Landroid/os/Handler;

    move v2, v8

    move v3, v8

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    :cond_3
    move v0, v7

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0x50

    .line 104
    invoke-direct {p0}, Lcom/oneplus/media/ThumbnailImageDrawable;->checkBitmap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/media/ThumbnailImageDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/media/ThumbnailImageDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 117
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_UseDummyColor:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_DummyPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_DummyPaint:Landroid/graphics/Paint;

    .line 122
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_DummyPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/media/ThumbnailImageDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_DummyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    .line 161
    :goto_0
    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 173
    :cond_1
    iput p1, p0, Lcom/oneplus/media/ThumbnailImageDrawable;->m_Alpha:I

    .line 174
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 180
    return-void
.end method
