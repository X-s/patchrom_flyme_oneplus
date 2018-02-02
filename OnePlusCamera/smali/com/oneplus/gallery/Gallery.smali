.class public abstract Lcom/oneplus/gallery/Gallery;
.super Lcom/oneplus/base/component/ComponentOwnerObject;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/Gallery$ActivityHandle;,
        Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;,
        Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;,
        Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;,
        Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;,
        Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;,
        Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;,
        Lcom/oneplus/gallery/Gallery$SystemUiVisibilityHandle;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$gallery$media$MediaType:[I = null

.field private static final DURATION_CHECK_INSTANCES_DELAY:J = 0xbb8L

.field public static final FLAG_ALWAYS_SHOW_UI:I = 0x2

.field public static final FLAG_CANCELABLE:I = 0x1

.field public static final PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/GalleryActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
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
            "Lcom/oneplus/gallery/Gallery;",
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
            "Lcom/oneplus/gallery/Gallery;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private m_Activity:Lcom/oneplus/gallery/GalleryActivity;

.field private m_ActivityDecorView:Landroid/view/View;

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
            "Lcom/oneplus/gallery/Gallery$ActivityHandle;",
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
            "Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_StatusBarColorHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_StatusBarVisibilityHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;


# direct methods
.method static synthetic $SWITCH_TABLE$com$oneplus$gallery$media$MediaType()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/oneplus/gallery/Gallery;->$SWITCH_TABLE$com$oneplus$gallery$media$MediaType:[I

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
    sput-object v0, Lcom/oneplus/gallery/Gallery;->$SWITCH_TABLE$com$oneplus$gallery$media$MediaType:[I

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

    .line 45
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Activity"

    const-class v2, Lcom/oneplus/gallery/GalleryActivity;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    .line 49
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CurrentMediaSet"

    const-class v2, Lcom/oneplus/gallery/media/MediaSet;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    .line 53
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HasDialog"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    .line 57
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsDeletingMedia"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 61
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsNavigationBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 65
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSharingMedia"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 69
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsStatusBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 73
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "TargetMediaType"

    const-class v2, Lcom/oneplus/gallery/media/MediaType;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_TARGET_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->m_TrackingInstances:Ljava/util/List;

    .line 222
    new-instance v0, Lcom/oneplus/gallery/Gallery$3;

    invoke-direct {v0}, Lcom/oneplus/gallery/Gallery$3;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    .line 229
    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 335
    invoke-direct {p0, v6}, Lcom/oneplus/base/component/ComponentOwnerObject;-><init>(Z)V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    .line 195
    new-instance v0, Lcom/oneplus/gallery/Gallery$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/Gallery$1;-><init>(Lcom/oneplus/gallery/Gallery;)V

    iput-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 207
    new-instance v0, Lcom/oneplus/gallery/Gallery$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/Gallery$2;-><init>(Lcom/oneplus/gallery/Gallery;)V

    iput-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 338
    invoke-static {p0}, Lcom/oneplus/gallery/Gallery;->trackInstance(Lcom/oneplus/gallery/Gallery;)V

    .line 341
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryApplication;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 345
    new-array v1, v0, [C

    .line 348
    :cond_0
    array-length v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 350
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4042000000000000L    # 36.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xa

    .line 351
    if-lt v2, v3, :cond_2

    .line 354
    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_0

    .line 342
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can only create in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_2
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_0

    .line 356
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 357
    sget-object v2, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    iput-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Id:Ljava/lang/String;

    .line 360
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

    iput-object v1, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    .line 361
    sget-object v1, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Create, total instance count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v6}, Lcom/oneplus/gallery/Gallery;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 369
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery/Gallery;)Lcom/oneplus/gallery/GalleryActivity;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/oneplus/gallery/Gallery;I)V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->onSystemUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery/Gallery;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery/Gallery;)V
    .locals 0

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility()V

    return-void
.end method

.method static synthetic access$4(J)V
    .locals 0

    .prologue
    .line 449
    invoke-static {p0, p1}, Lcom/oneplus/gallery/Gallery;->checkInstances(J)V

    return-void
.end method

.method static synthetic access$5(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;)V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->restoreStatusBarVisibility(Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;)V

    return-void
.end method

.method static synthetic access$6(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;)V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->restoreNavigationBarVisibility(Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;)V

    return-void
.end method

