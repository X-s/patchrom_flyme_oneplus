.class public Lcom/oneplus/gallery/MediaSetPickerFragment;
.super Lcom/oneplus/gallery/GalleryFragment;
.source "MediaSetPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/MediaSetPickerFragment$8;,
        Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;,
        Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;,
        Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
    }
.end annotation


# static fields
.field private static final EMPTY_COVER_IMAGE_POOL_CAPACITY:I = 0x4

.field public static final EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MAX_ACTIVE_COVER_IMAGE_CREATION_TASK_COUNT:I = 0x4

.field private static final MSG_CREATE_COVER_IMAGES:I = 0x2711

.field private static final PRINT_COVER_IMAGE_CREATION_TRACE_LOGS:Z

.field public static final PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/media/MediaSetList;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_EmptyCoverImagePool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_ActiveCoverImageCreationTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CoverImageCreationTaskList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CoverImageCreationTaskTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;",
            ">;"
        }
    .end annotation
.end field

.field private m_CoverImageHeight:I

.field private m_CoverImageWidth:I

.field private m_CoverMediaTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsCoverImageCreationScheduled:Z

.field private final m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetCoverHashCodeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

.field private m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

.field private m_MediaSetListview:Landroid/widget/ListView;

.field private final m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListMoveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

.field private m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 50
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaSetList"

    const-class v2, Lcom/oneplus/gallery/media/MediaSetList;

    const-class v3, Lcom/oneplus/gallery/MediaSetPickerFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/MediaSetPickerFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    .line 55
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSetClicked"

    const-class v2, Lcom/oneplus/gallery/ListItemEventArgs;

    const-class v3, Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/MediaSetPickerFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryFragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;

    .line 79
    new-instance v0, Lcom/oneplus/gallery/MediaSetPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$1;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 87
    new-instance v0, Lcom/oneplus/gallery/MediaSetPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$2;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetCoverHashCodeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 95
    new-instance v0, Lcom/oneplus/gallery/MediaSetPickerFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$3;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 103
    new-instance v0, Lcom/oneplus/gallery/MediaSetPickerFragment$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$4;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    .line 111
    new-instance v0, Lcom/oneplus/gallery/MediaSetPickerFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$5;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    .line 119
    new-instance v0, Lcom/oneplus/gallery/MediaSetPickerFragment$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$6;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 973
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->onMediaCountChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->onMediaSetCoverHashCodeChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery/MediaSetPickerFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetPickerFragment;->recycleCoverImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetPickerFragment;->onCoverImageCreationCompleted(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetPickerFragment;->onMediaSetAdded(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery/MediaSetPickerFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery/MediaSetPickerFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->obtainEmptyCoverImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/MediaSetPickerFragment;->onCoverImageUpdated(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/media/MediaSet;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->createCoverImage(Lcom/oneplus/gallery/media/MediaSet;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/MediaSetPickerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->onMediaSetMoved()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetPickerFragment;->onMediaSetRemoved(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetPickerFragment;->onMediaSetRemoving(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/MediaSetPickerFragment;)Lcom/oneplus/gallery/media/MediaSetList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private attachToMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 2
    .param p1, "set"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 131
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetCoverHashCodeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 132
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 133
    return-void
.end method

.method private cancelCreatingCoverImages(Z)V
    .locals 6
    .param p1, "clearQueue"    # Z

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_IsCoverImageCreationScheduled:Z

    if-eqz v2, :cond_0

    .line 141
    iput-boolean v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_IsCoverImageCreationScheduled:Z

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    new-array v3, v4, [Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;

    .line 147
    .local v0, "activeTasks":[Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 148
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 150
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->cancel()V

    .line 151
    if-nez p1, :cond_1

    .line 152
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 148
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    const-string v3, "cancelCreatingCoverImages() - Cancelled "

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " tasks"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    if-eqz p1, :cond_3

    .line 159
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 160
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 162
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    const-string v3, "cancelCreatingCoverImages() - "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remaining tasks in queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method private createCoverImage(Lcom/oneplus/gallery/media/MediaSet;Z)V
    .locals 4
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "highPriority"    # Z

    .prologue
    .line 168
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;

    .line 171
    .local v2, "task":Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    .line 172
    .local v1, "coverMedia":Lcom/oneplus/gallery/media/Media;
    if-eqz v1, :cond_1

    .line 174
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-interface {v3, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->getCachedSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "cacheThumb":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 177
    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/oneplus/gallery/MediaSetPickerFragment;->onCoverImageUpdated(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    .line 178
    invoke-virtual {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->cancel()V

    .line 200
    .end local v0    # "cacheThumb":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {v2, p2}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->setPriority(Z)V

    .line 185
    invoke-virtual {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 187
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 188
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_2
    new-instance v2, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;

    .end local v2    # "task":Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/media/MediaSet;)V

    .line 193
    .restart local v2    # "task":Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
    invoke-virtual {v2, p2}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->setPriority(Z)V

    .line 194
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    if-eqz p2, :cond_3

    .line 196
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 199
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->scheduleCoverImageCreation()V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private createCoverImages()V
    .locals 3

    .prologue
    .line 205
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_IsCoverImageCreationScheduled:Z

    .line 206
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 208
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;

    .line 209
    .local v0, "task":Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->createCoverImage()V

    .line 211
    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    .end local v0    # "task":Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
    :cond_1
    return-void
.end method

.method private detachFromMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 2
    .param p1, "set"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 220
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetCoverHashCodeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 221
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_0
    return-void
.end method

.method private findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;
    .locals 5
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListview:Landroid/widget/ListView;

    if-nez v4, :cond_1

    move-object v1, v3

    .line 240
    :cond_0
    :goto_0
    return-object v1

    .line 233
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 235
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListview:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 236
    .local v1, "itemView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 237
    .local v2, "tag":Ljava/lang/Object;
    instance-of v4, v2, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;

    if-eqz v4, :cond_2

    check-cast v2, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;

    .end local v2    # "tag":Ljava/lang/Object;
    iget-object v4, v2, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eq v4, p1, :cond_0

    .line 233
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "itemView":Landroid/view/View;
    :cond_3
    move-object v1, v3

    .line 240
    goto :goto_0
.end method

.method private obtainEmptyCoverImage()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, "coverImage":Landroid/graphics/Bitmap;
    :goto_0
    sget-object v1, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    sget-object v1, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "coverImage":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 664
    .restart local v0    # "coverImage":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageWidth:I

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageHeight:I

    if-ne v1, v2, :cond_2

    .line 672
    :cond_0
    if-nez v0, :cond_1

    .line 676
    iget v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageWidth:I

    iget v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 678
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 679
    return-object v0

    .line 670
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCoverImageCreationCompleted(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)V
    .locals 3
    .param p1, "task"    # Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverImageCreationCompleted() - Task for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    iget-object v1, p1, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->scheduleCoverImageCreation()V

    goto :goto_0
.end method

.method private onCoverImageUpdated(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    .locals 5
    .param p1, "task"    # Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
    .param p2, "coverImage"    # Landroid/graphics/Bitmap;
    .param p3, "isRecyclableImage"    # Z

    .prologue
    .line 685
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 687
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCoverImageUpdated() - Task for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v4}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been cancelled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .end local p2    # "coverImage":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 690
    .restart local p2    # "coverImage":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p1, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;

    move-result-object v1

    .line 691
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 693
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;

    iget-object v0, v2, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->thumbnail:Landroid/widget/ImageView;

    .line 694
    .local v0, "coverImageView":Landroid/widget/ImageView;
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .end local p2    # "coverImage":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 695
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private onMediaCountChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p2, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 711
    :cond_0
    return-void
.end method

.method private onMediaSetAdded(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 727
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "end":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 728
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/MediaSet;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->attachToMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    if-eqz v2, :cond_1

    .line 731
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    invoke-virtual {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 732
    :cond_1
    return-void
.end method

.method private onMediaSetCoverHashCodeChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p2, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 721
    :cond_1
    return-void
.end method

.method private onMediaSetMoved()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 740
    :cond_0
    return-void
.end method

.method private onMediaSetRemoved(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 748
    :cond_0
    return-void
.end method

.method private onMediaSetRemoving(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 753
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "end":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 754
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/MediaSet;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->detachFromMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    :cond_0
    return-void
.end method

.method private recycleCoverImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "coverImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 784
    if-nez p1, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageWidth:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageHeight:I

    if-ne v0, v1, :cond_0

    .line 792
    sget-object v0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private scheduleCoverImageCreation()V
    .locals 2

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_IsCoverImageCreationScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 806
    sget-object v1, Lcom/oneplus/gallery/MediaSetPickerFragment$8;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v0, Lcom/oneplus/gallery/MediaSetPickerFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseFragment$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 814
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_IsCoverImageCreationScheduled:Z

    .line 815
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setMediaSetList(Lcom/oneplus/gallery/media/MediaSetList;)Z
    .locals 4
    .param p1, "newList"    # Lcom/oneplus/gallery/media/MediaSetList;

    .prologue
    .line 831
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    const-string v3, "setMediaSetList()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    .line 834
    .local v1, "oldList":Lcom/oneplus/gallery/media/MediaSetList;
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    .line 835
    if-ne v1, p1, :cond_0

    .line 836
    const/4 v2, 0x0

    .line 871
    :goto_0
    return v2

    .line 838
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->cancelCreatingCoverImages(Z)V

    .line 841
    if-eqz v1, :cond_1

    .line 843
    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 844
    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 845
    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 846
    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 847
    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 848
    invoke-interface {v1, v0}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/MediaSet;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->detachFromMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 847
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 852
    .end local v0    # "i":I
    :cond_1
    if-nez p1, :cond_4

    .line 853
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;

    const-string v3, "setMediaSetList() - newList is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    if-eqz v2, :cond_3

    .line 869
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    invoke-virtual {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 871
    :cond_3
    sget-object v2, Lcom/oneplus/gallery/MediaSetPickerFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/gallery/MediaSetPickerFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 857
    :cond_4
    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 858
    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 859
    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 860
    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 863
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_2

    .line 864
    invoke-interface {p1, v0}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/MediaSet;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->attachToMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 863
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 245
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 252
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->handleMessage(Landroid/os/Message;)V

    .line 255
    :goto_0
    return-void

    .line 248
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->createCoverImages()V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery/Gallery;)V
    .locals 2
    .param p1, "gallery"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onAttachToGallery(Lcom/oneplus/gallery/Gallery;)V

    .line 263
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .line 264
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 284
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0500b4

    .line 289
    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, "baseView":Landroid/view/View;
    const v2, 0x7f060056

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListview:Landroid/widget/ListView;

    .line 294
    new-instance v2, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/MediaSetPickerFragment$1;)V

    iput-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    .line 295
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListview:Landroid/widget/ListView;

    new-instance v3, Lcom/oneplus/gallery/MediaSetPickerFragment$7;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$7;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 317
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 318
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageWidth:I

    .line 319
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverImageHeight:I

    .line 321
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 702
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onDestroy()V

    .line 703
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->cancelCreatingCoverImages(Z)V

    .line 775
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onPause()V

    .line 778
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 779
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 760
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onResume()V

    .line 763
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 768
    :cond_1
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 823
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/MediaSetPickerFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 824
    check-cast p2, Lcom/oneplus/gallery/media/MediaSetList;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->setMediaSetList(Lcom/oneplus/gallery/media/MediaSetList;)Z

    move-result v0

    .line 826
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
