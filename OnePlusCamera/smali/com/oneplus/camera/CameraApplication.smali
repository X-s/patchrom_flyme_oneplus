.class public final Lcom/oneplus/camera/CameraApplication;
.super Landroid/app/Application;
.source "CameraApplication.java"


# static fields
.field public static final DEBUG:Z = true

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
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/camera/CameraApplication;->m_InstanceRefs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static notifyInstanceCreated(Lcom/oneplus/camera/CameraActivity;)V
    .locals 4
    .param p0, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 37
    sget-object v1, Lcom/oneplus/camera/CameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 39
    sget-object v1, Lcom/oneplus/camera/CameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    sget-object v1, Lcom/oneplus/camera/CameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 37
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 42
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraApplication;->m_InstanceRefs:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v1, "CameraApplication"

    const-string v2, "notifyInstanceCreated() - Instance count : "

    sget-object v3, Lcom/oneplus/camera/CameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method static notifyInstanceDestroyed(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p0, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 52
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "CameraApplication"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 66
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->prepare()V

    .line 67
    return-void
.end method
