.class Landroid/view/ThreadedRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInitializer"
.end annotation


# static fields
.field static sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

.field private static sProcToken:Landroid/os/IBinder;


# instance fields
.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 905
    new-instance v0, Landroid/view/ThreadedRenderer$ProcessInitializer;

    invoke-direct {v0}, Landroid/view/ThreadedRenderer$ProcessInitializer;-><init>()V

    sput-object v0, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    .line 904
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    .line 910
    return-void
.end method

.method private static initAssetAtlas(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderProxy"    # J

    .prologue
    .line 947
    const-string/jumbo v5, "assetatlas"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 948
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    return-void

    .line 950
    :cond_0
    invoke-static {v1}, Landroid/view/IAssetAtlas$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAssetAtlas;

    move-result-object v0

    .line 952
    .local v0, "atlas":Landroid/view/IAssetAtlas;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/IAssetAtlas;->isCompatible(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 953
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getBuffer()Landroid/view/GraphicBuffer;

    move-result-object v2

    .line 954
    .local v2, "buffer":Landroid/view/GraphicBuffer;
    if-eqz v2, :cond_2

    .line 955
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getMap()[J

    move-result-object v4

    .line 956
    .local v4, "map":[J
    if-eqz v4, :cond_1

    .line 957
    invoke-static {p1, p2, v2, v4}, Landroid/view/ThreadedRenderer;->-wrap1(JLandroid/view/GraphicBuffer;[J)V

    .line 962
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_2

    .line 963
    invoke-virtual {v2}, Landroid/view/GraphicBuffer;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    .end local v2    # "buffer":Landroid/view/GraphicBuffer;
    .end local v4    # "map":[J
    :cond_2
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v3

    .line 968
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ThreadedRenderer"

    const-string/jumbo v6, "Could not acquire atlas"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static initGraphicsStats(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderProxy"    # J

    .prologue
    .line 931
    :try_start_0
    const-string/jumbo v5, "graphicsstats"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 932
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    return-void

    .line 933
    :cond_0
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    move-result-object v1

    .line 935
    .local v1, "graphicsStatsService":Landroid/view/IGraphicsStats;
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    sput-object v5, Landroid/view/ThreadedRenderer$ProcessInitializer;->sProcToken:Landroid/os/IBinder;

    .line 936
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 938
    .local v3, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/view/ThreadedRenderer$ProcessInitializer;->sProcToken:Landroid/os/IBinder;

    .line 937
    invoke-interface {v1, v3, v5}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 939
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-static {p1, p2, v5}, Landroid/view/ThreadedRenderer;->-wrap2(JI)V

    .line 940
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "graphicsStatsService":Landroid/view/IGraphicsStats;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "pkg":Ljava/lang/String;
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v4

    .line 942
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "ThreadedRenderer"

    const-string/jumbo v6, "Could not acquire gfx stats buffer"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static initSched(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderProxy"    # J

    .prologue
    .line 922
    :try_start_0
    invoke-static {p1, p2}, Landroid/view/ThreadedRenderer;->-wrap0(J)I

    move-result v1

    .line 923
    .local v1, "tid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setRenderThread(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    .end local v1    # "tid":I
    :goto_0
    return-void

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ThreadedRenderer"

    const-string/jumbo v3, "Failed to set scheduler for RenderThread"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized init(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderProxy"    # J

    .prologue
    monitor-enter p0

    .line 913
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 914
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    .line 915
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initSched(Landroid/content/Context;J)V

    .line 916
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initGraphicsStats(Landroid/content/Context;J)V

    .line 917
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initAssetAtlas(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 912
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
