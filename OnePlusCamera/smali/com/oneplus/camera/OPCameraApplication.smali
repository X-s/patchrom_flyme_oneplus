.class public final Lcom/oneplus/camera/OPCameraApplication;
.super Lcom/oneplus/camera/CameraApplication;
.source "OPCameraApplication.java"


# static fields
.field public static final DEBUG:Z = true

.field private static final DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

.field private static final TAG:Ljava/lang/String; = "CameraApplication"

.field private static final m_InstanceRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/camera/CameraActivity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 34
    new-instance v1, Lcom/oneplus/gallery2/media/ContentObserverBuilder;

    invoke-direct {v1}, Lcom/oneplus/gallery2/media/ContentObserverBuilder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 35
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManagerBuilder;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 36
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSourceBuilder;

    invoke-direct {v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSourceBuilder;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 37
    new-instance v1, Lcom/oneplus/base/PermissionManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/base/PermissionManagerBuilder;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 38
    new-instance v1, Lcom/oneplus/io/StorageManagerBuilder;

    invoke-direct {v1}, Lcom/oneplus/io/StorageManagerBuilder;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 32
    sput-object v0, Lcom/oneplus/camera/OPCameraApplication;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oneplus/camera/CameraApplication;-><init>()V

    .line 75
    sget-object v0, Lcom/oneplus/camera/OPCameraApplication;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraApplication;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 73
    return-void
.end method

.method static notifyInstanceCreated(Lcom/oneplus/camera/CameraActivity;)V
    .locals 4
    .param p0, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 52
    sget-object v1, Lcom/oneplus/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 54
    sget-object v1, Lcom/oneplus/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 55
    sget-object v1, Lcom/oneplus/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 57
    :cond_1
    sget-object v1, Lcom/oneplus/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    const-string/jumbo v1, "CameraApplication"

    const-string/jumbo v2, "notifyInstanceCreated() - Instance count : "

    sget-object v3, Lcom/oneplus/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method static notifyInstanceDestroyed(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p0, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 66
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 82
    const-string/jumbo v1, "CameraApplication"

    const-string/jumbo v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :try_start_0
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->startSync()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    invoke-super {p0}, Lcom/oneplus/camera/CameraApplication;->onCreate()V

    .line 99
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->prepare()V

    .line 80
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "CameraApplication"

    const-string/jumbo v2, "onCreate() - Error while starting media content thread"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
