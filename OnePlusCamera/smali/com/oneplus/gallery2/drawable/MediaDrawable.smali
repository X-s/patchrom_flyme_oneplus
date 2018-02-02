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

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;-><init>(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    sget-object v0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;-><init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 82
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/Media;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    sget-object v0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;-><init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    .line 98
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 101
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 102
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    sget-object v0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;-><init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    .line 116
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 119
    iput-object p2, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    sget-object v0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;-><init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/drawable/MediaDrawable;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/drawable/MediaDrawable;)Lcom/oneplus/gallery2/media/Media;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/drawable/MediaDrawable;Landroid/util/Size;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    return-void
.end method

.method private onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 197
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SIZE_CHANGED:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->updateMediaSize(Landroid/util/Size;)V

    .line 202
    return-void

    .line 198
    :cond_0
    return-void
.end method

.method private resetDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 245
    iput-object v1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 246
    return-void

    .line 241
    :cond_0
    return-void
.end method

.method private updateMediaSize(Landroid/util/Size;)V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_2

    .line 474
    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->EMPTY_SIZE:Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    .line 450
    return-void

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    new-instance v1, Lcom/oneplus/gallery2/drawable/MediaDrawable$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable$2;-><init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    .line 470
    if-eqz p1, :cond_0

    .line 471
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    return-void

    .line 133
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 168
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->invalidateSelf()V

    .line 188
    return-void

    .line 184
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->reset()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    .line 215
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->resetDrawable()V

    .line 233
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 227
    iput-object v1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 228
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->updateMediaSize(Landroid/util/Size;)V

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 281
    return-void

    .line 277
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-direct {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->resetDrawable()V

    .line 294
    if-nez p2, :cond_0

    .line 300
    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 303
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->invalidateSelf()V

    .line 304
    return-void

    .line 296
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 297
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 339
    return-void

    .line 335
    :cond_0
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 315
    if-eqz p1, :cond_0

    .line 319
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setBounds(IIII)V

    .line 320
    return-void

    .line 316
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->resetDrawable()V

    .line 352
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 353
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 356
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->invalidateSelf()V

    .line 357
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 373
    return-void

    .line 369
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->resetDrawable()V

    .line 386
    iput-object p1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 387
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 391
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->invalidateSelf()V

    .line 392
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method public setMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    .line 402
    return-void
.end method

.method public setMedia(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->reset()V

    .line 414
    if-nez p1, :cond_0

    .line 420
    :goto_0
    return-void

    .line 416
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 417
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 418
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->updateMediaSize(Landroid/util/Size;)V

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    .line 438
    :goto_0
    return-void

    .line 433
    :cond_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
