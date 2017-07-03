.class public abstract Lcom/oneplus/gallery2/Gallery;
.super Lcom/oneplus/base/component/ComponentOwnerObject;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/Gallery$5;,
        Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;,
        Lcom/oneplus/gallery2/Gallery$ActivityHandle;,
        Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;,
        Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;,
        Lcom/oneplus/gallery2/Gallery$SystemUiVisibilityHandle;,
        Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;,
        Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;,
        Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
    }
.end annotation


# static fields
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
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 46
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Activity"

    const-class v2, Lcom/oneplus/gallery2/GalleryActivity;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    .line 50
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CurrentMediaSet"

    const-class v2, Lcom/oneplus/gallery2/media/MediaSet;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    .line 54
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "HasDialog"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    .line 58
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsDeletingMedia"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 62
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsNavigationBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 66
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSharingMedia"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 70
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsStatusBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 74
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "TargetMediaType"

    const-class v2, Lcom/oneplus/gallery/media/MediaType;

    const-class v3, Lcom/oneplus/gallery2/Gallery;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_TARGET_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    .line 227
    new-instance v0, Lcom/oneplus/gallery2/Gallery$3;

    invoke-direct {v0}, Lcom/oneplus/gallery2/Gallery$3;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 340
    invoke-direct {p0, v8}, Lcom/oneplus/base/component/ComponentOwnerObject;-><init>(Z)V

    .line 190
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    .line 191
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    .line 194
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    .line 195
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    .line 196
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    .line 200
    new-instance v4, Lcom/oneplus/gallery2/Gallery$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery2/Gallery$1;-><init>(Lcom/oneplus/gallery2/Gallery;)V

    iput-object v4, p0, Lcom/oneplus/gallery2/Gallery;->m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 212
    new-instance v4, Lcom/oneplus/gallery2/Gallery$2;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery2/Gallery$2;-><init>(Lcom/oneplus/gallery2/Gallery;)V

    iput-object v4, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 343
    invoke-static {p0}, Lcom/oneplus/gallery2/Gallery;->trackInstance(Lcom/oneplus/gallery2/Gallery;)V

    .line 346
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/base/BaseApplication;->isDependencyThread()Z

    move-result v4

    if-nez v4, :cond_0

    .line 347
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Can only create in main thread"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    :cond_0
    const/4 v4, 0x4

    new-array v2, v4, [C

    .line 353
    .local v2, "idBuffer":[C
    :cond_1
    array-length v4, v2

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 355
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4042000000000000L    # 36.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 356
    .local v3, "n":I
    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 357
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    aput-char v4, v2, v0

    .line 353
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 359
    :cond_2
    add-int/lit8 v4, v3, -0xa

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v2, v0

    goto :goto_1

    .line 361
    .end local v3    # "n":I
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 362
    .local v1, "id":Ljava/lang/String;
    sget-object v4, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 364
    iput-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Id:Ljava/lang/String;

    .line 365
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

    iput-object v4, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    .line 366
    sget-object v4, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v4, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v4, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create, total instance count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object v4, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v8}, Lcom/oneplus/gallery2/Gallery;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/Gallery;)Lcom/oneplus/gallery2/GalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/Gallery;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/Gallery;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/Gallery;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->onSystemUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/Gallery;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/Gallery;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/Gallery;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/Gallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/Gallery;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility()V

    return-void
.end method

