.class final Lcom/oneplus/gallery2/media/TempVideoMedia;
.super Lcom/oneplus/gallery2/media/TempMedia;
.source "TempVideoMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/VideoMedia;


# static fields
.field private static final FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_Duration:Ljava/lang/Long;

.field private m_DurationCallbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_FileParsingTask:Ljava/lang/Runnable;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/TempVideoMedia;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/TempVideoMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/TempMedia;-><init>(Lcom/oneplus/gallery2/media/MediaType;Landroid/net/Uri;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/TempVideoMedia;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/TempVideoMedia;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/TempVideoMedia;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/TempVideoMedia;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/TempVideoMedia;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/TempVideoMedia;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/oneplus/gallery2/media/TempVideoMedia;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/media/TempVideoMedia;JLandroid/util/Size;)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/TempVideoMedia;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/util/Size;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/TempVideoMedia;->onVideoFileParsed(JLandroid/util/Size;)V

    return-void
.end method

.method private onVideoFileParsed(JLandroid/util/Size;)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "size"    # Landroid/util/Size;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 141
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Duration:Ljava/lang/Long;

    .line 142
    iput-object p3, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Size:Landroid/util/Size;

    .line 143
    iput-object v5, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_FileParsingTask:Ljava/lang/Runnable;

    .line 146
    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 148
    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 150
    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v4}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    .line 151
    .local v0, "callback":Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;->onDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V

    .line 148
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 154
    .end local v0    # "callback":Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;
    :cond_1
    iput-object v5, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    .line 156
    .end local v2    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-eqz v4, :cond_7

    .line 158
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 159
    .local v3, "width":I
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 160
    .local v1, "height":I
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_6

    .line 162
    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v4}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .line 163
    .local v0, "callback":Lcom/oneplus/gallery2/media/Media$SizeCallback;
    if-eqz v0, :cond_4

    .line 164
    invoke-interface {v0, p0, v3, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 160
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .end local v0    # "callback":Lcom/oneplus/gallery2/media/Media$SizeCallback;
    .end local v1    # "height":I
    .end local v2    # "i":I
    .end local v3    # "width":I
    :cond_5
    move v3, v1

    .line 158
    goto :goto_1

    .line 166
    .restart local v1    # "height":I
    .restart local v2    # "i":I
    .restart local v3    # "width":I
    :cond_6
    iput-object v5, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    .line 168
    .end local v1    # "height":I
    .end local v2    # "i":I
    .end local v3    # "width":I
    :cond_7
    return-void
.end method

.method private parseVideoFile()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_FileParsingTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/TempVideoMedia$3;-><init>(Lcom/oneplus/gallery2/media/TempVideoMedia;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_FileParsingTask:Ljava/lang/Runnable;

    .line 224
    sget-object v0, Lcom/oneplus/gallery2/media/TempVideoMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_FileParsingTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method


# virtual methods
.method public getDuration(Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->verifyAccess()V

    .line 57
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Duration:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Duration:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, p0, v2, v3}, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;->onDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V

    .line 61
    :cond_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string v1, "GetVideoDuration"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-object v0

    .line 65
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/TempVideoMedia$1;

    const-string v1, "GetVideoDuration"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/TempVideoMedia$1;-><init>(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;Landroid/os/Handler;)V

    .line 75
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    if-nez v1, :cond_2

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->parseVideoFile()V

    goto :goto_0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->verifyAccess()V

    .line 93
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Size:Landroid/util/Size;

    if-eqz v1, :cond_1

    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-interface {p1, p0, v1, v2}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 97
    :cond_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string v1, "GetVideoSize"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-object v0

    .line 101
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/TempVideoMedia$2;

    const-string v1, "GetVideoSize"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/TempVideoMedia$2;-><init>(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V

    .line 111
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/Media$SizeCallback;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-nez v1, :cond_2

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->parseVideoFile()V

    goto :goto_0
.end method

.method public isSlowMotion()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeLapse()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public peekDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Duration:Ljava/lang/Long;

    return-object v0
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Size:Landroid/util/Size;

    return-object v0
.end method
