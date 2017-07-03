.class public abstract Lcom/oneplus/gallery/Gallery;
.super Lcom/oneplus/base/component/ComponentOwnerObject;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/Gallery$5;,
        Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;,
        Lcom/oneplus/gallery/Gallery$ActivityHandle;,
        Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;,
        Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;,
        Lcom/oneplus/gallery/Gallery$SystemUiVisibilityHandle;,
        Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;,
        Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;,
        Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;
    }
.end annotation


# static fields
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
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 45
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Activity"

    const-class v2, Lcom/oneplus/gallery/GalleryActivity;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    .line 49
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CurrentMediaSet"

    const-class v2, Lcom/oneplus/gallery/media/MediaSet;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    .line 53
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "HasDialog"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    .line 57
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsDeletingMedia"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 61
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsNavigationBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 65
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSharingMedia"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 69
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsStatusBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/Gallery;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 73
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "TargetMediaType"

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

    return-void
.end method

.method constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 335
    invoke-direct {p0, v8}, Lcom/oneplus/base/component/ComponentOwnerObject;-><init>(Z)V

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    .line 189
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    .line 190
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    .line 191
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    .line 195
    new-instance v4, Lcom/oneplus/gallery/Gallery$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/Gallery$1;-><init>(Lcom/oneplus/gallery/Gallery;)V

    iput-object v4, p0, Lcom/oneplus/gallery/Gallery;->m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 207
    new-instance v4, Lcom/oneplus/gallery/Gallery$2;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/Gallery$2;-><init>(Lcom/oneplus/gallery/Gallery;)V

    iput-object v4, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 338
    invoke-static {p0}, Lcom/oneplus/gallery/Gallery;->trackInstance(Lcom/oneplus/gallery/Gallery;)V

    .line 341
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/gallery/GalleryApplication;->isDependencyThread()Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Can only create in main thread"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 345
    :cond_0
    const/4 v4, 0x4

    new-array v2, v4, [C

    .line 348
    .local v2, "idBuffer":[C
    :cond_1
    array-length v4, v2

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 350
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4042000000000000L    # 36.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 351
    .local v3, "n":I
    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 352
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    aput-char v4, v2, v0

    .line 348
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 354
    :cond_2
    add-int/lit8 v4, v3, -0xa

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v2, v0

    goto :goto_1

    .line 356
    .end local v3    # "n":I
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 357
    .local v1, "id":Ljava/lang/String;
    sget-object v4, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 359
    iput-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_Id:Ljava/lang/String;

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gallery("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    .line 361
    sget-object v4, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v4, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v4, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create, total instance count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v4, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v8}, Lcom/oneplus/gallery/Gallery;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/Gallery;)Lcom/oneplus/gallery/GalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/Gallery;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/Gallery;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->onSystemUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/Gallery;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/Gallery;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/Gallery;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/Gallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility()V

    return-void
.end method

.method static synthetic access$400(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/oneplus/gallery/Gallery;->checkInstances(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/Gallery;
    .param p1, "x1"    # Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->restoreStatusBarVisibility(Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/Gallery;
    .param p1, "x1"    # Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->restoreNavigationBarVisibility(Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/Gallery$ActivityHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/Gallery;
    .param p1, "x1"    # Lcom/oneplus/gallery/Gallery$ActivityHandle;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->detachActivity(Lcom/oneplus/gallery/Gallery$ActivityHandle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/Gallery;
    .param p1, "x1"    # Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->restoreStatusBarColor(Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/Gallery;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    return-object v0
.end method

.method private attachToActivity(Lcom/oneplus/gallery/GalleryActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/oneplus/gallery/GalleryActivity;

    .prologue
    .line 421
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachToActivity() - activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    if-nez p1, :cond_0

    .line 445
    :goto_0
    return-void

    .line 428
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 431
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 434
    invoke-virtual {p1}, Lcom/oneplus/gallery/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 435
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_1

    .line 437
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v2, "attachToActivity() - No window"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    .line 441
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 444
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->updateStatusBarColor()V

    goto :goto_0
.end method

.method private static checkInstances(J)V
    .locals 6
    .param p0, "delayMillis"    # J

    .prologue
    .line 452
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 453
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 454
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-gtz v3, :cond_2

    .line 456
    sget-object v3, Lcom/oneplus/gallery/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 458
    sget-object v3, Lcom/oneplus/gallery/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 459
    .local v2, "instance":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 460
    sget-object v3, Lcom/oneplus/gallery/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 456
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 462
    .end local v2    # "instance":Ljava/lang/Object;
    :cond_1
    const-string v3, "Gallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkInstances() - Alive instances : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 467
    :cond_2
    sget-object v3, Lcom/oneplus/gallery/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private checkSystemNavigationBarState(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 475
    if-nez p1, :cond_0

    .line 477
    iget-object v4, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v5, "checkSystemNavigationBarState() - No activity to check"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 483
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 484
    .local v3, "size":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 485
    .local v1, "realSize":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 486
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 489
    new-instance v2, Lcom/oneplus/base/ScreenSize;

    invoke-direct {v2, p1, v4}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    .line 490
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_2

    .line 491
    iget v6, v1, Landroid/graphics/Point;->y:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v7

    if-le v6, v7, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    .line 494
    :goto_2
    iget-object v4, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v5, "checkSystemNavigationBarState() - Has navigation bar : "

    iget-boolean v6, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 491
    goto :goto_1

    .line 493
    :cond_2
    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    if-le v6, v7, :cond_3

    :goto_3
    iput-boolean v4, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3
.end method

.method private detachActivity(Lcom/oneplus/gallery/Gallery$ActivityHandle;)V
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/gallery/Gallery$ActivityHandle;

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 575
    iget-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-static {v3, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    .line 576
    .local v1, "isLast":Z
    iget-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v2, p1, Lcom/oneplus/gallery/Gallery$ActivityHandle;->activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 581
    .local v2, "prevActivity":Lcom/oneplus/gallery/GalleryActivity;
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->detachFromActivity()V

    .line 584
    iget-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 585
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/Gallery;->attachToActivity(Lcom/oneplus/gallery/GalleryActivity;)V

    .line 588
    sget-object v3, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v2, v0}, Lcom/oneplus/gallery/Gallery;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery/Gallery;->onActivityChanged(Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/GalleryActivity;)V

    .line 592
    if-eqz v0, :cond_0

    .line 594
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    .line 595
    sget-object v3, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    sget-object v4, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0

    .line 584
    .end local v0    # "activity":Lcom/oneplus/gallery/GalleryActivity;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/Gallery$ActivityHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/Gallery$ActivityHandle;->activity:Lcom/oneplus/gallery/GalleryActivity;

    goto :goto_1

    .line 595
    .restart local v0    # "activity":Lcom/oneplus/gallery/GalleryActivity;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private detachFromActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 603
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detachFromActivity() - m_Activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    if-nez v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 613
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 616
    iput-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    .line 620
    :cond_1
    iput-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    goto :goto_0
.end method

.method public static fromId(Ljava/lang/String;)Lcom/oneplus/gallery/Gallery;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 631
    if-eqz p0, :cond_0

    .line 632
    sget-object v0, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery;

    .line 633
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSystemUiVisibilityChanged(I)V
    .locals 12
    .param p1, "visibility"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 724
    and-int/lit8 v8, p1, 0x4

    if-nez v8, :cond_1

    move v3, v6

    .line 725
    .local v3, "isStatusBarVisible":Z
    :goto_0
    iget-boolean v8, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    if-eqz v8, :cond_2

    and-int/lit8 v8, p1, 0x2

    if-nez v8, :cond_2

    move v2, v6

    .line 728
    .local v2, "isNavBarVisible":Z
    :goto_1
    const/4 v5, 0x0

    .line 729
    .local v5, "showStatusBar":Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 731
    iget-object v8, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    .line 732
    .local v0, "handle":Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;
    iget-boolean v8, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    if-eq v8, v3, :cond_0

    .line 734
    iget v8, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_3

    .line 735
    iget-boolean v8, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 729
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v0    # "handle":Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;
    .end local v1    # "i":I
    .end local v2    # "isNavBarVisible":Z
    .end local v3    # "isStatusBarVisible":Z
    .end local v5    # "showStatusBar":Ljava/lang/Boolean;
    :cond_1
    move v3, v7

    .line 724
    goto :goto_0

    .restart local v3    # "isStatusBarVisible":Z
    :cond_2
    move v2, v7

    .line 725
    goto :goto_1

    .line 738
    .restart local v0    # "handle":Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;
    .restart local v1    # "i":I
    .restart local v2    # "isNavBarVisible":Z
    .restart local v5    # "showStatusBar":Ljava/lang/Boolean;
    :cond_3
    invoke-virtual {v0}, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->drop()V

    .line 739
    iget-object v8, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 745
    .end local v0    # "handle":Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;
    :cond_4
    const/4 v4, 0x0

    .line 746
    .local v4, "showNavBar":Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_4
    if-ltz v1, :cond_7

    .line 748
    iget-object v8, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    .line 749
    .local v0, "handle":Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;
    iget-boolean v8, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->isVisible:Z

    if-eq v8, v2, :cond_5

    .line 751
    iget v8, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_6

    .line 752
    iget-boolean v8, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->isVisible:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 746
    :cond_5
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 755
    :cond_6
    invoke-virtual {v0}, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->drop()V

    .line 756
    iget-object v8, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 761
    .end local v0    # "handle":Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;
    :cond_7
    iget-object v8, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v9, "onSystemUiVisibilityChanged() - Status bar: "

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v7

    const-string v7, ", nav bar:"

    aput-object v7, v10, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v10, v6

    const/4 v6, 0x3

    const-string v7, ", show status bar: "

    aput-object v7, v10, v6

    const/4 v6, 0x4

    aput-object v5, v10, v6

    const/4 v6, 0x5

    const-string v7, ", show nav bar: "

    aput-object v7, v10, v6

    const/4 v6, 0x6

    aput-object v4, v10, v6

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    if-eqz v4, :cond_8

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v2, :cond_9

    .line 765
    :cond_8
    sget-object v6, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 766
    :cond_9
    if-eqz v5, :cond_a

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v3, :cond_b

    .line 767
    :cond_a
    sget-object v6, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 768
    :cond_b
    if-nez v5, :cond_c

    if-eqz v4, :cond_d

    .line 769
    :cond_c
    invoke-direct {p0, v5, v4}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 770
    :cond_d
    return-void
.end method

.method private restoreNavigationBarVisibility(Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    .prologue
    const/4 v3, 0x0

    .line 776
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 777
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 779
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 780
    iget-boolean v1, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    iget-boolean v1, v1, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->isVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0
.end method

.method private restoreStatusBarColor(Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 791
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    .line 794
    .local v0, "isLastHandle":Z
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->updateStatusBarColor()V

    goto :goto_0

    .line 793
    .end local v0    # "isLastHandle":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private restoreStatusBarVisibility(Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    .prologue
    const/4 v3, 0x0

    .line 802
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 803
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 805
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    iget-boolean v1, v1, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0
.end method

.method private setSystemUiVisibility()V
    .locals 4

    .prologue
    .line 911
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    const/4 v1, 0x1

    .line 918
    .local v1, "showStatusBar":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 919
    iget-boolean v0, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    .line 924
    .local v0, "showNavBar":Z
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 925
    return-void

    .line 914
    .end local v0    # "showNavBar":Z
    .end local v1    # "showStatusBar":Z
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    iget-boolean v1, v2, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    .restart local v1    # "showStatusBar":Z
    goto :goto_0

    .line 921
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    iget-boolean v0, v2, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->isVisible:Z

    .restart local v0    # "showNavBar":Z
    goto :goto_1
.end method

.method private setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 4
    .param p1, "isStatusBarVisible"    # Ljava/lang/Boolean;
    .param p2, "isNavBarVisible"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x0

    .line 929
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 931
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v3, "setSystemUiVisibility() - No window"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :goto_0
    return v1

    .line 934
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    if-nez v2, :cond_1

    .line 935
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 938
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 939
    .local v0, "visibility":I
    if-eqz p1, :cond_2

    .line 941
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 942
    and-int/lit8 v0, v0, -0x5

    .line 946
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 948
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 949
    and-int/lit8 v0, v0, -0x3

    .line 953
    :cond_3
    :goto_2
    or-int/lit16 v0, v0, 0xe00

    .line 956
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 959
    if-eqz p1, :cond_4

    .line 960
    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 961
    :cond_4
    if-eqz p2, :cond_5

    .line 962
    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p2}, Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 965
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 944
    :cond_6
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 951
    :cond_7
    or-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method private static trackInstance(Lcom/oneplus/gallery/Gallery;)V
    .locals 2
    .param p0, "instance"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 1098
    sget-object v0, Lcom/oneplus/gallery/Gallery;->m_TrackingInstances:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/gallery/Gallery;->checkInstances(J)V

    .line 1100
    return-void
.end method

.method private updateStatusBarColor()V
    .locals 2

    .prologue
    .line 1106
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1108
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1109
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;

    iget v1, v1, Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;->color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1112
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method


# virtual methods
.method public attachActivity(Lcom/oneplus/gallery/GalleryActivity;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "activity"    # Lcom/oneplus/gallery/GalleryActivity;

    .prologue
    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 381
    sget-object v2, Lcom/oneplus/gallery/Gallery;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v3, "attachActivity() - Instance has been released"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-object v0

    .line 386
    :cond_0
    if-nez p1, :cond_1

    .line 388
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v3, "attachActivity() - No activity"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 394
    .local v1, "prevActivity":Lcom/oneplus/gallery/GalleryActivity;
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->detachFromActivity()V

    .line 397
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->attachToActivity(Lcom/oneplus/gallery/GalleryActivity;)V

    .line 400
    new-instance v0, Lcom/oneplus/gallery/Gallery$ActivityHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/Gallery$ActivityHandle;-><init>(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/GalleryActivity;)V

    .line 401
    .local v0, "handle":Lcom/oneplus/gallery/Gallery$ActivityHandle;
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v2, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/gallery/Gallery;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p0, v1, p1}, Lcom/oneplus/gallery/Gallery;->onActivityChanged(Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/GalleryActivity;)V

    .line 408
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    .line 411
    sget-object v2, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    sget-object v3, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/gallery/Gallery;->m_HasNavigationBar:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/Media;)Z
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "mediaToDelete"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery/Gallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z

    move-result v0

    return v0
.end method

.method public deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "mediaToDelete"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "callback"    # Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    .prologue
    const/4 v0, 0x0

    .line 519
    if-nez p2, :cond_0

    .line 521
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v2, "deleteMedia() - No media to delete"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oneplus/gallery/media/Media;

    aput-object p2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/oneplus/gallery/Gallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/Collection;)Z
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
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
    .line 536
    .local p2, "mediaToDelete":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery/media/Media;>;"
    const/4 v0, 0x0

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
    .line 557
    .local p1, "mediaSetToDelete":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery/media/MediaSet;>;"
    const/4 v0, 0x0

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
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 644
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/base/component/ComponentOwnerObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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

    const-string v1, "Gallery Dialog Handle"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/Gallery$4;-><init>(Lcom/oneplus/gallery/Gallery;Ljava/lang/String;)V

    .line 678
    .local v0, "handle":Lcom/oneplus/base/Handle;
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
    .param p1, "prevActivity"    # Lcom/oneplus/gallery/GalleryActivity;
    .param p2, "newActivity"    # Lcom/oneplus/gallery/GalleryActivity;

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

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 704
    iput-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_ActivityDecorView:Landroid/view/View;

    .line 706
    :cond_0
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

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release, total instance count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/oneplus/gallery/Gallery;->checkInstances(J)V

    .line 717
    return-void
.end method

.method public setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 820
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/Gallery;->setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "isVisible"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 836
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 838
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    .line 839
    .local v0, "handle":Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;
    iget-boolean v2, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->isVisible:Z

    if-eq v2, p1, :cond_0

    iget v2, v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 841
    invoke-virtual {v0}, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;->drop()V

    .line 842
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 836
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 845
    .end local v0    # "handle":Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;-><init>(Lcom/oneplus/gallery/Gallery;ZI)V

    .line 846
    .restart local v0    # "handle":Lcom/oneplus/gallery/Gallery$NavBarVisibilityHandle;
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 848
    return-object v0
.end method

.method public setStatusBarColor(I)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 860
    new-instance v0, Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;-><init>(Lcom/oneplus/gallery/Gallery;I)V

    .line 861
    .local v0, "handle":Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;->updateStatusBarColor()V

    .line 863
    return-object v0
.end method

.method public setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 874
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "isVisible"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 890
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 892
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    .line 893
    .local v0, "handle":Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;
    iget-boolean v2, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    if-eq v2, p1, :cond_0

    iget v2, v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 895
    invoke-virtual {v0}, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;->drop()V

    .line 896
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 890
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 899
    .end local v0    # "handle":Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;-><init>(Lcom/oneplus/gallery/Gallery;ZI)V

    .line 900
    .restart local v0    # "handle":Lcom/oneplus/gallery/Gallery$StatusBarVisibilityHandle;
    iget-object v2, p0, Lcom/oneplus/gallery/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 902
    return-object v0
.end method

.method public shareMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 3
    .param p1, "mediaToShare"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v0, 0x0

    .line 976
    if-nez p1, :cond_0

    .line 978
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v2, "shareMedia() - No media to share"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oneplus/gallery/media/Media;

    aput-object p1, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public shareMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;)Z
    .locals 3
    .param p1, "mediaToShare"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "sharingCB"    # Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;

    .prologue
    const/4 v0, 0x0

    .line 991
    if-nez p1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v2, "shareMedia() - No media to share"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oneplus/gallery/media/Media;

    aput-object p1, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;)Z

    move-result v0

    goto :goto_0
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
    .line 1015
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/Gallery;->startCamera(Lcom/oneplus/gallery/media/MediaType;)Z

    move-result v0

    return v0
.end method

.method public startCamera(Lcom/oneplus/gallery/media/MediaType;)Z
    .locals 8
    .param p1, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1027
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery;->verifyAccess()V

    .line 1029
    iget-object v5, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v6, "startCamera() - Media type : "

    invoke-static {v5, v6, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1032
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    .line 1033
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1034
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    .line 1037
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1038
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 1040
    sget-object v5, Lcom/oneplus/gallery/Gallery$5;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1049
    iget-object v4, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCamera() - Unknown media type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :goto_0
    return v3

    .line 1043
    :pswitch_0
    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    :goto_1
    instance-of v5, v0, Landroid/app/Activity;

    if-nez v5, :cond_1

    .line 1056
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1059
    :cond_1
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.oneplus.camera"

    const-string v7, "com.oneplus.camera.OPCameraActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1062
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1063
    goto :goto_0

    .line 1046
    :pswitch_1
    const-string v5, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1054
    :cond_2
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1065
    :catch_0
    move-exception v1

    .line 1067
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v6, "startCamera() - No OnePlus Camera on this device"

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1071
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1072
    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1076
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 1077
    goto :goto_0

    .line 1079
    :catch_1
    move-exception v1

    .line 1081
    iget-object v4, p0, Lcom/oneplus/gallery/Gallery;->TAG:Ljava/lang/String;

    const-string v5, "startCamera() - Fail to start camera"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1040
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gallery("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/Gallery;->m_Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