.method static synthetic access$400(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/oneplus/gallery2/Gallery;->checkInstances(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/Gallery;
    .param p1, "x1"    # Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->restoreStatusBarVisibility(Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/Gallery;
    .param p1, "x1"    # Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->restoreNavigationBarVisibility(Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$ActivityHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/Gallery;
    .param p1, "x1"    # Lcom/oneplus/gallery2/Gallery$ActivityHandle;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->detachActivity(Lcom/oneplus/gallery2/Gallery$ActivityHandle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/Gallery;
    .param p1, "x1"    # Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->restoreStatusBarColor(Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery2/Gallery;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/Gallery;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    return-object v0
.end method

.method private attachToActivity(Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/oneplus/gallery2/GalleryActivity;

    .prologue
    .line 426
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

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

    .line 429
    if-nez p1, :cond_0

    .line 450
    :goto_0
    return-void

    .line 433
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 436
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery2/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 439
    invoke-virtual {p1}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 440
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_1

    .line 442
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v2, "attachToActivity() - No window"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    .line 446
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_SystemUiVisibilityListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 449
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->updateStatusBarColor()V

    goto :goto_0
.end method

.method private static checkInstances(J)V
    .locals 6
    .param p0, "delayMillis"    # J

    .prologue
    .line 457
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 458
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery2/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-gtz v3, :cond_2

    .line 461
    sget-object v3, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 463
    sget-object v3, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 464
    .local v2, "instance":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 465
    sget-object v3, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 461
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 467
    .end local v2    # "instance":Ljava/lang/Object;
    :cond_1
    const-string v3, "Gallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkInstances() - Alive instances : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 472
    :cond_2
    sget-object v3, Lcom/oneplus/gallery2/Gallery;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private checkSystemNavigationBarState(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 480
    if-nez p1, :cond_0

    .line 482
    iget-object v4, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v5, "checkSystemNavigationBarState() - No activity to check"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 488
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 489
    .local v3, "size":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 490
    .local v1, "realSize":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 491
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 494
    new-instance v2, Lcom/oneplus/base/ScreenSize;

    invoke-direct {v2, p1, v4}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    .line 495
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_2

    .line 496
    iget v6, v1, Landroid/graphics/Point;->y:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v7

    if-le v6, v7, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    .line 499
    :goto_2
    iget-object v4, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v5, "checkSystemNavigationBarState() - Has navigation bar : "

    iget-boolean v6, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 496
    goto :goto_1

    .line 498
    :cond_2
    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    if-le v6, v7, :cond_3

    :goto_3
    iput-boolean v4, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3
.end method

.method private detachActivity(Lcom/oneplus/gallery2/Gallery$ActivityHandle;)V
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/gallery2/Gallery$ActivityHandle;

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 585
    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-static {v3, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    .line 586
    .local v1, "isLast":Z
    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v2, p1, Lcom/oneplus/gallery2/Gallery$ActivityHandle;->activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 591
    .local v2, "prevActivity":Lcom/oneplus/gallery2/GalleryActivity;
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->detachFromActivity()V

    .line 594
    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 595
    .local v0, "activity":Lcom/oneplus/gallery2/GalleryActivity;
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/Gallery;->attachToActivity(Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 598
    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v2, v0}, Lcom/oneplus/gallery2/Gallery;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 599
    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery2/Gallery;->onActivityChanged(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 602
    if-eqz v0, :cond_0

    .line 604
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    .line 605
    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    sget-object v4, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0

    .line 594
    .end local v0    # "activity":Lcom/oneplus/gallery2/GalleryActivity;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/Gallery$ActivityHandle;

    iget-object v0, v3, Lcom/oneplus/gallery2/Gallery$ActivityHandle;->activity:Lcom/oneplus/gallery2/GalleryActivity;

    goto :goto_1

    .line 605
    .restart local v0    # "activity":Lcom/oneplus/gallery2/GalleryActivity;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private detachFromActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 613
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detachFromActivity() - m_Activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityRunningStateCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 623
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 626
    iput-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    .line 630
    :cond_1
    iput-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    goto :goto_0
.end method

.method public static fromId(Ljava/lang/String;)Lcom/oneplus/gallery2/Gallery;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 641
    if-eqz p0, :cond_0

    .line 642
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery;

    .line 643
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

    .line 734
    and-int/lit8 v8, p1, 0x4

    if-nez v8, :cond_1

    move v3, v6

    .line 735
    .local v3, "isStatusBarVisible":Z
    :goto_0
    iget-boolean v8, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    if-eqz v8, :cond_2

    and-int/lit8 v8, p1, 0x2

    if-nez v8, :cond_2

    move v2, v6

    .line 738
    .local v2, "isNavBarVisible":Z
    :goto_1
    const/4 v5, 0x0

    .line 739
    .local v5, "showStatusBar":Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 741
    iget-object v8, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    .line 742
    .local v0, "handle":Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;
    iget-boolean v8, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    if-eq v8, v3, :cond_0

    .line 744
    iget v8, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_3

    .line 745
    iget-boolean v8, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 739
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v0    # "handle":Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;
    .end local v1    # "i":I
    .end local v2    # "isNavBarVisible":Z
    .end local v3    # "isStatusBarVisible":Z
    .end local v5    # "showStatusBar":Ljava/lang/Boolean;
    :cond_1
    move v3, v7

    .line 734
    goto :goto_0

    .restart local v3    # "isStatusBarVisible":Z
    :cond_2
    move v2, v7

    .line 735
    goto :goto_1

    .line 748
    .restart local v0    # "handle":Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;
    .restart local v1    # "i":I
    .restart local v2    # "isNavBarVisible":Z
    .restart local v5    # "showStatusBar":Ljava/lang/Boolean;
    :cond_3
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->drop()V

    .line 749
    iget-object v8, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 755
    .end local v0    # "handle":Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;
    :cond_4
    const/4 v4, 0x0

    .line 756
    .local v4, "showNavBar":Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_4
    if-ltz v1, :cond_7

    .line 758
    iget-object v8, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    .line 759
    .local v0, "handle":Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;
    iget-boolean v8, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    if-eq v8, v2, :cond_5

    .line 761
    iget v8, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_6

    .line 762
    iget-boolean v8, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 756
    :cond_5
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 765
    :cond_6
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->drop()V

    .line 766
    iget-object v8, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 771
    .end local v0    # "handle":Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;
    :cond_7
    iget-object v8, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

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

    .line 774
    if-eqz v4, :cond_8

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v2, :cond_9

    .line 775
    :cond_8
    sget-object v6, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 776
    :cond_9
    if-eqz v5, :cond_a

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v3, :cond_b

    .line 777
    :cond_a
    sget-object v6, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 778
    :cond_b
    if-nez v5, :cond_c

    if-eqz v4, :cond_d

    .line 779
    :cond_c
    invoke-direct {p0, v5, v4}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 780
    :cond_d
    return-void
.end method

.method private restoreNavigationBarVisibility(Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    .prologue
    const/4 v3, 0x0

    .line 786
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 787
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 789
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    iget-boolean v1, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    iget-boolean v1, v1, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0
.end method

.method private restoreStatusBarColor(Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 801
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    .line 804
    .local v0, "isLastHandle":Z
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->updateStatusBarColor()V

    goto :goto_0

    .line 803
    .end local v0    # "isLastHandle":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private restoreStatusBarVisibility(Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    .prologue
    const/4 v3, 0x0

    .line 812
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 813
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 815
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    iget-boolean v1, v1, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0
.end method

.method private setSystemUiVisibility()V
    .locals 4

    .prologue
    .line 921
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    const/4 v1, 0x1

    .line 928
    .local v1, "showStatusBar":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 929
    iget-boolean v0, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    .line 934
    .local v0, "showNavBar":Z
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 935
    return-void

    .line 924
    .end local v0    # "showNavBar":Z
    .end local v1    # "showStatusBar":Z
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    iget-boolean v1, v2, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    .restart local v1    # "showStatusBar":Z
    goto :goto_0

    .line 931
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    iget-boolean v0, v2, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    .restart local v0    # "showNavBar":Z
    goto :goto_1
.end method

.method private setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 4
    .param p1, "isStatusBarVisible"    # Ljava/lang/Boolean;
    .param p2, "isNavBarVisible"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x0

    .line 939
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 941
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v3, "setSystemUiVisibility() - No window"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :goto_0
    return v1

    .line 944
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    if-nez v2, :cond_1

    .line 945
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 948
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 949
    .local v0, "visibility":I
    if-eqz p1, :cond_2

    .line 951
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 952
    and-int/lit8 v0, v0, -0x5

    .line 956
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 958
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 959
    and-int/lit8 v0, v0, -0x3

    .line 963
    :cond_3
    :goto_2
    or-int/lit16 v0, v0, 0xe00

    .line 966
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 969
    if-eqz p1, :cond_4

    .line 970
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 971
    :cond_4
    if-eqz p2, :cond_5

    .line 972
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p2}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 975
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 954
    :cond_6
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 961
    :cond_7
    or-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method private static trackInstance(Lcom/oneplus/gallery2/Gallery;)V
    .locals 2
    .param p0, "instance"    # Lcom/oneplus/gallery2/Gallery;

    .prologue
    .line 1108
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_TrackingInstances:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/Gallery;->checkInstances(J)V

    .line 1110
    return-void
.end method

.method private updateStatusBarColor()V
    .locals 2

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1119
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;

    iget v1, v1, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;->color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1122
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method


# virtual methods
.method public attachActivity(Lcom/oneplus/gallery2/GalleryActivity;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "activity"    # Lcom/oneplus/gallery2/GalleryActivity;

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 386
    sget-object v2, Lcom/oneplus/gallery2/Gallery;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v3, "attachActivity() - Instance has been released"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_0
    return-object v0

    .line 391
    :cond_0
    if-nez p1, :cond_1

    .line 393
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v3, "attachActivity() - No activity"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 399
    .local v1, "prevActivity":Lcom/oneplus/gallery2/GalleryActivity;
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->detachFromActivity()V

    .line 402
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->attachToActivity(Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 405
    new-instance v0, Lcom/oneplus/gallery2/Gallery$ActivityHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/Gallery$ActivityHandle;-><init>(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 406
    .local v0, "handle":Lcom/oneplus/gallery2/Gallery$ActivityHandle;
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v2, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/gallery2/Gallery;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {p0, v1, p1}, Lcom/oneplus/gallery2/Gallery;->onActivityChanged(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 413
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V

    .line 416
    sget-object v2, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/gallery2/Gallery;->m_HasNavigationBar:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "mediaToDelete"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery2/Gallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z

    move-result v0

    return v0
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "mediaToDelete"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "callback"    # Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    .prologue
    const/4 v0, 0x0

    .line 524
    if-nez p2, :cond_0

    .line 526
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v2, "deleteMedia() - No media to delete"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oneplus/gallery2/media/Media;

    aput-object p2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/oneplus/gallery2/Gallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;ILcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;)Z
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
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
    .line 541
    .local p2, "mediaToDelete":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/Media;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

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
    .line 567
    .local p1, "mediaSetToDelete":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/MediaSet;>;"
    const/4 v0, 0x0

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
    .line 652
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 654
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
    .line 664
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method final notifyShowDialog()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 675
    new-instance v0, Lcom/oneplus/gallery2/Gallery$4;

    const-string v1, "Gallery Dialog Handle"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/Gallery$4;-><init>(Lcom/oneplus/gallery2/Gallery;Ljava/lang/String;)V

    .line 688
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 690
    return-object v0
.end method

.method protected onActivityChanged(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 0
    .param p1, "prevActivity"    # Lcom/oneplus/gallery2/GalleryActivity;
    .param p2, "newActivity"    # Lcom/oneplus/gallery2/GalleryActivity;

    .prologue
    .line 700
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 708
    invoke-super {p0}, Lcom/oneplus/base/component/ComponentOwnerObject;->onRelease()V

    .line 711
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 714
    iput-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_ActivityDecorView:Landroid/view/View;

    .line 716
    :cond_0
    iput-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 717
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_AttachedActivityHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 718
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_GalleryDialogHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 721
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release, total instance count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/Gallery;->m_Galleries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/Gallery;->checkInstances(J)V

    .line 727
    return-void
.end method

.method public setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 830
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "isVisible"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 846
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 848
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    .line 849
    .local v0, "handle":Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;
    iget-boolean v2, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->isVisible:Z

    if-eq v2, p1, :cond_0

    iget v2, v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 851
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;->drop()V

    .line 852
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 846
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 855
    .end local v0    # "handle":Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;-><init>(Lcom/oneplus/gallery2/Gallery;ZI)V

    .line 856
    .restart local v0    # "handle":Lcom/oneplus/gallery2/Gallery$NavBarVisibilityHandle;
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_NavBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 858
    return-object v0
.end method

.method public setStatusBarColor(I)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 870
    new-instance v0, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;-><init>(Lcom/oneplus/gallery2/Gallery;I)V

    .line 871
    .local v0, "handle":Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarColorHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 872
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;->updateStatusBarColor()V

    .line 873
    return-object v0
.end method

.method public setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 884
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "isVisible"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 900
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 902
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    .line 903
    .local v0, "handle":Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;
    iget-boolean v2, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->isVisible:Z

    if-eq v2, p1, :cond_0

    iget v2, v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 905
    invoke-virtual {v0}, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->drop()V

    .line 906
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 900
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 909
    .end local v0    # "handle":Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;-><init>(Lcom/oneplus/gallery2/Gallery;ZI)V

    .line 910
    .restart local v0    # "handle":Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;
    iget-object v2, p0, Lcom/oneplus/gallery2/Gallery;->m_StatusBarVisibilityHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery2/Gallery;->setSystemUiVisibility(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 912
    return-object v0
.end method

.method public shareMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 3
    .param p1, "mediaToShare"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v0, 0x0

    .line 986
    if-nez p1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v2, "shareMedia() - No media to share"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oneplus/gallery2/media/Media;

    aput-object p1, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public shareMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z
    .locals 3
    .param p1, "mediaToShare"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "sharingCB"    # Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    .prologue
    const/4 v0, 0x0

    .line 1001
    if-nez p1, :cond_0

    .line 1003
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v2, "shareMedia() - No media to share"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oneplus/gallery2/media/Media;

    aput-object p1, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z

    move-result v0

    goto :goto_0
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
    .line 1025
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/Gallery;->startCamera(Lcom/oneplus/gallery/media/MediaType;)Z

    move-result v0

    return v0
.end method

.method public startCamera(Lcom/oneplus/gallery/media/MediaType;)Z
    .locals 8
    .param p1, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1037
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery;->verifyAccess()V

    .line 1039
    iget-object v5, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v6, "startCamera() - Media type : "

    invoke-static {v5, v6, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1042
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 1043
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1044
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 1047
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1048
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 1050
    sget-object v5, Lcom/oneplus/gallery2/Gallery$5;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1059
    iget-object v4, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

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

    .line 1092
    :goto_0
    return v3

    .line 1053
    :pswitch_0
    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    :goto_1
    instance-of v5, v0, Landroid/app/Activity;

    if-nez v5, :cond_1

    .line 1066
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1069
    :cond_1
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.oneplus.camera"

    const-string v7, "com.oneplus.camera.OPCameraActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1072
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1073
    goto :goto_0

    .line 1056
    :pswitch_1
    const-string v5, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1064
    :cond_2
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1075
    :catch_0
    move-exception v1

    .line 1077
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v6, "startCamera() - No OnePlus Camera on this device"

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1081
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1082
    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1086
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 1087
    goto :goto_0

    .line 1089
    :catch_1
    move-exception v1

    .line 1091
    iget-object v4, p0, Lcom/oneplus/gallery2/Gallery;->TAG:Ljava/lang/String;

    const-string v5, "startCamera() - Fail to start camera"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1050
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
    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gallery("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery;->m_Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
