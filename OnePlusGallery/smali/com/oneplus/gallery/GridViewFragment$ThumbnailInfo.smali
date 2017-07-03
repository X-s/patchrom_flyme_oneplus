.class final Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
.super Ljava/lang/Object;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ThumbnailInfo"
.end annotation


# instance fields
.field private final m_HQDecodingCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

.field private m_HQDecodingHandle:Lcom/oneplus/base/Handle;

.field private m_HQThumbnailImage:Landroid/graphics/Bitmap;

.field private m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsDecodingHQThumbnailImage:Z

.field private m_IsHighPriorityHQDecoding:Z

.field private final m_Media:Lcom/oneplus/gallery/media/Media;

.field final synthetic this$0:Lcom/oneplus/gallery/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo$1;-><init>(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQDecodingCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    .line 233
    iput-object p2, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_Media:Lcom/oneplus/gallery/media/Media;

    .line 234
    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$402(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    .param p1, "x1"    # Ljava/lang/ref/SoftReference;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$602(Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsHighPriorityHQDecoding:Z

    return p1
.end method


# virtual methods
.method public decodeThumbnailImages(Z)V
    .locals 7
    .param p1, "highPriority"    # Z

    .prologue
    const/4 v6, 0x1

    .line 241
    sget-object v4, Lcom/oneplus/gallery/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v5, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v5}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v3}, Lcom/oneplus/base/BaseFragment$State;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 250
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v3}, Lcom/oneplus/gallery/GridViewFragment;->access$800(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v2

    .line 251
    .local v2, "thumbManager":Lcom/oneplus/gallery/media/ThumbnailImageManager;
    if-nez v2, :cond_1

    .line 270
    .end local v2    # "thumbManager":Lcom/oneplus/gallery/media/ThumbnailImageManager;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 255
    .restart local v2    # "thumbManager":Lcom/oneplus/gallery/media/ThumbnailImageManager;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->getHQThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 257
    iget-boolean v3, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsHighPriorityHQDecoding:Z

    if-nez v3, :cond_0

    .line 259
    :cond_2
    const/4 v0, 0x0

    .line 260
    .local v0, "flags":I
    if-eqz p1, :cond_3

    .line 262
    iput-boolean v6, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsHighPriorityHQDecoding:Z

    .line 263
    or-int/lit8 v0, v0, 0x2

    .line 265
    :cond_3
    iput-boolean v6, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z

    .line 266
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    .line 267
    .local v1, "prevHQDecodingHandle":Lcom/oneplus/base/Handle;
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_Media:Lcom/oneplus/gallery/media/Media;

    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQDecodingCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v5}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    .line 268
    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dropThumbnailImages()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->dropThumbnailImages(Z)Z

    move-result v0

    return v0
.end method

.method public dropThumbnailImages(Z)Z
    .locals 4
    .param p1, "invalidate"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 279
    iput-boolean v1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z

    .line 280
    iput-boolean v1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_IsHighPriorityHQDecoding:Z

    .line 281
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    .line 282
    if-eqz p1, :cond_0

    .line 284
    iput-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    .line 285
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 287
    iput-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    .line 297
    :goto_0
    return v0

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 293
    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    .line 294
    iput-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 297
    goto :goto_0
.end method

.method public getHQThumbnailImage()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    .line 312
    :goto_0
    return-object v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment;->access$800(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment;->access$800(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->getCachedSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
