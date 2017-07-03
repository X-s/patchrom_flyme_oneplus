.class public Lcom/oneplus/gallery2/drawable/MediaDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MediaDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static final EMPTY_SIZE:Landroid/util/Size;


# instance fields
.field private m_Drawable:Landroid/graphics/drawable/Drawable;

.field private m_Handler:Landroid/os/Handler;

.field private m_Media:Lcom/oneplus/gallery2/media/Media;

.field private final m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

.field private m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_MediaSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 24
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->EMPTY_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/Media;)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    sget-object v0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;-><init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    .line 53
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "color"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    sget-object v0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;-><init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    .line 67
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 70
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/Media;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    sget-object v0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;-><init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    .line 86
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 89
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    sget-object v0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;-><init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    .line 104
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 107
    iput-object p2, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/drawable/MediaDrawable;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/drawable/MediaDrawable;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/drawable/MediaDrawable;)Lcom/oneplus/gallery2/media/Media;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/drawable/MediaDrawable;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/gallery2/drawable/MediaDrawable;Landroid/util/Size;)Landroid/util/Size;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/drawable/MediaDrawable;
    .param p1, "x1"    # Landroid/util/Size;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    return-object p1
.end method

.method private onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 185
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SIZE_CHANGED:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->updateMediaSize()V

    goto :goto_0
.end method

.method private resetDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 233
    iput-object v1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateMediaSize()V
    .locals 3

    .prologue
    .line 424
    iget-object v1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    if-nez v1, :cond_0

    .line 426
    sget-object v1, Lcom/oneplus/gallery2/drawable/MediaDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    .line 450
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v0

    .line 432
    .local v0, "size":Landroid/util/Size;
    if-nez v0, :cond_1

    .line 434
    iget-object v1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    new-instance v2, Lcom/oneplus/gallery2/drawable/MediaDrawable$2;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable$2;-><init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V

    invoke-interface {v1, v2}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 449
    :cond_1
    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->reset()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    .line 203
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 216
    invoke-direct {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->updateMediaSize()V

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->resetDrawable()V

    .line 221
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->resetDrawable()V

    .line 282
    if-eqz p2, :cond_0

    .line 284
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 285
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 291
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->invalidateSelf()V

    .line 292
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->resetDrawable()V

    .line 340
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 341
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 344
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->invalidateSelf()V

    .line 345
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->resetDrawable()V

    .line 374
    iput-object p1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 375
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->invalidateSelf()V

    .line 380
    return-void
.end method

.method public setMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->reset()V

    .line 391
    if-eqz p1, :cond_0

    .line 393
    iput-object p1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 394
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 395
    invoke-direct {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->updateMediaSize()V

    .line 397
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
