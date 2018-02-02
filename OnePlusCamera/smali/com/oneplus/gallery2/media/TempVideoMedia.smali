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
    const-class v0, Lcom/oneplus/gallery2/media/TempVideoMedia;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/TempVideoMedia;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/TempVideoMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oneplus/gallery2/media/TempMedia;-><init>(Lcom/oneplus/gallery2/media/MediaType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/TempVideoMedia;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/TempVideoMedia;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oneplus/gallery2/media/TempVideoMedia;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/oneplus/gallery2/media/TempVideoMedia;JLandroid/util/Size;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/TempVideoMedia;->onVideoFileParsed(JLandroid/util/Size;)V

    return-void
.end method

.method private onVideoFileParsed(JLandroid/util/Size;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 141
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Duration:Ljava/lang/Long;

    .line 142
    iput-object p3, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Size:Landroid/util/Size;

    .line 143
    iput-object v4, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_FileParsingTask:Ljava/lang/Runnable;

    .line 146
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-nez v0, :cond_3

    .line 168
    :goto_1
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    .line 151
    if-nez v0, :cond_1

    .line 148
    :goto_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 152
    :cond_1
    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;->onDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V

    goto :goto_3

    .line 154
    :cond_2
    iput-object v4, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    goto :goto_0

    .line 158
    :cond_3
    if-nez p3, :cond_4

    move v1, v2

    .line 159
    :goto_4
    if-nez p3, :cond_5

    .line 160
    :goto_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_6
    if-ltz v3, :cond_7

    .line 162
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .line 163
    if-nez v0, :cond_6

    .line 160
    :goto_7
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_6

    .line 158
    :cond_4
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    move v1, v0

    goto :goto_4

    .line 159
    :cond_5
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    goto :goto_5

    .line 164
    :cond_6
    invoke-interface {v0, p0, v1, v2}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    goto :goto_7

    .line 166
    :cond_7
    iput-object v4, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    goto :goto_1
.end method

.method private parseVideoFile()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_FileParsingTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/TempVideoMedia$3;-><init>(Lcom/oneplus/gallery2/media/TempVideoMedia;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_FileParsingTask:Ljava/lang/Runnable;

    .line 224
    sget-object v0, Lcom/oneplus/gallery2/media/TempVideoMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_FileParsingTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 225
    return-void

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public getDuration(Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->verifyAccess()V

    .line 57
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Duration:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/oneplus/gallery2/media/TempVideoMedia$1;

    const-string/jumbo v1, "GetVideoDuration"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/TempVideoMedia$1;-><init>(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;Landroid/os/Handler;)V

    .line 75
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->parseVideoFile()V

    .line 81
    return-object v0

    .line 59
    :cond_0
    if-nez p1, :cond_1

    .line 61
    :goto_1
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetVideoDuration"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Duration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;->onDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V

    goto :goto_1

    .line 76
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_DurationCallbackHandles:Ljava/util/List;

    goto :goto_0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->verifyAccess()V

    .line 93
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Size:Landroid/util/Size;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/oneplus/gallery2/media/TempVideoMedia$2;

    const-string/jumbo v1, "GetVideoSize"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/TempVideoMedia$2;-><init>(Lcom/oneplus/gallery2/media/TempVideoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V

    .line 111
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/TempVideoMedia;->parseVideoFile()V

    .line 117
    return-object v0

    .line 95
    :cond_0
    if-nez p1, :cond_1

    .line 97
    :goto_1
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetVideoSize"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    goto :goto_1

    .line 112
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia;->m_SizeCallbackHandles:Ljava/util/List;

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