.method static synthetic access$7(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/Gallery$ActivityHandle;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->detachActivity(Lcom/oneplus/gallery/Gallery$ActivityHandle;)V

    return-void
.end method

.method static synthetic access$8(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;)V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->restoreStatusBarColor(Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;)V

    return-void
.end method

.method static synthetic access$9(Lcom/oneplus/gallery/Gallery;)Ljava/util/List;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    return-object v0
.end method

.method private attachToActivity(Lcom/oneplus/gallery/GalleryActivity;)V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "attachToActivity() - activity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    if-eqz p1, :cond_0

    .line 428
    iput-object p1, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 431
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 434
    invoke-virtual {p1}, Lcom/oneplus/gallery/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    .line 441
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 444
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->updateStatusBarColor()V

    .line 445
    return-void

    .line 425
    :cond_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "attachToActivity() - No window"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method private static checkInstances(J)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gallery/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 453
    sget-object v2, Lcom/oneplus/gallery/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    .line 454
    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_3

    .line 456
    sget-object v0, Lcom/oneplus/gallery/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 458
    sget-object v0, Lcom/oneplus/gallery/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_1

    .line 456
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 460
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Gallery"

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkInstances() - Alive instances : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/oneplus/gallery/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void

    .line 467
    :cond_3
    sget-object v0, Lcom/oneplus/gallery/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 468
    return-void
.end method

.method private checkSystemNavigationBarState(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 475
    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 483
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 484
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 485
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 486
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 489
    new-instance v2, Lcom/oneplus/base/ScreenSize;

    invoke-direct {v2, p1, v1}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    .line 490
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 493
    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-gt v2, v3, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    .line 494
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkSystemNavigationBarState() - Has navigation bar : "

    iget-boolean v2, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkSystemNavigationBarState() - No activity to check"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void

    .line 491
    :cond_1
    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v3, v4, v3

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v2

    if-gt v3, v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 493
    goto :goto_0
.end method

.method private detachActivity(Lcom/oneplus/gallery/Gallery$ActivityHandle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 574
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 575
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    .line 576
    iget-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 577
    :cond_0
    return-void

    .line 576
    :cond_1
    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p1, Lcom/oneplus/gallery/Gallery$ActivityHandle;->activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 581
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->detachFromActivity()V

    .line 584
    iget-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$ActivityHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/Gallery$ActivityHandle;->activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 585
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/Gallery;->attachToActivity(Lcom/oneplus/gallery/GalleryActivity;)V

    .line 588
    sget-object v3, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v1, v0}, Lcom/oneplus/gallery/Gallery;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery/Gallery;->onActivityChanged(Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/GalleryActivity;)V

    .line 592
    if-nez v0, :cond_3

    .line 597
    :goto_0
    return-void

    .line 594
    :cond_3
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    .line 595
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

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

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1
.end method

.method private detachFromActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 603
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "detachFromActivity() - m_Activity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 613
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 620
    :goto_0
    iput-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 621
    return-void

    .line 607
    :cond_0
    return-void

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 616
    iput-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    goto :goto_0
.end method

.method public static fromId(Ljava/lang/String;)Lcom/oneplus/gallery/Gallery;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 631
    if-nez p0, :cond_0

    .line 633
    return-object v0

    .line 632
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery;

    return-object v0
.end method

.method private onSystemUiVisibilityChanged(I)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 724
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    move v1, v2

    .line 725
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    if-nez v0, :cond_2

    :cond_0
    move v4, v2

    .line 729
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move-object v5, v6

    :goto_2
    if-ltz v7, :cond_5

    .line 731
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    .line 732
    iget-boolean v8, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    if-ne v8, v1, :cond_3

    move-object v0, v5

    .line 729
    :goto_3
    add-int/lit8 v5, v7, -0x1

    move v7, v5

    move-object v5, v0

    goto :goto_2

    :cond_1
    move v1, v3

    .line 724
    goto :goto_0

    .line 725
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_1

    .line 734
    :cond_3
    iget v8, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    .line 738
    invoke-virtual {v0}, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->drop()V

    .line 739
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v0, v5

    goto :goto_3

    .line 735
    :cond_4
    iget-boolean v0, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 746
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_4
    if-ltz v7, :cond_8

    .line 748
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    .line 749
    iget-boolean v8, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->isVisible:Z

    if-ne v8, v4, :cond_6

    move-object v0, v6

    .line 746
    :goto_5
    add-int/lit8 v6, v7, -0x1

    move v7, v6

    move-object v6, v0

    goto :goto_4

    .line 751
    :cond_6
    iget v8, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    .line 755
    invoke-virtual {v0}, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->drop()V

    .line 756
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v0, v6

    goto :goto_5

    .line 752
    :cond_7
    iget-boolean v0, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 761
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

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

    .line 764
    if-nez v6, :cond_e

    .line 765
    :cond_9
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 766
    :cond_a
    :goto_6
    if-nez v5, :cond_f

    .line 767
    :cond_b
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 768
    :cond_c
    :goto_7
    if-eqz v5, :cond_10

    .line 769
    :cond_d
    invoke-direct {p0, v5, v6}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 770
    :goto_8
    return-void

    .line 764
    :cond_e
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v4, :cond_9

    goto :goto_6

    .line 766
    :cond_f
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v1, :cond_b

    goto :goto_7

    .line 768
    :cond_10
    if-nez v6, :cond_d

    goto :goto_8
.end method

.method private restoreNavigationBarVisibility(Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 776
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 777
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 782
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    iget-boolean v0, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0

    .line 780
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0
.end method

.method private restoreStatusBarColor(Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 790
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 791
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 793
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 794
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 796
    :cond_0
    :goto_1
    return-void

    .line 792
    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 793
    goto :goto_0

    .line 794
    :cond_3
    if-eqz v0, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->updateStatusBarColor()V

    goto :goto_1
.end method

.method private restoreStatusBarVisibility(Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 802
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 803
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    iget-boolean v0, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0

    .line 806
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0
.end method

.method private setSystemUiVisibility()V
    .locals 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    iget-boolean v0, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    move v1, v0

    .line 918
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    iget-boolean v0, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->isVisible:Z

    .line 924
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 925
    return-void

    .line 912
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 919
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    goto :goto_1
.end method

.method private setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 929
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 934
    iget-boolean v0, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    if-eqz v0, :cond_1

    .line 938
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 939
    if-nez p1, :cond_2

    .line 946
    :goto_1
    if-nez p2, :cond_4

    .line 953
    :goto_2
    or-int/lit16 v0, v0, 0xe00

    .line 956
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 959
    if-nez p1, :cond_6

    .line 961
    :goto_3
    if-nez p2, :cond_7

    .line 965
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSystemUiVisibility() - No window"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return v2

    .line 935
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    .line 941
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 944
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 942
    :cond_3
    and-int/lit8 v0, v0, -0x5

    goto :goto_1

    .line 948
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 951
    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 949
    :cond_5
    and-int/lit8 v0, v0, -0x3

    goto :goto_2

    .line 960
    :cond_6
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3

    .line 962
    :cond_7
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private static trackInstance(Lcom/oneplus/gallery/Gallery;)V
    .locals 2

    .prologue
    .line 1098
    sget-object v0, Lcom/oneplus/gallery/Gallery;->m_TrackingInstances:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    .line 1099
    invoke-static {v0, v1}, Lcom/oneplus/gallery/Gallery;->checkInstances(J)V

    .line 1100
    return-void
.end method

.method private updateStatusBarColor()V
    .locals 2

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    if-nez v0, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1109
    if-eqz v1, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;

    iget v0, v0, Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;->color:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public attachActivity(Lcom/oneplus/gallery/GalleryActivity;)Lcom/oneplus/base/Handle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 381
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    if-eqz p1, :cond_2

    .line 393
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 394
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->detachFromActivity()V

    .line 397
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->attachToActivity(Lcom/oneplus/gallery/GalleryActivity;)V

    .line 400
    new-instance v3, Lcom/oneplus/gallery/Gallery$ActivityHandle;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/gallery/Gallery$ActivityHandle;-><init>(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/GalleryActivity;)V

    .line 401
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery/Gallery;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/Gallery;->onActivityChanged(Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/GalleryActivity;)V

    .line 408
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    .line 411
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

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

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 414
    return-object v3

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "attachActivity() - Instance has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-object v3

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "attachActivity() - No activity"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-object v3

    .line 411
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/Media;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 506
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery/Gallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z

    move-result v0

    return v0
.end method

.method public deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 519
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 524
    new-array v0, v0, [Lcom/oneplus/gallery/media/Media;

    aput-object p2, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/oneplus/gallery/Gallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z

    move-result v0

    return v0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteMedia() - No media to delete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return v2
.end method

.method public deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery/Gallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z

    move-result v0

    return v0
.end method

.method public abstract deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;",
            "Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;",
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
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 557
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/Gallery;->deleteMediaSet(Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;)Z

    move-result v0

    return v0
.end method

.method public abstract deleteMediaSet(Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;",
            "Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;",
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
    .line 642
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 644
    invoke-super {p0, p1}, Lcom/oneplus/base/component/ComponentOwnerObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method final notifyShowDialog()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 665
    new-instance v0, Lcom/oneplus/gallery/Gallery$4;

    const-string/jumbo v1, "Gallery Dialog Handle"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/Gallery$4;-><init>(Lcom/oneplus/gallery/Gallery;Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 680
    return-object v0
.end method

.method protected onActivityChanged(Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/GalleryActivity;)V
    .locals 0

    .prologue
    .line 690
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 698
    invoke-super {p0}, Lcom/oneplus/base/component/ComponentOwnerObject;->onRelease()V

    .line 701
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 706
    :goto_0
    iput-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 707
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 708
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 711
    sget-object v0, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_Id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Release, total instance count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    .line 716
    invoke-static {v0, v1}, Lcom/oneplus/gallery/Gallery;->checkInstances(J)V

    .line 717
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 704
    iput-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    goto :goto_0
.end method

.method public setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 820
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/Gallery;->setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 836
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 838
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    .line 839
    iget-boolean v2, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->isVisible:Z

    if-ne v2, p1, :cond_1

    .line 836
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 839
    :cond_1
    iget v2, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 841
    invoke-virtual {v0}, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->drop()V

    .line 842
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 845
    :cond_2
    new-instance v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;-><init>(Lcom/oneplus/gallery/Gallery;ZI)V

    .line 846
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 848
    return-object v0
.end method

.method public setStatusBarColor(I)Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 860
    new-instance v0, Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;-><init>(Lcom/oneplus/gallery/Gallery;I)V

    .line 861
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->updateStatusBarColor()V

    .line 863
    return-object v0
.end method

.method public setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 874
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 890
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 892
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    .line 893
    iget-boolean v2, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    if-ne v2, p1, :cond_1

    .line 890
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 893
    :cond_1
    iget v2, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 895
    invoke-virtual {v0}, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->drop()V

    .line 896
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 899
    :cond_2
    new-instance v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;-><init>(Lcom/oneplus/gallery/Gallery;ZI)V

    .line 900
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 902
    return-object v0
.end method

.method public shareMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 976
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 981
    new-array v0, v0, [Lcom/oneplus/gallery/media/Media;

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;)Z

    move-result v0

    return v0

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shareMedia() - No media to share"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    return v2
.end method

.method public shareMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 991
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 997
    new-array v0, v0, [Lcom/oneplus/gallery/media/Media;

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;)Z

    move-result v0

    return v0

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shareMedia() - No media to share"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    return v2
.end method

.method public abstract shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;",
            "Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;",
            ")Z"
        }
    .end annotation
.end method

.method public startCamera()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1015
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/Gallery;->startCamera(Lcom/oneplus/gallery/media/MediaType;)Z

    move-result v0

    return v0
.end method

.method public startCamera(Lcom/oneplus/gallery/media/MediaType;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1027
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 1029
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCamera() - Media type : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1032
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 1033
    if-eqz v0, :cond_0

    .line 1037
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1038
    if-nez p1, :cond_1

    const-string/jumbo v2, "android.intent.action.MAIN"

    .line 1054
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    :goto_1
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 1059
    :goto_2
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.oneplus.camera"

    const-string/jumbo v4, "com.oneplus.camera.OPCameraActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1062
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    return v7

    .line 1034
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    goto :goto_0

    .line 1040
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery/Gallery;->$SWITCH_TABLE$com$oneplus$gallery$media$MediaType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1049
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startCamera() - Unknown media type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    return v5

    :pswitch_0
    const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 1043
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v2, "android.media.action.VIDEO_CAMERA"

    .line 1046
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const/high16 v2, 0x10000000

    .line 1056
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1063
    :catch_0
    move-exception v2

    .line 1067
    iget-object v3, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startCamera() - No OnePlus Camera on this device"

    invoke-static {v3, v4, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v2, "android.intent.action.MAIN"

    .line 1071
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1073
    :goto_3
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1076
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1077
    return v7

    :cond_3
    const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 1072
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1077
    :catch_1
    move-exception v0

    .line 1081
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startCamera() - Fail to start camera"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1082
    return v5

    .line 1040
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
    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Gallery("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
