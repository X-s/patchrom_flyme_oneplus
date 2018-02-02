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

.field public static final PROP_ACTIVITY_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
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

.field private final m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
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
    .line 43
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
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 48
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Activity"

    const-class v2, Lcom/oneplus/gallery2/GalleryActivity;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    .line 52
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ActivityState"

    const-class v2, Lcom/oneplus/base/BaseActivity$State;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY_STATE:Lcom/oneplus/base/PropertyKey;

    .line 56
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CurrentMediaSet"

    const-class v2, Lcom/oneplus/gallery2/media/MediaSet;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    .line 60
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HasDialog"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    .line 64
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsDeletingMedia"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 68
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsNavigationBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 72
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSharingMedia"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 76
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsStatusBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 80
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "TargetMediaType"

    const-class v2, Lcom/oneplus/gallery/media/MediaType;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_TARGET_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    .line 249
    new-instance v0, Lcom/oneplus/gallery2/Gallery$5;

    invoke-direct {v0}, Lcom/oneplus/gallery2/Gallery$5;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    .line 256
    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 362
    invoke-direct {p0, v6}, Lcom/oneplus/base/component/ComponentOwnerObject;-><init>(Z)V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    .line 206
    new-instance v0, Lcom/oneplus/gallery2/Gallery$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/Gallery$1;-><init>(Lcom/oneplus/gallery2/Gallery;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 218
    new-instance v0, Lcom/oneplus/gallery2/Gallery$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/Gallery$2;-><init>(Lcom/oneplus/gallery2/Gallery;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 230
    new-instance v0, Lcom/oneplus/gallery2/Gallery$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/Gallery$3;-><init>(Lcom/oneplus/gallery2/Gallery;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityMultiWindowModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 238
    new-instance v0, Lcom/oneplus/gallery2/Gallery$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/Gallery$4;-><init>(Lcom/oneplus/gallery2/Gallery;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 365
    invoke-static {p0}, Lcom/oneplus/gallery2/Gallery;->trackInstance(Lcom/oneplus/gallery2/Gallery;)V

    .line 368
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 372
    new-array v1, v0, [C

    .line 375
    :cond_0
    array-length v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 377
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4042000000000000L    # 36.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xa

    .line 378
    if-lt v2, v3, :cond_2

    .line 381
    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_0

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can only create in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_2
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_0

    .line 383
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 384
    sget-object v2, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Id:Ljava/lang/String;

    .line 387
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

    .line 388
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
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

    .line 395
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v6}, Lcom/oneplus/gallery2/Gallery;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 396
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/Gallery;)Lcom/oneplus/gallery2/GalleryActivity;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/Gallery;I)V
    .locals 0

    .prologue
    .line 779
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->onSystemUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/oneplus/gallery2/Gallery;)Ljava/util/List;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/Gallery;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/Gallery;)V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility()V

    return-void
.end method

