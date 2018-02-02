.class public abstract Lcom/oneplus/gallery2/Gallery;
.super Lcom/oneplus/base/component/ComponentOwnerObject;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/Gallery$ActivityHandle;,
        Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;,
        Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;,
        Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;,
        Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;,
        Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;,
        Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;,
        Lcom/oneplus/gallery2/Gallery$SystemUiVisibilityHandle;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$gallery$media$MediaType:[I = null

.field private static final DURATION_CHECK_INSTANCES_DELAY:J = 0xbb8L

.field public static final FLAG_ALWAYS_SHOW_UI:I = 0x2

.field public static final FLAG_CANCELABLE:I = 0x1

.field public static final FLAG_NO_CONFIRMATION_UI:I = 0x4

.field public static final PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery2/GalleryActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_TARGET_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/media/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_CheckInstancesRunnable:Ljava/lang/Runnable;

.field private static final m_Galleries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/gallery2/Gallery;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_TrackingInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gallery2/Gallery;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

.field private m_ActivityDecorView:Landroid/view/View;

.field private final m_ActivityMultiWindowModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AttachedActivityHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/Gallery$ActivityHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_GalleryDialogHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_HasNavigationBar:Z

.field private final m_Id:Ljava/lang/String;

.field private final m_NavBarVisibilityHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_StatusBarColorHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_StatusBarVisibilityHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;


# direct methods
.method static synthetic $SWITCH_TABLE$com$oneplus$gallery$media$MediaType()[I
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->$SWITCH_TABLE$com$oneplus$gallery$media$MediaType:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/gallery/media/MediaType;->values()[Lcom/oneplus/gallery/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/gallery2/Gallery;->$SWITCH_TABLE$com$oneplus$gallery$media$MediaType:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 47
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Activity"

    const-class v2, Lcom/oneplus/gallery2/GalleryActivity;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    .line 51
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CurrentMediaSet"

    const-class v2, Lcom/oneplus/gallery2/media/MediaSet;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    .line 55
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HasDialog"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    .line 59
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsDeletingMedia"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 63
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsNavigationBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 67
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSharingMedia"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 71
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsStatusBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 75
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "TargetMediaType"

    const-class v2, Lcom/oneplus/gallery/media/MediaType;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_TARGET_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    .line 236
    new-instance v0, Lcom/oneplus/gallery2/Gallery$4;

    invoke-direct {v0}, Lcom/oneplus/gallery2/Gallery$4;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    .line 243
    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 349
    invoke-direct {p0, v6}, Lcom/oneplus/base/component/ComponentOwnerObject;-><init>(Z)V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    .line 201
    new-instance v0, Lcom/oneplus/gallery2/Gallery$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/Gallery$1;-><init>(Lcom/oneplus/gallery2/Gallery;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 213
    new-instance v0, Lcom/oneplus/gallery2/Gallery$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/Gallery$2;-><init>(Lcom/oneplus/gallery2/Gallery;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 225
    new-instance v0, Lcom/oneplus/gallery2/Gallery$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/Gallery$3;-><init>(Lcom/oneplus/gallery2/Gallery;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityMultiWindowModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 352
    invoke-static {p0}, Lcom/oneplus/gallery2/Gallery;->trackInstance(Lcom/oneplus/gallery2/Gallery;)V

    .line 355
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 359
    new-array v1, v0, [C

    .line 362
    :cond_0
    array-length v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 364
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4042000000000000L    # 36.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xa

    .line 365
    if-lt v2, v3, :cond_2

    .line 368
    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_0

    .line 356
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can only create in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_2
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_0

    .line 370
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 371
    sget-object v2, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Id:Ljava/lang/String;

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Gallery("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    .line 375
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Create, total instance count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v6}, Lcom/oneplus/gallery2/Gallery;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 383
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/Gallery;)Lcom/oneplus/gallery2/GalleryActivity;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/Gallery;I)V
    .locals 0

    .prologue
    .line 753
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->onSystemUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/Gallery;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/Gallery;)V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility()V

    return-void
.end method

.method static synthetic access$4(J)V
    .locals 0

    .prologue
    .line 464
    invoke-static {p0, p1}, Lcom/oneplus/gallery2/Gallery;->checkInstances(J)V

    return-void
.end method

.method static synthetic access$5(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;)V
    .locals 0

    .prologue
    .line 832
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->restoreStatusBarVisibility(Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;)V

    return-void
.end method

.method static synthetic access$6(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;)V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->restoreNavigationBarVisibility(Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;)V

    return-void
.end method

.method static synthetic access$7(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$ActivityHandle;)V
    .locals 0

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->detachActivity(Lcom/oneplus/gallery2/Gallery$ActivityHandle;)V

    return-void
.end method

.method static synthetic access$8(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;)V
    .locals 0

    .prologue
    .line 820
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->restoreStatusBarColor(Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;)V

    return-void
.end method

.method static synthetic access$9(Lcom/oneplus/gallery2/Gallery;)Ljava/util/List;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    return-object v0
.end method

.method private attachToActivity(Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "attachToActivity() - activity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    if-eqz p1, :cond_0

    .line 442
    iput-object p1, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 445
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 446
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityMultiWindowModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 449
    invoke-virtual {p1}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    .line 456
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 459
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->updateStatusBarColor()V

    .line 460
    return-void

    .line 439
    :cond_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "attachToActivity() - No window"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private static checkInstances(J)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 468
    sget-object v2, Lcom/oneplus/gallery2/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    .line 469
    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_3

    .line 471
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 473
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_1

    .line 471
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 475
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Gallery"

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkInstances() - Alive instances : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void

    .line 482
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 483
    return-void
.end method

.method private checkSystemNavigationBarState(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 490
    if-eqz p1, :cond_0

    .line 496
    instance-of v0, p1, Lcom/oneplus/base/BaseActivity;

    if-nez v0, :cond_1

    move v0, v1

    .line 500
    :goto_0
    if-nez v0, :cond_2

    .line 507
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 508
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 509
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 510
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 511
    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 514
    new-instance v0, Lcom/oneplus/base/ScreenSize;

    invoke-direct {v0, p1, v2}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    .line 515
    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 518
    iget v0, v4, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-gt v0, v3, :cond_5

    :goto_1
    iput-boolean v1, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    .line 520
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkSystemNavigationBarState() - Has navigation bar : "

    iget-boolean v2, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkSystemNavigationBarState() - No activity to check"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void

    :cond_1
    move-object v0, p1

    .line 498
    check-cast v0, Lcom/oneplus/base/BaseActivity;

    sget-object v3, Lcom/oneplus/base/BaseActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 502
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    goto :goto_2

    .line 516
    :cond_3
    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v3, v4, v3

    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v0

    if-gt v3, v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    .line 518
    goto :goto_1
.end method

.method private detachActivity(Lcom/oneplus/gallery2/Gallery$ActivityHandle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 605
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 606
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    .line 607
    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 608
    :cond_0
    return-void

    .line 607
    :cond_1
    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p1, Lcom/oneplus/gallery2/Gallery$ActivityHandle;->activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 612
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->detachFromActivity()V

    .line 615
    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$ActivityHandle;

    iget-object v0, v0, Lcom/oneplus/gallery2/Gallery$ActivityHandle;->activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 616
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/Gallery;->attachToActivity(Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 619
    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v1, v0}, Lcom/oneplus/gallery2/Gallery;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/Gallery;->onActivityChanged(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 623
    if-nez v0, :cond_3

    .line 628
    :goto_0
    return-void

    .line 625
    :cond_3
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    .line 626
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1
.end method

.method private detachFromActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 634
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "detachFromActivity() - m_Activity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 642
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityMultiWindowModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 645
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 652
    :goto_0
    iput-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 653
    return-void

    .line 638
    :cond_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 648
    iput-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    goto :goto_0
.end method

.method public static fromId(Ljava/lang/String;)Lcom/oneplus/gallery2/Gallery;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 663
    if-nez p0, :cond_0

    .line 665
    return-object v0

    .line 664
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery;

    return-object v0
.end method

.method private onSystemUiVisibilityChanged(I)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 756
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    move v1, v2

    .line 757
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    if-nez v0, :cond_2

    :cond_0
    move v4, v2

    .line 761
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move-object v5, v6

    :goto_2
    if-ltz v7, :cond_5

    .line 763
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    .line 764
    iget-boolean v8, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    if-ne v8, v1, :cond_3

    move-object v0, v5

    .line 761
    :goto_3
    add-int/lit8 v5, v7, -0x1

    move v7, v5

    move-object v5, v0

    goto :goto_2

    :cond_1
    move v1, v3

    .line 756
    goto :goto_0

    .line 757
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_1

    .line 766
    :cond_3
    iget v8, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    .line 770
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->drop()V

    .line 771
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v0, v5

    goto :goto_3

    .line 767
    :cond_4
    iget-boolean v0, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 778
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_4
    if-ltz v7, :cond_8

    .line 780
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    .line 781
    iget-boolean v8, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    if-ne v8, v4, :cond_6

    move-object v0, v6

    .line 778
    :goto_5
    add-int/lit8 v6, v7, -0x1

    move v7, v6

    move-object v6, v0

    goto :goto_4

    .line 783
    :cond_6
    iget v8, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    .line 787
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->drop()V

    .line 788
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v0, v6

    goto :goto_5

    .line 784
    :cond_7
    iget-boolean v0, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 793
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onSystemUiVisibilityChanged() - Status bar: "

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    const-string/jumbo v2, ", nav bar:"

    aput-object v2, v8, v3

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", show status bar: "

    aput-object v3, v8, v2

    const/4 v2, 0x4

    aput-object v5, v8, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ", show nav bar: "

    aput-object v3, v8, v2

    const/4 v2, 0x6

    aput-object v6, v8, v2

    invoke-static {v0, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    if-nez v6, :cond_e

    .line 797
    :cond_9
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 798
    :cond_a
    :goto_6
    if-nez v5, :cond_f

    .line 799
    :cond_b
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 800
    :cond_c
    :goto_7
    if-eqz v5, :cond_10

    .line 801
    :cond_d
    invoke-direct {p0, v5, v6}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 802
    :goto_8
    return-void

    .line 796
    :cond_e
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v4, :cond_9

    goto :goto_6

    .line 798
    :cond_f
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v1, :cond_b

    goto :goto_7

    .line 800
    :cond_10
    if-nez v6, :cond_d

    goto :goto_8
.end method

.method private restoreNavigationBarVisibility(Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 808
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 809
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    iget-boolean v0, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0

    .line 812
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0
.end method

.method private restoreStatusBarColor(Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 822
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 823
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 826
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 828
    :cond_0
    :goto_1
    return-void

    .line 824
    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 825
    goto :goto_0

    .line 826
    :cond_3
    if-eqz v0, :cond_0

    .line 827
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->updateStatusBarColor()V

    goto :goto_1
.end method

.method private restoreStatusBarVisibility(Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 834
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 835
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 840
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    iget-boolean v0, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0

    .line 838
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0
.end method

.method private setSystemUiVisibility()V
    .locals 3

    .prologue
    .line 943
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    iget-boolean v0, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    move v1, v0

    .line 950
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    iget-boolean v0, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    .line 956
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 957
    return-void

    .line 944
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 951
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    goto :goto_1
.end method

.method private setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 961
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 966
    iget-boolean v0, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    if-eqz v0, :cond_1

    .line 970
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 971
    if-nez p1, :cond_2

    .line 978
    :goto_1
    if-nez p2, :cond_4

    .line 985
    :goto_2
    or-int/lit16 v0, v0, 0xe00

    .line 988
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 991
    if-nez p1, :cond_6

    .line 993
    :goto_3
    if-nez p2, :cond_7

    .line 997
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSystemUiVisibility() - No window"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    return v2

    .line 967
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    .line 973
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 976
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 974
    :cond_3
    and-int/lit8 v0, v0, -0x5

    goto :goto_1

    .line 980
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 983
    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 981
    :cond_5
    and-int/lit8 v0, v0, -0x3

    goto :goto_2

    .line 992
    :cond_6
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 994
    :cond_7
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private static trackInstance(Lcom/oneplus/gallery2/Gallery;)V
    .locals 2

    .prologue
    .line 1130
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    .line 1131
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/Gallery;->checkInstances(J)V

    .line 1132
    return-void
.end method

.method private updateStatusBarColor()V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    if-nez v0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1141
    if-eqz v1, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;

    iget v0, v0, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;->color:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public attachActivity(Lcom/oneplus/gallery2/GalleryActivity;)Lcom/oneplus/base/Handle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 395
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    if-eqz p1, :cond_2

    .line 407
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 408
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->detachFromActivity()V

    .line 411
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->attachToActivity(Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 414
    new-instance v3, Lcom/oneplus/gallery2/Gallery$ActivityHandle;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/gallery2/Gallery$ActivityHandle;-><init>(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 415
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery2/Gallery;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery2/Gallery;->onActivityChanged(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 422
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    .line 425
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 428
    return-object v3

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "attachActivity() - Instance has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-object v3

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "attachActivity() - No activity"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-object v3

    .line 425
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery2/Gallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z

    move-result v0

    return v0
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 550
    new-array v0, v0, [Lcom/oneplus/gallery2/media/Media;

    aput-object p2, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2, p3}, Lcom/oneplus/gallery2/Gallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;ILcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z

    move-result v0

    return v0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteMedia() - No media to delete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return v2
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 562
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/oneplus/gallery2/Gallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;ILcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z

    move-result v0

    return v0
.end method

.method public abstract deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;ILcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;I",
            "Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;",
            ")Z"
        }
    .end annotation
.end method

.method public deleteMediaSet(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 588
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/Gallery;->deleteMediaSet(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)Z

    move-result v0

    return v0
.end method

.method public abstract deleteMediaSet(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;",
            "Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;",
            ")Z"
        }
    .end annotation
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
    .line 674
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 676
    invoke-super {p0, p1}, Lcom/oneplus/base/component/ComponentOwnerObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method final notifyShowDialog()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 697
    new-instance v0, Lcom/oneplus/gallery2/Gallery$5;

    const-string/jumbo v1, "Gallery Dialog Handle"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/Gallery$5;-><init>(Lcom/oneplus/gallery2/Gallery;Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 712
    return-object v0
.end method

.method protected onActivityChanged(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 0

    .prologue
    .line 722
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 730
    invoke-super {p0}, Lcom/oneplus/base/component/ComponentOwnerObject;->onRelease()V

    .line 733
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 738
    :goto_0
    iput-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 739
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 740
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 743
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Release, total instance count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    .line 748
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/Gallery;->checkInstances(J)V

    .line 749
    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 736
    iput-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    goto :goto_0
.end method

.method public setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 852
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 868
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 870
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    .line 871
    iget-boolean v2, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    if-ne v2, p1, :cond_1

    .line 868
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 871
    :cond_1
    iget v2, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 873
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->drop()V

    .line 874
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 877
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;-><init>(Lcom/oneplus/gallery2/Gallery;ZI)V

    .line 878
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 880
    return-object v0
.end method

.method public setStatusBarColor(I)Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 892
    new-instance v0, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;-><init>(Lcom/oneplus/gallery2/Gallery;I)V

    .line 893
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 894
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->updateStatusBarColor()V

    .line 895
    return-object v0
.end method

.method public setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 906
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 922
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 924
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    .line 925
    iget-boolean v2, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    if-ne v2, p1, :cond_1

    .line 922
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 925
    :cond_1
    iget v2, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 927
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->drop()V

    .line 928
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 931
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;-><init>(Lcom/oneplus/gallery2/Gallery;ZI)V

    .line 932
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 934
    return-object v0
.end method

.method public shareMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1008
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1013
    new-array v0, v0, [Lcom/oneplus/gallery2/media/Media;

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z

    move-result v0

    return v0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shareMedia() - No media to share"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    return v2
.end method

.method public shareMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1023
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1029
    new-array v0, v0, [Lcom/oneplus/gallery2/media/Media;

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z

    move-result v0

    return v0

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shareMedia() - No media to share"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    return v2
.end method

.method public abstract shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;",
            "Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;",
            ")Z"
        }
    .end annotation
.end method

.method public startCamera()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/Gallery;->startCamera(Lcom/oneplus/gallery/media/MediaType;)Z

    move-result v0

    return v0
.end method

.method public startCamera(Lcom/oneplus/gallery/media/MediaType;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1059
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 1061
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCamera() - Media type : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1064
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 1065
    if-eqz v0, :cond_0

    .line 1069
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1070
    if-nez p1, :cond_1

    const-string/jumbo v2, "android.intent.action.MAIN"

    .line 1086
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    :goto_1
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 1091
    :goto_2
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.oneplus.camera"

    const-string/jumbo v4, "com.oneplus.camera.OPCameraActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1094
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    return v7

    .line 1066
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    goto :goto_0

    .line 1072
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/Gallery;->$SWITCH_TABLE$com$oneplus$gallery$media$MediaType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1081
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startCamera() - Unknown media type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    return v5

    :pswitch_0
    const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 1075
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v2, "android.media.action.VIDEO_CAMERA"

    .line 1078
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const/high16 v2, 0x10000000

    .line 1088
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1095
    :catch_0
    move-exception v2

    .line 1099
    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startCamera() - No OnePlus Camera on this device"

    invoke-static {v3, v4, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v2, "android.intent.action.MAIN"

    .line 1103
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1105
    :goto_3
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1108
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1109
    return v7

    :cond_3
    const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 1104
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1109
    :catch_1
    move-exception v0

    .line 1113
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startCamera() - Fail to start camera"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1114
    return v5

    .line 1072
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Gallery("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
