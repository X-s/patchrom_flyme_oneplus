.class public abstract Lcom/oneplus/gallery2/GalleryActivity;
.super Lcom/oneplus/base/ComponentOwnerActivity;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;,
        Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;,
        Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;,
        Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$base$BaseActivity$State:[I = null

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

.field private m_ProcessingDialog:Lcom/oneplus/gallery2/ui/ProcessingDialog;

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
.method static synthetic $SWITCH_TABLE$com$oneplus$base$BaseActivity$State()[I
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->$SWITCH_TABLE$com$oneplus$base$BaseActivity$State:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->$SWITCH_TABLE$com$oneplus$base$BaseActivity$State:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 49
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ScreenSize"

    const-class v2, Lcom/oneplus/base/ScreenSize;

    const-class v3, Lcom/oneplus/gallery2/GalleryActivity;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 63
    aput-object v2, v0, v1

    .line 61
    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/oneplus/gallery2/GalleryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "PID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->STATE_KEY_PID:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    .line 106
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$3;

    invoke-direct {v0}, Lcom/oneplus/gallery2/GalleryActivity$3;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/GalleryActivity;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/oneplus/base/ComponentOwnerActivity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    .line 87
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GalleryActivity$1;-><init>(Lcom/oneplus/gallery2/GalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 95
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GalleryActivity$2;-><init>(Lcom/oneplus/gallery2/GalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 114
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GalleryActivity$4;-><init>(Lcom/oneplus/gallery2/GalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StopThreadMonitorRunnable:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method static synthetic access$0(J)V
    .locals 0

    .prologue
    .line 219
    invoke-static {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->checkInstances(J)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/GalleryActivity;)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/base/Handle;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;)V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->restoreStatusBarStyle(Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;)V

    return-void
.end method

.method private checkBacklight()V
    .locals 3

    .prologue
    const/16 v2, 0xe6

    const-string/jumbo v0, "ro.boot.project_name"

    .line 203
    invoke-static {v0}, Lcom/oneplus/base/Device;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkBacklight() - device not supported"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    :cond_1
    const-string/jumbo v1, "15801"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getCurrentBrightness()I

    move-result v0

    .line 211
    if-gt v0, v2, :cond_2

    .line 213
    if-gtz v0, :cond_3

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/GalleryActivity;->updateBacklightBrightness(I)V

    goto :goto_0

    .line 214
    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/GalleryActivity;->updateBacklightBrightness(I)V

    goto :goto_0
.end method

.method private static checkInstances(J)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 223
    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    .line 224
    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_3

    .line 226
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 228
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_1

    .line 226
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 230
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "GalleryActivity"

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkInstances() - Alive instances : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 237
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    return-void
.end method

.method private getCurrentBrightness()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 291
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string/jumbo v4, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getCurrentBrightness() - brightnessValue : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    goto :goto_0

    .line 300
    :cond_0
    if-nez v3, :cond_1

    .line 305
    :goto_1
    return v2

    .line 300
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    if-ne v1, v0, :cond_4

    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 303
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCurrentBrightness() - failed to getBrightnessValue"

    invoke-static {v1, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 300
    :catchall_1
    move-exception v0

    if-nez v3, :cond_2

    :goto_4
    :try_start_4
    throw v0

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :cond_3
    move-object v1, v0

    goto :goto_3

    :cond_4
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3
.end method

.method private restoreStatusBarStyle(Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->verifyAccess()V

    .line 710
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 713
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 715
    :cond_0
    :goto_1
    return-void

    .line 711
    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 712
    goto :goto_0

    .line 713
    :cond_3
    if-eqz v0, :cond_0

    .line 714
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->updateStatusBarStyle()V

    goto :goto_1
.end method

.method private static trackInstance(Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 2

    .prologue
    .line 820
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    .line 821
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GalleryActivity;->checkInstances(J)V

    .line 822
    return-void
.end method

.method private updateBacklightBrightness(I)V
    .locals 3

    .prologue
    .line 828
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateBacklightBrightness() - Update brightness : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    int-to-float v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 832
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 833
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 834
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 835
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 836
    return-void
.end method

.method private updateScreenSize()V
    .locals 3

    .prologue
    .line 842
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    .line 843
    new-instance v1, Lcom/oneplus/base/ScreenSize;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    .line 844
    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/gallery2/GalleryActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 845
    return-void
.end method

.method private updateStatusBarStyle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 850
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 851
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 870
    or-int/lit16 v0, v1, 0x2000

    .line 873
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 874
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 875
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;

    iget-boolean v0, v0, Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;->isLightStyle:Z

    if-eqz v0, :cond_1

    .line 859
    or-int/lit16 v0, v1, 0x2000

    goto :goto_0

    .line 855
    :cond_1
    and-int/lit16 v0, v1, -0x2001

    goto :goto_0

    .line 866
    :cond_2
    and-int/lit16 v0, v1, -0x2001

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 247
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ProcessingDialog:Lcom/oneplus/gallery2/ui/ProcessingDialog;

    if-nez v0, :cond_3

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    if-nez v0, :cond_4

    .line 261
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x3

    .line 249
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 265
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchTouchEvent() - Error when dispatch touch event"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    return v3

    .line 251
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ProcessingDialog:Lcom/oneplus/gallery2/ui/ProcessingDialog;

    sget-object v1, Lcom/oneplus/gallery2/ui/ProcessingDialog;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/ui/ProcessingDialog;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchTouchEvent() - Processing dialog is visible, disable touch"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return v2

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchTouchEvent() - Dialog is visible, disable touch"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    return v2
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
    .line 276
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 278
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_1

    .line 280
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_2

    .line 282
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    return-object v0

    .line 281
    :cond_2
    sget-object v0, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    return-object v0
.end method

.method public final getGallery()Lcom/oneplus/gallery2/Gallery;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    return-object v0
.end method

.method protected getLaunchType()Lcom/oneplus/gallery2/ActivityLaunchType;
    .locals 1

    .prologue
    .line 325
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
    const/4 v0, 0x0

    .line 334
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->getRequestPermissions(Ljava/util/List;)V

    .line 337
    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 339
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getRequestPermissions() - Add request permission: "

    invoke-static {v4, v5, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    :cond_1
    return-void
.end method

.method public goBack()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 363
    iget-boolean v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;

    .line 372
    if-nez v0, :cond_0

    .line 379
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/base/ComponentOwnerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 380
    return-void

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 375
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    iget-object v1, v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    invoke-interface {v1, v0, p2, p3}, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;->onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->goBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 400
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->updateScreenSize()V

    .line 401
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 409
    invoke-static {p0}, Lcom/oneplus/gallery2/GalleryActivity;->trackInstance(Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 413
    if-nez p1, :cond_2

    move-object v0, v1

    .line 430
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 431
    if-eqz v0, :cond_4

    .line 434
    :goto_1
    invoke-static {v0}, Lcom/oneplus/gallery2/Gallery;->fromId(Ljava/lang/String;)Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    .line 435
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    if-eqz v0, :cond_6

    .line 443
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onCreate() - Use shared Gallery : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/Gallery;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    if-nez v2, :cond_7

    .line 455
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    invoke-virtual {v0, p0}, Lcom/oneplus/gallery2/Gallery;->attachActivity(Lcom/oneplus/gallery2/GalleryActivity;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    .line 456
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 462
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    sget-object v2, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 463
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    sget-object v2, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 466
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    const-class v2, Lcom/oneplus/gallery2/ui/ProcessingDialog;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/Gallery;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/ui/ProcessingDialog;

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ProcessingDialog:Lcom/oneplus/gallery2/ui/ProcessingDialog;

    .line 469
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->updateScreenSize()V

    .line 472
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 474
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "GalleryActivity.InstanceState"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;

    .line 475
    if-nez v0, :cond_9

    .line 482
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate() - new sparse array"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    .line 487
    :goto_3
    if-nez v0, :cond_a

    :goto_4
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 488
    return-void

    .line 416
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->STATE_KEY_PID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 417
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_3

    const-string/jumbo v0, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    .line 424
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate() - activity is recreate, sharedGalleryId: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCreate() - Different Pid, clear saved instance state"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-object p1, v1

    .line 421
    goto/16 :goto_0

    .line 432
    :cond_4
    if-nez v2, :cond_5

    move-object v0, v1

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v0, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 437
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCreate() - Create new Gallery"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryApplication;->createGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    .line 439
    iput-boolean v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    .line 447
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    .line 450
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate() - m_IsSharedGallery:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 458
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate() - Fail to attach to Gallery"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->finish()V

    .line 460
    return-void

    .line 475
    :cond_9
    iget-object v2, v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->activityResultHandles:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 477
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate() - Use existent stateFragment activityResultHandles."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v2, v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->activityResultHandles:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    goto/16 :goto_3

    .line 487
    :cond_a
    iget-object v1, v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->extras:Ljava/util/Map;

    goto/16 :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 2
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
    .line 499
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    if-eqz v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getLaunchType()Lcom/oneplus/gallery2/ActivityLaunchType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/GalleryApplication;->notifyActivityLaunched(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/ActivityLaunchType;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 509
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 510
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 511
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    .line 514
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsInstanceStateSaved:Z

    if-eqz v0, :cond_2

    .line 521
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsInstanceStateSaved:Z

    if-eqz v0, :cond_3

    .line 537
    :cond_1
    iput-object v4, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    .line 540
    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onDestroy()V

    const-wide/16 v0, 0xbb8

    .line 543
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GalleryActivity;->checkInstances(J)V

    .line 544
    return-void

    .line 514
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsSharedGallery:Z

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy() - Release Gallery"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery;->release()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x40

    move v1, v0

    .line 524
    :goto_1
    if-lez v1, :cond_1

    .line 526
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;

    .line 527
    if-nez v0, :cond_5

    .line 524
    :cond_4
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 529
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 530
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    if-eqz v2, :cond_4

    .line 531
    iget-object v2, v0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    invoke-interface {v2, v0, v3, v4}, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;->onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V

    goto :goto_2
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 552
    if-nez p1, :cond_1

    .line 553
    :cond_0
    return v1

    .line 552
    :cond_1
    if-eqz p2, :cond_0

    .line 557
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v4

    .line 558
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v3

    :goto_0
    if-ltz v2, :cond_3

    .line 560
    iget-object v5, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onInitialPermissionsRequestCompleted() - Permission : "

    aget-object v7, p1, v2

    const-string/jumbo v8, ", result : "

    aget v9, p2, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 561
    aget v5, p2, v2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 567
    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/GalleryApplication;->notifyPermissionGranted(Ljava/lang/String;)V

    .line 558
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 564
    :cond_2
    aget-object v0, p1, v2

    invoke-virtual {v4, v0}, Lcom/oneplus/gallery2/GalleryApplication;->notifyPermissionDenied(Ljava/lang/String;)V

    move v0, v1

    .line 565
    goto :goto_1

    .line 571
    :cond_3
    if-eqz v0, :cond_4

    .line 579
    return v3

    .line 573
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onInitialPermissionsRequestCompleted() - Some permissions are not granted"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->finish()V

    .line 575
    return v1
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 0

    .prologue
    .line 588
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 595
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 596
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "GalleryActivity.InstanceState"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;

    .line 597
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/GalleryActivity;->onRestoreInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 598
    return-void

    .line 597
    :cond_0
    iget-object v0, v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->extras:Ljava/util/Map;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 0
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
    .line 607
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 614
    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onResume()V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsInstanceStateSaved:Z

    .line 621
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->updateStatusBarStyle()V

    .line 622
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 632
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "GalleryActivity.InstanceState"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;

    .line 633
    if-eqz v0, :cond_0

    .line 640
    :goto_0
    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->STATE_KEY_PID:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 643
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    if-nez v1, :cond_1

    .line 647
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    iput-object v1, v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->activityResultHandles:Landroid/util/SparseArray;

    .line 648
    iget-object v0, v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;->extras:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/GalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 651
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_IsInstanceStateSaved:Z

    .line 660
    :goto_2
    return-void

    .line 635
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;

    invoke-direct {v0}, Lcom/oneplus/gallery2/GalleryActivity$InstanceStateFragment;-><init>()V

    .line 636
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "GalleryActivity.InstanceState"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    .line 658
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSaveInstanceState() - ex:"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    :try_start_1
    const-string/jumbo v1, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    .line 644
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/Gallery;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 0
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
    .line 669
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 677
    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onStart()V

    .line 680
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StopThreadMonitorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 684
    :goto_0
    return-void

    .line 681
    :cond_0
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method protected onStatusBarVisibilityChanged(Z)V
    .locals 0

    .prologue
    .line 692
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 700
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StopThreadMonitorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 703
    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onStop()V

    .line 704
    return-void
.end method

.method public setStatusBarStyle(Z)Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->verifyAccess()V

    .line 725
    new-instance v0, Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/GalleryActivity$StatusBarStyleHandle;-><init>(Lcom/oneplus/gallery2/GalleryActivity;Z)V

    .line 726
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;->updateStatusBarStyle()V

    .line 728
    return-object v0
.end method

.method protected setSystemUiVisibility(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 735
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    .line 736
    if-eqz v0, :cond_0

    .line 742
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSystemUiVisibility() - Visible: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    if-nez p1, :cond_1

    .line 752
    invoke-virtual {v0, v4}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;

    .line 753
    invoke-virtual {v0, v4}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;

    .line 755
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSystemUiVisibility() - No gallery"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void

    .line 747
    :cond_1
    invoke-virtual {v0, v5}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;

    .line 748
    invoke-virtual {v0, v5}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 767
    if-eqz p1, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GalleryActivity;->verifyAccess()V

    .line 775
    sget-object v0, Lcom/oneplus/gallery2/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    .line 776
    invoke-static {}, Lcom/oneplus/gallery2/GalleryActivity;->$SWITCH_TABLE$com$oneplus$base$BaseActivity$State()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 782
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startActivityForResult() - Invalid activity state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-object v4

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startActivityForResult() - No intent"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    return-object v4

    :pswitch_0
    const/16 v0, 0x40

    .line 788
    :goto_0
    if-lez v0, :cond_1

    .line 790
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 788
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 793
    :cond_1
    if-lez v0, :cond_2

    .line 800
    new-instance v1, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;

    invoke-direct {v1, p2}, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;-><init>(Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;)V

    .line 801
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 806
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    return-object v1

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startActivityForResult() - No available request code"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    return-object v4

    .line 807
    :catch_0
    move-exception v1

    .line 811
    iget-object v2, p0, Lcom/oneplus/gallery2/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startActivityForResult() - Fail to start activity"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 812
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 813
    return-object v4

    .line 776
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