.method static synthetic access$4(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(J)V
    .locals 0

    .prologue
    .line 489
    invoke-static {p0, p1}, Lcom/oneplus/gallery2/Gallery;->checkInstances(J)V

    return-void
.end method

.method static synthetic access$6(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;)V
    .locals 0

    .prologue
    .line 858
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->restoreStatusBarVisibility(Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;)V

    return-void
.end method

.method static synthetic access$7(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;)V
    .locals 0

    .prologue
    .line 832
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->restoreNavigationBarVisibility(Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;)V

    return-void
.end method

.method static synthetic access$8(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$ActivityHandle;)V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->detachActivity(Lcom/oneplus/gallery2/Gallery$ActivityHandle;)V

    return-void
.end method

.method static synthetic access$9(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;)V
    .locals 0

    .prologue
    .line 846
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->restoreStatusBarColor(Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;)V

    return-void
.end method

.method private attachToActivity(Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "attachToActivity() - activity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    if-eqz p1, :cond_0

    .line 463
    iput-object p1, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 466
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 467
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityMultiWindowModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 468
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 471
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 474
    invoke-virtual {p1}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    .line 481
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 484
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->updateStatusBarColor()V

    .line 485
    return-void

    .line 460
    :cond_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "attachToActivity() - No window"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method private static checkInstances(J)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 492
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 493
    sget-object v2, Lcom/oneplus/gallery2/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    .line 494
    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_3

    .line 496
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 498
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_1

    .line 496
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 500
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Gallery"

    .line 502
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

    .line 503
    return-void

    .line 507
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    return-void
.end method

.method private checkSystemNavigationBarState(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 515
    if-eqz p1, :cond_0

    .line 521
    instance-of v0, p1, Lcom/oneplus/base/BaseActivity;

    if-nez v0, :cond_1

    move v0, v1

    .line 525
    :goto_0
    if-nez v0, :cond_2

    .line 532
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 533
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 534
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 535
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 536
    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 539
    new-instance v0, Lcom/oneplus/base/ScreenSize;

    invoke-direct {v0, p1, v2}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    .line 540
    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 543
    iget v0, v4, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-gt v0, v3, :cond_5

    :goto_1
    iput-boolean v1, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    .line 545
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkSystemNavigationBarState() - Has navigation bar : "

    iget-boolean v2, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkSystemNavigationBarState() - No activity to check"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void

    :cond_1
    move-object v0, p1

    .line 523
    check-cast v0, Lcom/oneplus/base/BaseActivity;

    sget-object v3, Lcom/oneplus/base/BaseActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 527
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    goto :goto_2

    .line 541
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

    .line 543
    goto :goto_1
.end method

.method private detachActivity(Lcom/oneplus/gallery2/Gallery$ActivityHandle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 631
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    .line 632
    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 633
    :cond_0
    return-void

    .line 632
    :cond_1
    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p1, Lcom/oneplus/gallery2/Gallery$ActivityHandle;->activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 637
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->detachFromActivity()V

    .line 640
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

    .line 641
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/Gallery;->attachToActivity(Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 644
    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v1, v0}, Lcom/oneplus/gallery2/Gallery;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 645
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/Gallery;->onActivityChanged(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 648
    if-nez v0, :cond_3

    .line 653
    :goto_0
    return-void

    .line 650
    :cond_3
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    .line 651
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

    .line 659
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

    .line 662
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 667
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_MULTI_WINDOW_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityMultiWindowModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 668
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 671
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 678
    :goto_0
    iput-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 679
    return-void

    .line 663
    :cond_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 674
    iput-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    goto :goto_0
.end method

.method public static fromId(Ljava/lang/String;)Lcom/oneplus/gallery2/Gallery;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 689
    if-nez p0, :cond_0

    .line 691
    return-object v0

    .line 690
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

    .line 782
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    move v1, v2

    .line 783
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    if-nez v0, :cond_2

    :cond_0
    move v4, v2

    .line 787
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move-object v5, v6

    :goto_2
    if-ltz v7, :cond_5

    .line 789
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    .line 790
    iget-boolean v8, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    if-ne v8, v1, :cond_3

    move-object v0, v5

    .line 787
    :goto_3
    add-int/lit8 v5, v7, -0x1

    move v7, v5

    move-object v5, v0

    goto :goto_2

    :cond_1
    move v1, v3

    .line 782
    goto :goto_0

    .line 783
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_1

    .line 792
    :cond_3
    iget v8, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    .line 796
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->drop()V

    .line 797
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v0, v5

    goto :goto_3

    .line 793
    :cond_4
    iget-boolean v0, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 804
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_4
    if-ltz v7, :cond_8

    .line 806
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    .line 807
    iget-boolean v8, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    if-ne v8, v4, :cond_6

    move-object v0, v6

    .line 804
    :goto_5
    add-int/lit8 v6, v7, -0x1

    move v7, v6

    move-object v6, v0

    goto :goto_4

    .line 809
    :cond_6
    iget v8, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    .line 813
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->drop()V

    .line 814
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v0, v6

    goto :goto_5

    .line 810
    :cond_7
    iget-boolean v0, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 819
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

    .line 822
    if-nez v6, :cond_e

    .line 823
    :cond_9
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 824
    :cond_a
    :goto_6
    if-nez v5, :cond_f

    .line 825
    :cond_b
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 826
    :cond_c
    :goto_7
    if-eqz v5, :cond_10

    .line 827
    :cond_d
    invoke-direct {p0, v5, v6}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 828
    :goto_8
    return-void

    .line 822
    :cond_e
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v4, :cond_9

    goto :goto_6

    .line 824
    :cond_f
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v1, :cond_b

    goto :goto_7

    .line 826
    :cond_10
    if-nez v6, :cond_d

    goto :goto_8
.end method

.method private restoreNavigationBarVisibility(Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 834
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 835
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

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
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 840
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

    .line 838
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

    .line 848
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 849
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 851
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 852
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 854
    :cond_0
    :goto_1
    return-void

    .line 850
    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 851
    goto :goto_0

    .line 852
    :cond_3
    if-eqz v0, :cond_0

    .line 853
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->updateStatusBarColor()V

    goto :goto_1
.end method

.method private restoreStatusBarVisibility(Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 860
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 861
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 866
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

    .line 864
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
    .line 969
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
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

    .line 976
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    iget-boolean v0, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    .line 982
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 983
    return-void

    .line 970
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 977
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    goto :goto_1
.end method

.method private setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 987
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 992
    iget-boolean v0, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    if-eqz v0, :cond_1

    .line 996
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 997
    if-nez p1, :cond_2

    .line 1004
    :goto_1
    if-nez p2, :cond_4

    .line 1011
    :goto_2
    or-int/lit16 v0, v0, 0xe00

    .line 1014
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1017
    if-nez p1, :cond_6

    .line 1019
    :goto_3
    if-nez p2, :cond_7

    .line 1023
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSystemUiVisibility() - No window"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    return v2

    .line 993
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    .line 999
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1002
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 1000
    :cond_3
    and-int/lit8 v0, v0, -0x5

    goto :goto_1

    .line 1006
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1009
    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 1007
    :cond_5
    and-int/lit8 v0, v0, -0x3

    goto :goto_2

    .line 1018
    :cond_6
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 1020
    :cond_7
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private static trackInstance(Lcom/oneplus/gallery2/Gallery;)V
    .locals 2

    .prologue
    .line 1156
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    .line 1157
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/Gallery;->checkInstances(J)V

    .line 1158
    return-void
.end method

.method private updateStatusBarColor()V
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    if-nez v0, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1167
    if-eqz v1, :cond_0

    .line 1168
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

    .line 407
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 408
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    if-eqz p1, :cond_2

    .line 420
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 421
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->detachFromActivity()V

    .line 424
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->attachToActivity(Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 427
    new-instance v3, Lcom/oneplus/gallery2/Gallery$ActivityHandle;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/gallery2/Gallery$ActivityHandle;-><init>(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 428
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery2/Gallery;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery2/Gallery;->onActivityChanged(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 435
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    .line 438
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

    .line 441
    return-object v3

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "attachActivity() - Instance has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-object v3

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "attachActivity() - No activity"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-object v3

    .line 438
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract attachMedia(Lcom/oneplus/gallery2/media/Media;)Z
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 557
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery2/Gallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z

    move-result v0

    return v0
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 570
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 575
    new-array v0, v0, [Lcom/oneplus/gallery2/media/Media;

    aput-object p2, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2, p3}, Lcom/oneplus/gallery2/Gallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;ILcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z

    move-result v0

    return v0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteMedia() - No media to delete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
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

    .line 587
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

    .line 613
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
    .line 700
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 702
    invoke-super {p0, p1}, Lcom/oneplus/base/component/ComponentOwnerObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method final notifyShowDialog()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 723
    new-instance v0, Lcom/oneplus/gallery2/Gallery$6;

    const-string/jumbo v1, "Gallery Dialog Handle"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/Gallery$6;-><init>(Lcom/oneplus/gallery2/Gallery;Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 738
    return-object v0
.end method

.method protected onActivityChanged(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 0

    .prologue
    .line 748
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 756
    invoke-super {p0}, Lcom/oneplus/base/component/ComponentOwnerObject;->onRelease()V

    .line 759
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 764
    :goto_0
    iput-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 765
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 766
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 769
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
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

    .line 774
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/Gallery;->checkInstances(J)V

    .line 775
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 762
    iput-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    goto :goto_0
.end method

.method public setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 878
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 894
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 896
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    .line 897
    iget-boolean v2, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    if-ne v2, p1, :cond_1

    .line 894
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 897
    :cond_1
    iget v2, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->drop()V

    .line 900
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 903
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;-><init>(Lcom/oneplus/gallery2/Gallery;ZI)V

    .line 904
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 906
    return-object v0
.end method

.method public setStatusBarColor(I)Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 918
    new-instance v0, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;-><init>(Lcom/oneplus/gallery2/Gallery;I)V

    .line 919
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->updateStatusBarColor()V

    .line 921
    return-object v0
.end method

.method public setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 932
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 948
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 950
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    .line 951
    iget-boolean v2, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    if-ne v2, p1, :cond_1

    .line 948
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 951
    :cond_1
    iget v2, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 953
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->drop()V

    .line 954
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 957
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;-><init>(Lcom/oneplus/gallery2/Gallery;ZI)V

    .line 958
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 960
    return-object v0
.end method

.method public shareMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1034
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1039
    new-array v0, v0, [Lcom/oneplus/gallery2/media/Media;

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z

    move-result v0

    return v0

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shareMedia() - No media to share"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    return v2
.end method

.method public shareMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1049
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1055
    new-array v0, v0, [Lcom/oneplus/gallery2/media/Media;

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z

    move-result v0

    return v0

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shareMedia() - No media to share"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
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

    .line 1073
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

    .line 1085
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 1087
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCamera() - Media type : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1090
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 1091
    if-eqz v0, :cond_0

    .line 1095
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1096
    if-nez p1, :cond_1

    const-string/jumbo v2, "android.intent.action.MAIN"

    .line 1112
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    :goto_1
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 1117
    :goto_2
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.oneplus.camera"

    const-string/jumbo v4, "com.oneplus.camera.OPCameraActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1120
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    return v7

    .line 1092
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    goto :goto_0

    .line 1098
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/Gallery;->$SWITCH_TABLE$com$oneplus$gallery$media$MediaType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1107
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startCamera() - Unknown media type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    return v5

    :pswitch_0
    const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 1101
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v2, "android.media.action.VIDEO_CAMERA"

    .line 1104
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const/high16 v2, 0x10000000

    .line 1114
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1121
    :catch_0
    move-exception v2

    .line 1125
    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startCamera() - No OnePlus Camera on this device"

    invoke-static {v3, v4, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v2, "android.intent.action.MAIN"

    .line 1129
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1131
    :goto_3
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1134
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1135
    return v7

    :cond_3
    const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 1130
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1135
    :catch_1
    move-exception v0

    .line 1139
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startCamera() - Fail to start camera"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1140
    return v5

    .line 1098
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
    .line 1149
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
