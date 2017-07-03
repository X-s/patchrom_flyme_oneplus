.class final Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
.super Ljava/lang/Object;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ThumbnailInfo"
.end annotation


# instance fields
.field private final m_HQDecodingCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

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

.field private final m_Media:Lcom/oneplus/gallery2/media/Media;

.field final synthetic this$0:Lcom/oneplus/gallery2/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/media/Media;)V
    .locals 1
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo$1;-><init>(Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQDecodingCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    .line 237
    iput-object p2, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 238
    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$402(Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    .param p1, "x1"    # Ljava/lang/ref/SoftReference;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$602(Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_IsHighPriorityHQDecoding:Z

    return p1
.end method


# virtual methods
.method public decodeThumbnailImages(Z)V
    .locals 7
    .param p1, "highPriority"    # Z

    .prologue
    const/4 v5, 0x1

    .line 245
    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v4, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseFragment$State;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 254
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$800(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v0

    .line 255
    .local v0, "thumbManager":Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    if-nez v0, :cond_1

    .line 274
    .end local v0    # "thumbManager":Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 259
    .restart local v0    # "thumbManager":Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->getHQThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 261
    iget-boolean v1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_IsHighPriorityHQDecoding:Z

    if-nez v1, :cond_0

    .line 263
    :cond_2
    const/4 v3, 0x0

    .line 264
    .local v3, "flags":I
    if-eqz p1, :cond_3

    .line 266
    iput-boolean v5, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_IsHighPriorityHQDecoding:Z

    .line 267
    or-int/lit8 v3, v3, 0x2

    .line 269
    :cond_3
    iput-boolean v5, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z

    .line 270
    iget-object v6, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    .line 271
    .local v6, "prevHQDecodingHandle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_Media:Lcom/oneplus/gallery2/media/Media;

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQDecodingCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v5}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    .line 272
    invoke-static {v6}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 245
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
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->dropThumbnailImages(Z)Z

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

    .line 283
    iput-boolean v1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_IsDecodingHQThumbnailImage:Z

    .line 284
    iput-boolean v1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_IsHighPriorityHQDecoding:Z

    .line 285
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQDecodingHandle:Lcom/oneplus/base/Handle;

    .line 286
    if-eqz p1, :cond_0

    .line 288
    iput-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    .line 289
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 291
    iput-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    .line 301
    :goto_0
    return v0

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 297
    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    .line 298
    iput-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 301
    goto :goto_0
.end method

.method public getHQThumbnailImage()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    .line 316
    :goto_0
    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImageSoftRef:Ljava/lang/ref/SoftReference;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$800(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$800(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_Media:Lcom/oneplus/gallery2/media/Media;

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->getCachedThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->m_HQThumbnailImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
