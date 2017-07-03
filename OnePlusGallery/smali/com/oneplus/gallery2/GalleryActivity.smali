.class public abstract Lcom/oneplus/gallery2/GalleryActivity;
.super Lcom/oneplus/base/ComponentOwnerActivity;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;,
        Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;,
        Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;,
        Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;
    }
.end annotation


# static fields
.field private static final DURATION_CHECK_INSTANCES_DELAY:J = 0xbb8L

.field public static final EXTRA_SHARED_GALLERY_ID:Ljava/lang/String; = "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

.field private static final MIN_BRIGHTNESS_VALUE_FOR_GALLERY:I = 0xe6

.field private static final PERMISSION_REQUEST_LIST:[Ljava/lang/String;

.field public static final PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/ScreenSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_CODE_COUNT:I = 0x40

.field private static final STATE_KEY_PID:Ljava/lang/String;

.field private static final STATE_KEY_PREFIX:Ljava/lang/String;

.field private static final m_CheckInstancesRunnable:Ljava/lang/Runnable;

.field private static final m_TrackingInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gallery2/GalleryActivity;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private m_ActivityResultHandles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_Gallery:Lcom/oneplus/gallery2/Gallery;

.field private m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

.field private m_IsInstanceStateSaved:Z

.field private m_IsSharedGallery:Z

.field private final m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ScreenSize:Lcom/oneplus/base/ScreenSize;

.field private final m_StatusBarStyleHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_StatusBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_StopThreadMonitorRunnable:Ljava/lang/Runnable;

.field private m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 48
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ScreenSize"

    const-class v2, Lcom/oneplus/base/ScreenSize;

    const-class v3, Lcom/oneplus/gallery2/GalleryActivity;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/oneplus/gallery2/GalleryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->STATE_KEY_PID:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    .line 104
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$3;

    invoke-direct {v0}, Lcom/oneplus/gallery2/GalleryActivity$3;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oneplus/base/ComponentOwnerActivity;-><init>()V

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    .line 85
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GalleryActivity$1;-><init>(Lcom/oneplus/gallery2/GalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 93
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GalleryActivity$2;-><init>(Lcom/oneplus/gallery2/GalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 112
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GalleryActivity$4;-><init>(Lcom/oneplus/gallery2/GalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StopThreadMonitorRunnable:Ljava/lang/Runnable;

    .line 176
    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->checkInstances(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/GalleryActivity;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GalleryActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->restoreStatusBarStyle(Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;)V

    return-void
.end method

.method private checkBacklight()V
    .locals 4

    .prologue
    const/16 v3, 0xe6

    .line 201
    const-string v2, "ro.boot.project_name"

    invoke-static {v2}, Lcom/oneplus/base/Device;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "deviceName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "15801"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v3, "checkBacklight() - device not supported"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getCurrentBrightness()I

    move-result v0

    .line 209
    .local v0, "currentBrightness":I
    if-le v0, v3, :cond_3

    .line 210
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/GalleryActivity;->updateBacklightBrightness(I)V

    goto :goto_0

    .line 211
    :cond_3
    if-lez v0, :cond_1

    .line 212
    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/GalleryActivity;->updateBacklightBrightness(I)V

    goto :goto_0
.end method

.method private static checkInstances(J)V
    .locals 6
    .param p0, "delayMillis"    # J

    .prologue
    .line 220
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 221
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery2/GalleryActivity;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-gtz v3, :cond_2

    .line 224
    sget-object v3, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 226
    sget-object v3, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 227
    .local v2, "instance":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 228
    sget-object v3, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 224
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 230
    .end local v2    # "instance":Ljava/lang/Object;
    :cond_1
    const-string v3, "GalleryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkInstances() - Alive instances : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 235
    :cond_2
    sget-object v3, Lcom/oneplus/gallery2/GalleryActivity;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private getCurrentBrightness()I
    .locals 10

    .prologue
    .line 277
    const/4 v0, -0x1

    .line 279
    .local v0, "brightnessValue":I
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "bufferReader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 282
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 284
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentBrightness() - brightnessValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    goto :goto_0

    .line 288
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    :goto_1
    return v0

    .line 288
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 289
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v6, "getCurrentBrightness() - failed to getBrightnessValue"

    invoke-static {v5, v6, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 288
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 279
    .end local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 288
    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_3
    :try_start_7
    throw v5

    :catch_3
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v5

    goto :goto_2
.end method

.method private restoreStatusBarStyle(Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->verifyAccess()V

    .line 688
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    .line 691
    .local v0, "isLastHandle":Z
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->updateStatusBarStyle()V

    goto :goto_0

    .line 690
    .end local v0    # "isLastHandle":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static trackInstance(Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 2
    .param p0, "instance"    # Lcom/oneplus/gallery2/GalleryActivity;

    .prologue
    .line 788
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GalleryActivity;->checkInstances(J)V

    .line 790
    return-void
.end method

.method private updateBacklightBrightness(I)V
    .locals 6
    .param p1, "brightnessValue"    # I

    .prologue
    .line 796
    iget-object v3, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBacklightBrightness() - Update brightness : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    int-to-float v3, p1

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v1, v3, v4

    .line 800
    .local v1, "normalizedValue":F
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 801
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 802
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 803
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 804
    return-void
.end method

.method private updateScreenSize()V
    .locals 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    .line 811
    .local v0, "oldSize":Lcom/oneplus/base/ScreenSize;
    new-instance v1, Lcom/oneplus/base/ScreenSize;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    .line 812
    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/gallery2/GalleryActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 813
    return-void
.end method

.method private updateStatusBarStyle()V
    .locals 3

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 819
    .local v0, "visibility":I
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 821
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;

    iget-boolean v1, v1, Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;->isLightStyle:Z

    if-nez v1, :cond_0

    .line 823
    and-int/lit16 v0, v0, -0x2001

    .line 841
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 842
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 843
    return-void

    .line 827
    :cond_0
    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    .line 832
    :cond_1
    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 834
    and-int/lit16 v0, v0, -0x2001

    goto :goto_0

    .line 838
    :cond_2
    or-int/lit16 v0, v0, 0x2000

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 245
    :try_start_0
    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 249
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "dispatchTouchEvent() - Error when dispatch touch event"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 265
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    .line 266
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    goto :goto_0

    .line 268
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 269
    sget-object v0, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    goto :goto_0

    .line 270
    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getGallery()Lcom/oneplus/gallery2/Gallery;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    return-object v0
.end method

.method protected getLaunchType()Lcom/oneplus/gallery2/ActivityLaunchType;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/oneplus/gallery2/ActivityLaunchType;->UNKNOWN:Lcom/oneplus/gallery2/ActivityLaunchType;

    return-object v0
.end method

.method protected getRequestPermissions(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->getRequestPermissions(Ljava/util/List;)V

    .line 325
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 327
    .local v3, "permission":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 329
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "getRequestPermissions() - Add request permission: "

    invoke-static {v4, v5, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public goBack()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceMode()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;

    .line 360
    .local v0, "handle":Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;
    if-eqz v0, :cond_1

    .line 362
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 363
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    invoke-interface {v1, v0, p2, p3}, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;->onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/base/ComponentOwnerActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->goBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onBackPressed()V

    .line 377
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->updateScreenSize()V

    .line 389
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 397
    invoke-static {p0}, Lcom/oneplus/gallery2/GalleryActivity;->trackInstance(Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, "sharedGalleryId":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 404
    sget-object v5, Lcom/oneplus/gallery2/GalleryActivity;->STATE_KEY_PID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 405
    .local v1, "lastPid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v1, v5, :cond_3

    .line 407
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v6, "onCreate() - Different Pid, clear saved instance state"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 p1, 0x0

    .line 418
    .end local v1    # "lastPid":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 420
    if-eqz v0, :cond_4

    const-string v5, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/oneplus/gallery2/Gallery;->fromId(Ljava/lang/String;)Lcom/oneplus/gallery2/Gallery;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    .line 423
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    if-nez v5, :cond_5

    .line 425
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v6, "onCreate() - Create new Gallery"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/gallery2/GalleryApplication;->createGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    .line 427
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    .line 443
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    invoke-virtual {v5, p0}, Lcom/oneplus/gallery2/Gallery;->attachActivity(Lcom/oneplus/gallery2/GalleryActivity;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    .line 444
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 446
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "onCreate() - Fail to attach to Gallery"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->finish()V

    .line 473
    :goto_3
    return-void

    .line 412
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "lastPid":I
    :cond_3
    const-string v5, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v6, "onCreate() - activity is recreate, sharedGalleryId: "

    invoke-static {v5, v6, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "lastPid":I
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    move-object v2, v4

    .line 420
    goto :goto_1

    .line 431
    :cond_5
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate() - Use shared Gallery : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    invoke-virtual {v7}, Lcom/oneplus/gallery2/Gallery;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    if-eqz v0, :cond_2

    const-string v5, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 437
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    .line 438
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate() - m_IsSharedGallery:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 450
    :cond_6
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    sget-object v6, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v7, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/gallery2/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 451
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    sget-object v6, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v7, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/gallery2/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 454
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->updateScreenSize()V

    .line 457
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 459
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "GalleryActivity.InstanceState"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;

    .line 460
    .local v3, "stateFragment":Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;
    if-eqz v3, :cond_8

    iget-object v5, v3, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->activityResultHandles:Landroid/util/SparseArray;

    if-eqz v5, :cond_8

    .line 462
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v6, "onCreate() - Use existent stateFragment activityResultHandles."

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v5, v3, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->activityResultHandles:Landroid/util/SparseArray;

    iput-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    .line 472
    :goto_4
    if-eqz v3, :cond_7

    iget-object v4, v3, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->extras:Ljava/util/Map;

    :cond_7
    invoke-virtual {p0, p1, v4}, Lcom/oneplus/gallery2/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 467
    :cond_8
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v6, "onCreate() - new sparse array"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    if-nez v0, :cond_0

    .line 485
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getLaunchType()Lcom/oneplus/gallery2/ActivityLaunchType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/GalleryApplication;->notifyActivityLaunched(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/ActivityLaunchType;)V

    .line 486
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 494
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery2/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 495
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery2/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 496
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    .line 499
    iget-boolean v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    if-nez v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v3, "onDestroy() - Release Gallery"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/Gallery;->release()V

    .line 506
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v2, :cond_2

    .line 508
    const/16 v1, 0x40

    .line 509
    .local v1, "requestCode":I
    :goto_0
    if-lez v1, :cond_2

    .line 511
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;

    .line 512
    .local v0, "handle":Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;
    if-eqz v0, :cond_1

    .line 514
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 515
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    if-eqz v2, :cond_1

    .line 516
    iget-object v2, v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v5}, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;->onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V

    .line 509
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 522
    .end local v0    # "handle":Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;
    .end local v1    # "requestCode":I
    :cond_2
    iput-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    .line 525
    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onDestroy()V

    .line 528
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/GalleryActivity;->checkInstances(J)V

    .line 529
    return-void
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 9
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 537
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v3

    .line 541
    :cond_1
    const/4 v0, 0x1

    .line 542
    .local v0, "allGranted":Z
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v1

    .line 543
    .local v1, "app":Lcom/oneplus/gallery2/GalleryApplication;
    array-length v4, p1

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 545
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "onInitialPermissionsRequestCompleted() - Permission : "

    aget-object v6, p1, v2

    const-string v7, ", result : "

    aget v8, p2, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 546
    aget v4, p2, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 548
    const/4 v0, 0x0

    .line 549
    aget-object v4, p1, v2

    invoke-virtual {v1, v4}, Lcom/oneplus/gallery2/GalleryApplication;->notifyPermissionDenied(Ljava/lang/String;)V

    .line 543
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 552
    :cond_2
    aget-object v4, p1, v2

    invoke-virtual {v1, v4}, Lcom/oneplus/gallery2/GalleryApplication;->notifyPermissionGranted(Ljava/lang/String;)V

    goto :goto_2

    .line 556
    :cond_3
    if-nez v0, :cond_4

    .line 558
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "onInitialPermissionsRequestCompleted() - Some permissions are not granted"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->finish()V

    goto :goto_0

    .line 564
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 573
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 580
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 581
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GalleryActivity.InstanceState"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;

    .line 582
    .local v0, "stateFragment":Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->extras:Ljava/util/Map;

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/GalleryActivity;->onRestoreInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 583
    return-void

    .line 582
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 599
    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onResume()V

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsInstanceStateSaved:Z

    .line 606
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->updateStatusBarStyle()V

    .line 607
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GalleryActivity.InstanceState"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;

    .line 616
    .local v0, "stateFragment":Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;
    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;

    .end local v0    # "stateFragment":Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;
    invoke-direct {v0}, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;-><init>()V

    .line 619
    .restart local v0    # "stateFragment":Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "GalleryActivity.InstanceState"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 623
    :cond_0
    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->STATE_KEY_PID:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    if-eqz v1, :cond_1

    .line 627
    const-string v1, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/Gallery;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    iput-object v1, v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->activityResultHandles:Landroid/util/SparseArray;

    .line 631
    iget-object v1, v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->extras:Ljava/util/Map;

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/GalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 634
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 637
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsInstanceStateSaved:Z

    .line 638
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 655
    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onStart()V

    .line 658
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 662
    :goto_0
    return-void

    .line 661
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StopThreadMonitorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onStatusBarVisibilityChanged(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 670
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 678
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StopThreadMonitorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 681
    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onStop()V

    .line 682
    return-void
.end method

.method public setStatusBarStyle(Z)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "isLightStyle"    # Z

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->verifyAccess()V

    .line 703
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;-><init>(Lcom/oneplus/gallery2/GalleryActivity;Z)V

    .line 704
    .local v0, "handle":Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->updateStatusBarStyle()V

    .line 706
    return-object v0
.end method

.method protected setSystemUiVisibility(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 713
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    .line 714
    .local v0, "gallery":Lcom/oneplus/gallery2/Gallery;
    if-nez v0, :cond_0

    .line 716
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "setSystemUiVisibility() - No gallery"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "setSystemUiVisibility() - Visible: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    if-eqz p1, :cond_1

    .line 725
    invoke-virtual {v0, v5}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;

    .line 726
    invoke-virtual {v0, v5}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 730
    :cond_1
    invoke-virtual {v0, v4}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;

    .line 731
    invoke-virtual {v0, v4}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    .prologue
    const/4 v3, 0x0

    .line 745
    if-nez p1, :cond_0

    .line 747
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "startActivityForResult() - No intent"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 781
    :goto_0
    return-object v1

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->verifyAccess()V

    .line 755
    const/16 v2, 0x40

    .line 756
    .local v2, "requestCode":I
    :goto_1
    if-lez v2, :cond_1

    .line 758
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 761
    :cond_1
    if-gtz v2, :cond_3

    .line 763
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "startActivityForResult() - No available request code"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 764
    goto :goto_0

    .line 756
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 768
    :cond_3
    new-instance v1, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;

    invoke-direct {v1, p2}, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;-><init>(Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;)V

    .line 769
    .local v1, "handle":Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 774
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 777
    :catch_0
    move-exception v0

    .line 779
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "startActivityForResult() - Fail to start activity"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 780
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    move-object v1, v3

    .line 781
    goto :goto_0
.end method
