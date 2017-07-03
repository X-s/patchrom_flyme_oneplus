.class final Lcom/oneplus/gallery2/media/TempPhotoMedia;
.super Lcom/oneplus/gallery2/media/TempMedia;
.source "TempPhotoMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/PhotoMedia;


# static fields
.field private static final FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private m_Size:Landroid/util/Size;

.field private m_SizeCallbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/Media$SizeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_SizeObtainingTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/TempMedia;-><init>(Lcom/oneplus/gallery2/media/MediaType;Landroid/net/Uri;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/TempPhotoMedia;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/TempPhotoMedia;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/gallery2/media/TempPhotoMedia;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/TempPhotoMedia;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/TempPhotoMedia;Landroid/util/Size;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/TempPhotoMedia;
    .param p1, "x1"    # Landroid/util/Size;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->onSizeObtained(Landroid/util/Size;)V

    return-void
.end method

.method private onSizeObtained(Landroid/util/Size;)V
    .locals 6
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 175
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_Size:Landroid/util/Size;

    .line 176
    iput-object v5, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeObtainingTask:Ljava/lang/Runnable;

    .line 177
    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 179
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 180
    .local v3, "width":I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 181
    .local v1, "height":I
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 183
    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v4}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .line 184
    .local v0, "callback":Lcom/oneplus/gallery2/media/Media$SizeCallback;
    if-eqz v0, :cond_1

    .line 185
    invoke-interface {v0, p0, v3, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 181
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v0    # "callback":Lcom/oneplus/gallery2/media/Media$SizeCallback;
    .end local v1    # "height":I
    .end local v2    # "i":I
    .end local v3    # "width":I
    :cond_2
    move v3, v1

    .line 179
    goto :goto_0

    .line 187
    .restart local v1    # "height":I
    .restart local v2    # "i":I
    .restart local v3    # "width":I
    :cond_3
    iput-object v5, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    .line 189
    .end local v1    # "height":I
    .end local v2    # "i":I
    .end local v3    # "width":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    .prologue
    const/4 v1, 0x0

    .line 47
    if-nez p1, :cond_0

    move-object v0, v1

    .line 89
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->verifyAccess()V

    .line 52
    new-instance v0, Lcom/oneplus/gallery2/media/TempPhotoMedia$1;

    const-string v2, "GetTempPhotoDetails"

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/oneplus/gallery2/media/TempPhotoMedia$1;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$DetailsCallback;Landroid/os/Handler;)V

    .line 58
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/Media$DetailsCallback;>;"
    sget-object v1, Lcom/oneplus/gallery2/media/TempPhotoMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/Media$DetailsCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->verifyAccess()V

    .line 101
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_Size:Landroid/util/Size;

    if-eqz v1, :cond_2

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-interface {p1, p0, v1, v2}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 105
    :cond_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string v1, "GetPhotoSize"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    .line 152
    :cond_1
    :goto_0
    return-object v0

    .line 109
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/media/TempPhotoMedia$3;

    const-string v1, "GetPhotoSize"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/TempPhotoMedia$3;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V

    .line 119
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/Media$SizeCallback;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-nez v1, :cond_3

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeObtainingTask:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 124
    new-instance v1, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeObtainingTask:Ljava/lang/Runnable;

    .line 150
    sget-object v1, Lcom/oneplus/gallery2/media/TempPhotoMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeObtainingTask:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public isBurstGroup()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_Size:Landroid/util/Size;

    return-object v0
.end method
