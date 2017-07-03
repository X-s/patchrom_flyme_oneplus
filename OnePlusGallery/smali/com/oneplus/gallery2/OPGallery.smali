.class public final Lcom/oneplus/gallery2/OPGallery;
.super Lcom/oneplus/gallery2/Gallery;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/OPGallery$13;,
        Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;
    }
.end annotation


# static fields
.field private static final COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

.field private static final CONTROL_ITEM_ID_ADD:J = -0xdL

.field private static final CONTROL_ITEM_ID_FAVORITE:J = -0xfL

.field private static final FLAG_ADD_TO_FAVORITE_MEDIA_SET:I = 0x2

.field public static final INTENT_EXTRA_GALLERY_ID:Ljava/lang/String; = "GalleryID"


# instance fields
.field private m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

.field private final m_CurrentMediaSetHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaShareResultCallback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

.field private m_SharingMediaCallback:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    const/4 v1, 0x0

    new-instance v2, Lcom/oneplus/gallery2/ui/ProcessingDialogBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery2/ui/ProcessingDialogBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery2/OPGallery;->COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Lcom/oneplus/gallery2/OPGallery$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGallery$1;-><init>(Lcom/oneplus/gallery2/OPGallery;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGallery;->m_MediaShareResultCallback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    .line 99
    sget-object v0, Lcom/oneplus/gallery2/OPGallery;->COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/OPGallery;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 100
    sget-object v0, Lcom/oneplus/gallery2/OPGallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/OPGallery;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 103
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/AppTracker;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/AppTracker;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/OPGallery;)Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGallery;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGallery;->removeCurrentMediaSet(Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/OPGallery;Ljava/util/List;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGallery;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p3, "x3"    # Lcom/oneplus/base/OperationCallback;
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # I

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery2/OPGallery;->addToInternal(Ljava/util/List;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/OPGallery;)Lcom/oneplus/gallery2/AppTracker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGallery;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/AppTracker;)Lcom/oneplus/gallery2/AppTracker;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/gallery2/AppTracker;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p4, "x4"    # Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/OPGallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/gallery2/OPGallery;Ljava/util/List;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGallery;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/OPGallery;->deleteMediaSet(Ljava/util/List;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)V

    return-void
.end method

.method private addToInternal(Ljava/util/List;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;I)Z
    .locals 8
    .param p2, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p3, "callback"    # Lcom/oneplus/base/OperationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Lcom/oneplus/base/OperationCallback;",
            "Landroid/os/Handler;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, "mediaToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 374
    new-instance v2, Lcom/oneplus/base/OperationCallbackHelper;

    invoke-direct {v2, p3, p4}, Lcom/oneplus/base/OperationCallbackHelper;-><init>(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)V

    .line 424
    .local v2, "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;
    instance-of v5, p2, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    if-eqz v5, :cond_3

    .line 426
    check-cast p2, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .end local p2    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    invoke-virtual {p2}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->getAlbumId()J

    move-result-wide v0

    .line 427
    .local v0, "albumId":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 429
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/Media;

    .line 430
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->canAddToAlbum()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    const/4 v5, 0x0

    invoke-interface {v4, v0, v1, v5}, Lcom/oneplus/gallery2/media/Media;->addToAlbum(JI)Z

    .line 427
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    .end local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    invoke-virtual {v2, v6}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCompleted(Ljava/lang/Object;)V

    .line 447
    .end local v0    # "albumId":J
    .end local v3    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v2, v6}, Lcom/oneplus/base/OperationCallbackHelper;->callOnStarted(Ljava/lang/Object;)V

    .line 449
    return v7

    .line 435
    .restart local p2    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_3
    instance-of v5, p2, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    if-nez v5, :cond_4

    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_2

    .line 437
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 439
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/Media;

    .line 440
    .restart local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->isFavoriteSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 441
    invoke-interface {v4, v7}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    .line 437
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 443
    .end local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_6
    invoke-virtual {v2, v6}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCompleted(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)V
    .locals 22
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p3, "mediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p4, "callback"    # Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 697
    .local p2, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    sget-object v3, Lcom/oneplus/gallery2/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "deleteMedia() - Deleting media"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    sget-object v3, Lcom/oneplus/gallery2/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/Activity;

    .line 705
    .local v18, "activity":Landroid/app/Activity;
    if-nez v18, :cond_2

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "deleteMedia() - No activity to show dialog"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v4, v18

    .line 708
    check-cast v4, Lcom/oneplus/gallery2/GalleryActivity;

    .line 711
    .local v4, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    new-instance v8, Lcom/oneplus/base/SimpleRef;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 712
    .local v8, "progressRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Float;>;"
    new-instance v7, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v7}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 713
    .local v7, "progressBarRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Landroid/widget/ProgressBar;>;"
    new-instance v17, Lcom/oneplus/base/SimpleRef;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 715
    .local v17, "isDialogShownRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    if-eqz v18, :cond_5

    .line 717
    move-object/from16 v6, p3

    .line 718
    .local v6, "finalMediaType":Lcom/oneplus/gallery2/media/MediaType;
    new-instance v2, Lcom/oneplus/gallery2/OPGallery$6;

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/gallery2/OPGallery$6;-><init>(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/GalleryActivity;Ljava/util/List;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V

    .line 778
    .local v2, "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GalleryDialogFragment;->setCancelable(Z)V

    .line 784
    .end local v6    # "finalMediaType":Lcom/oneplus/gallery2/media/MediaType;
    :goto_1
    const/4 v3, 0x1

    new-array v12, v3, [I

    .line 785
    .local v12, "deletedCount":[I
    new-instance v9, Lcom/oneplus/gallery2/OPGallery$7;

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object/from16 v13, p2

    move-object v14, v8

    move-object v15, v7

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v17}, Lcom/oneplus/gallery2/OPGallery$7;-><init>(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;[ILjava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;Lcom/oneplus/gallery2/GalleryDialogFragment;Lcom/oneplus/base/Ref;)V

    .line 829
    .local v9, "deletionCallback":Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    sget-object v3, Lcom/oneplus/gallery2/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/gallery2/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 830
    if-eqz p4, :cond_3

    .line 831
    invoke-virtual/range {p4 .. p4}, Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;->onDeletionProcessStarted()V

    .line 832
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v20, v3, -0x1

    .local v20, "i":I
    :goto_2
    if-ltz v20, :cond_7

    .line 834
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/oneplus/gallery2/media/Media;

    .line 836
    .local v21, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz p1, :cond_6

    .line 837
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v9, v3}, Lcom/oneplus/gallery2/media/MediaSet;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v19

    .line 840
    .local v19, "handle":Lcom/oneplus/base/Handle;
    :goto_3
    invoke-static/range {v19 .. v19}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p4, :cond_4

    .line 842
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/Media;)V

    .line 843
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 832
    :cond_4
    add-int/lit8 v20, v20, -0x1

    goto :goto_2

    .line 781
    .end local v2    # "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    .end local v9    # "deletionCallback":Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .end local v12    # "deletedCount":[I
    .end local v19    # "handle":Lcom/oneplus/base/Handle;
    .end local v20    # "i":I
    .end local v21    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    goto :goto_1

    .line 839
    .restart local v9    # "deletionCallback":Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .restart local v12    # "deletedCount":[I
    .restart local v20    # "i":I
    .restart local v21    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v9, v3}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v19

    .restart local v19    # "handle":Lcom/oneplus/base/Handle;
    goto :goto_3

    .line 848
    .end local v19    # "handle":Lcom/oneplus/base/Handle;
    .end local v21    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_7
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget v3, v12, v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 850
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 851
    const-string v3, "Gallery.MediaDeletion"

    invoke-virtual {v2, v4, v3}, Lcom/oneplus/gallery2/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private deleteMediaSet(Ljava/util/List;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)V
    .locals 21
    .param p2, "callback"    # Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;",
            "Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 940
    .local p1, "mediaSetToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/MediaSet;>;"
    sget-object v3, Lcom/oneplus/gallery2/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "deleteMediaSet() - Deleting media"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    sget-object v3, Lcom/oneplus/gallery2/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/Activity;

    .line 948
    .local v17, "activity":Landroid/app/Activity;
    if-nez v17, :cond_2

    .line 949
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "deleteMediaSet() - No activity to show dialog"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v4, v17

    .line 951
    check-cast v4, Lcom/oneplus/gallery2/GalleryActivity;

    .line 954
    .local v4, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    new-instance v7, Lcom/oneplus/base/SimpleRef;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 955
    .local v7, "progressRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Float;>;"
    new-instance v6, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v6}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 956
    .local v6, "progressBarRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Landroid/widget/ProgressBar;>;"
    new-instance v16, Lcom/oneplus/base/SimpleRef;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 958
    .local v16, "isDialogShownRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    if-eqz v17, :cond_5

    .line 960
    new-instance v2, Lcom/oneplus/gallery2/OPGallery$9;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/gallery2/OPGallery$9;-><init>(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/GalleryActivity;Ljava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V

    .line 993
    .local v2, "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GalleryDialogFragment;->setCancelable(Z)V

    .line 999
    :goto_1
    const/4 v3, 0x1

    new-array v11, v3, [I

    .line 1000
    .local v11, "deletedCount":[I
    new-instance v8, Lcom/oneplus/gallery2/OPGallery$10;

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v12, p1

    move-object v13, v7

    move-object v14, v6

    move-object v15, v2

    invoke-direct/range {v8 .. v16}, Lcom/oneplus/gallery2/OPGallery$10;-><init>(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;[ILjava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;Lcom/oneplus/gallery2/GalleryDialogFragment;Lcom/oneplus/base/Ref;)V

    .line 1044
    .local v8, "deletionCallback":Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;
    sget-object v3, Lcom/oneplus/gallery2/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/gallery2/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1045
    if-eqz p2, :cond_3

    .line 1046
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;->onDeletionProcessStarted()V

    .line 1047
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_2
    if-ltz v19, :cond_6

    .line 1049
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/gallery2/media/MediaSet;

    .line 1050
    .local v20, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v8, v3}, Lcom/oneplus/gallery2/media/MediaSet;->delete(Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v18

    .line 1051
    .local v18, "handle":Lcom/oneplus/base/Handle;
    invoke-static/range {v18 .. v18}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1053
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v3}, Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/MediaSet;I)V

    .line 1054
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v3, v5}, Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/MediaSet;ZI)V

    .line 1047
    :cond_4
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 996
    .end local v2    # "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    .end local v8    # "deletionCallback":Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;
    .end local v11    # "deletedCount":[I
    .end local v18    # "handle":Lcom/oneplus/base/Handle;
    .end local v19    # "i":I
    .end local v20    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    goto :goto_1

    .line 1059
    .restart local v8    # "deletionCallback":Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;
    .restart local v11    # "deletedCount":[I
    .restart local v19    # "i":I
    :cond_6
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget v3, v11, v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 1061
    const-string v3, "Gallery.MediaSetDeletion"

    invoke-virtual {v2, v4, v3}, Lcom/oneplus/gallery2/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 1062
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private prepareSharingMedia(Landroid/content/Intent;Lcom/oneplus/gallery2/media/Media;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v2, 0x0

    .line 1077
    if-nez p2, :cond_0

    .line 1079
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v4, "prepareSharingMedia() - No media to share"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :goto_0
    return v2

    .line 1082
    :cond_0
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1083
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 1084
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1095
    :goto_1
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1097
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1088
    .local v1, "filePath":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1090
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v4, "prepareSharingMedia() - No file path"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    :cond_2
    const-string v2, "android.intent.extra.STREAM"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1100
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v3, "prepareSharingMedia() - media\'s mimeType is empty"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    sget-object v2, Lcom/oneplus/gallery2/OPGallery$13;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 1104
    :pswitch_0
    const-string v2, "image/*"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1107
    :pswitch_1
    const-string v2, "video/*"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1110
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v3, "prepareSharingMedia() - Unknown media type"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private prepareSharingMedia(Landroid/content/Intent;Ljava/util/Collection;)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "mediaCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/Media;>;"
    const/4 v9, 0x0

    .line 1121
    const/4 v6, 0x0

    .line 1122
    .local v6, "mimeType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1123
    .local v7, "mimeTypePrefix":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    .local v8, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 1126
    .local v5, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v5, :cond_0

    .line 1128
    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 1129
    .local v1, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 1130
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    :goto_1
    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 1139
    .local v2, "currentType":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1141
    const-string v10, "*/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1143
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1145
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1147
    const-string v6, "*/*"

    .line 1148
    const-string v7, "*/"

    goto :goto_0

    .line 1133
    .end local v2    # "currentType":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 1134
    .local v3, "filePath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1136
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1150
    .end local v3    # "filePath":Ljava/lang/String;
    .restart local v2    # "currentType":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2a

    if-eq v10, v11, :cond_0

    .line 1152
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1158
    :cond_3
    move-object v6, v2

    .line 1159
    const/16 v10, 0x2f

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1160
    .local v0, "charIndex":I
    if-ltz v0, :cond_4

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_2
    goto :goto_0

    :cond_4
    const-string v7, "*"

    goto :goto_2

    .line 1163
    .end local v0    # "charIndex":I
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "currentType":Ljava/lang/String;
    .end local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1165
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v11, "prepareSharingMedia() - No media to share"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :goto_3
    return v9

    .line 1168
    :cond_6
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1170
    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    const/4 v9, 0x1

    goto :goto_3
.end method

.method private removeCurrentMediaSet(Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;

    .prologue
    .line 1178
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery;->verifyAccess()V

    .line 1179
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1180
    .local v0, "isCurrent":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1183
    sget-object v1, Lcom/oneplus/gallery2/OPGallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1187
    :cond_0
    :goto_1
    return-void

    .line 1179
    .end local v0    # "isCurrent":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1185
    .restart local v0    # "isCurrent":Z
    :cond_2
    sget-object v2, Lcom/oneplus/gallery2/OPGallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery2/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addTo(Ljava/util/List;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
    .locals 2
    .param p2, "mediaSetsToExclude"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Lcom/oneplus/base/OperationCallback",
            "<***>;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    .local p3, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<***>;"
    const/4 v0, 0x0

    .line 118
    .local v0, "mediaSetCollection":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/MediaSet;>;"
    if-eqz p2, :cond_0

    .line 120
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "mediaSetCollection":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/MediaSet;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 121
    .restart local v0    # "mediaSetCollection":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/MediaSet;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/oneplus/gallery2/OPGallery;->addTo(Ljava/util/List;Ljava/util/Set;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    move-result v1

    return v1
.end method

.method public addTo(Ljava/util/List;Ljava/util/Set;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
    .locals 17
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;",
            "Lcom/oneplus/base/OperationCallback",
            "<***>;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    .local p2, "mediaSetsToExclude":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/MediaSet;>;"
    .local p3, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<***>;"
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/OPGallery;->verifyAccess()V

    .line 142
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    :cond_0
    const/4 v3, 0x0

    .line 365
    :goto_0
    return v3

    .line 146
    :cond_1
    sget-object v3, Lcom/oneplus/gallery2/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/Activity;

    .line 147
    .local v16, "activity":Landroid/app/Activity;
    if-nez v16, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v4, "addTo() - No activity to show dialog"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v3, 0x0

    goto :goto_0

    .line 154
    :cond_2
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/oneplus/gallery2/OPGalleryActivity;

    if-nez v3, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v4, "addTo() - Only support OPGalleryActivity"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v7, v16

    .line 159
    check-cast v7, Lcom/oneplus/gallery2/GalleryActivity;

    .line 162
    .local v7, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    check-cast v16, Lcom/oneplus/gallery2/OPGalleryActivity;

    .end local v16    # "activity":Landroid/app/Activity;
    sget-object v3, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery2/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery2/media/MediaSetList;

    .line 163
    .local v8, "mediaSetList":Lcom/oneplus/gallery2/media/MediaSetList;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Lcom/oneplus/gallery2/media/MediaSetList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 164
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 167
    :cond_5
    new-instance v6, Lcom/oneplus/base/OperationCallbackHelper;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lcom/oneplus/base/OperationCallbackHelper;-><init>(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)V

    .line 170
    .local v6, "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;
    new-instance v5, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v5}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 171
    .local v5, "dialogFragmentRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Lcom/oneplus/gallery2/GalleryDialogFragment;>;"
    new-instance v2, Lcom/oneplus/gallery2/OPGallery$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/gallery2/OPGallery$2;-><init>(Lcom/oneplus/gallery2/OPGallery;Ljava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/OperationCallbackHelper;Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 298
    .local v2, "bottomSheetListener":Lcom/oneplus/gallery2/BottomSheetView$BottomSheetListener;
    new-instance v9, Lcom/oneplus/gallery2/OPGallery$3;

    move-object/from16 v10, p0

    move-object v11, v8

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    move-object v14, v7

    move-object v15, v2

    invoke-direct/range {v9 .. v15}, Lcom/oneplus/gallery2/OPGallery$3;-><init>(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/media/MediaSetList;Ljava/util/Set;Ljava/util/List;Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/BottomSheetView$BottomSheetListener;)V

    invoke-interface {v5, v9}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 360
    invoke-interface {v5}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/GalleryDialogFragment;

    const-string v4, "Gallery.AddTo"

    invoke-virtual {v3, v7, v4}, Lcom/oneplus/gallery2/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 363
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/oneplus/base/OperationCallbackHelper;->callOnStarted(Ljava/lang/Object;)V

    .line 365
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public createAlbum()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/gallery2/OPGallery;->createAlbum(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public createAlbum(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
    .locals 6
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/OperationCallback",
            "<",
            "Ljava/lang/Object;",
            "[",
            "Lcom/oneplus/gallery2/media/AlbumMediaSet;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;[Lcom/oneplus/gallery2/media/AlbumMediaSet;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery;->verifyAccess()V

    .line 464
    sget-object v4, Lcom/oneplus/gallery2/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 465
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 467
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "createAlbum() - No activity to show dialog"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v4, 0x0

    .line 555
    :goto_0
    return v4

    :cond_0
    move-object v3, v0

    .line 470
    check-cast v3, Lcom/oneplus/gallery2/GalleryActivity;

    .line 474
    .local v3, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    if-eqz p1, :cond_1

    .line 475
    new-instance v1, Lcom/oneplus/base/OperationCallbackHelper;

    invoke-direct {v1, p1, p2}, Lcom/oneplus/base/OperationCallbackHelper;-><init>(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)V

    .line 480
    .local v1, "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;[Lcom/oneplus/gallery2/media/AlbumMediaSet;Ljava/lang/Object;>;"
    :goto_1
    new-instance v2, Lcom/oneplus/gallery2/OPGallery$4;

    invoke-direct {v2, p0, v3, v1}, Lcom/oneplus/gallery2/OPGallery$4;-><init>(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/base/OperationCallbackHelper;)V

    .line 553
    .local v2, "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    const-string v4, "Gallery.AlbumCreation"

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery2/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 555
    const/4 v4, 0x1

    goto :goto_0

    .line 477
    .end local v1    # "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;[Lcom/oneplus/gallery2/media/AlbumMediaSet;Ljava/lang/Object;>;"
    .end local v2    # "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;[Lcom/oneplus/gallery2/media/AlbumMediaSet;Ljava/lang/Object;>;"
    goto :goto_1
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;ILcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z
    .locals 13
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
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

    .prologue
    .line 564
    .local p2, "mediaToDelete":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery;->verifyAccess()V

    .line 565
    sget-object v2, Lcom/oneplus/gallery2/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v7, "deleteMedia() - Deleting media"

    invoke-static {v2, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v2, 0x0

    .line 689
    :goto_0
    return v2

    .line 570
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v7, "deleteMedia() - No media to delete"

    invoke-static {v2, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v2, 0x0

    goto :goto_0

    .line 577
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSet;->isVirtual()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_3
    const/4 v5, 0x1

    .line 578
    .local v5, "deleteOriginal":Z
    :goto_1
    const/4 v12, 0x0

    .line 579
    .local v12, "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 580
    .local v3, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/media/Media;

    .line 582
    .local v11, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v11, :cond_4

    .line 584
    if-nez v12, :cond_7

    .line 585
    invoke-interface {v11}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v12

    .line 588
    :cond_5
    :goto_3
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 577
    .end local v3    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    .end local v5    # "deleteOriginal":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v12    # "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 586
    .restart local v3    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    .restart local v5    # "deleteOriginal":Z
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "media":Lcom/oneplus/gallery2/media/Media;
    .restart local v12    # "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    :cond_7
    sget-object v2, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    if-eq v12, v2, :cond_5

    invoke-interface {v11}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v2

    if-eq v12, v2, :cond_5

    .line 587
    sget-object v12, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    goto :goto_3

    .line 591
    .end local v11    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 593
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v7, "deleteMedia() - No media to delete"

    invoke-static {v2, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/4 v2, 0x0

    goto :goto_0

    .line 598
    :cond_9
    sget-object v2, Lcom/oneplus/gallery2/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    .line 599
    .local v9, "activity":Landroid/app/Activity;
    if-nez v9, :cond_a

    .line 601
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v7, "deleteMedia() - No activity to show dialog"

    invoke-static {v2, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p4

    invoke-direct {p0, p1, v3, v12, v0}, Lcom/oneplus/gallery2/OPGallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)V

    .line 603
    const/4 v2, 0x1

    goto :goto_0

    .line 607
    :cond_a
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_b

    .line 609
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v7, "deleteMedia() - delete media without UI."

    invoke-static {v2, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p4

    invoke-direct {p0, p1, v3, v12, v0}, Lcom/oneplus/gallery2/OPGallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)V

    .line 611
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    move-object v6, v9

    .line 613
    check-cast v6, Lcom/oneplus/gallery2/GalleryActivity;

    .line 616
    .local v6, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    move-object v4, v12

    .line 617
    .local v4, "finalMediaType":Lcom/oneplus/gallery2/media/MediaType;
    new-instance v1, Lcom/oneplus/gallery2/OPGallery$5;

    move-object v2, p0

    move-object v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/gallery2/OPGallery$5;-><init>(Lcom/oneplus/gallery2/OPGallery;Ljava/util/List;Lcom/oneplus/gallery2/media/MediaType;ZLcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)V

    .line 686
    .local v1, "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    const-string v2, "Gallery.MediaDeletionConfirmation"

    invoke-virtual {v1, v6, v2}, Lcom/oneplus/gallery2/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 689
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public deleteMediaSet(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)Z
    .locals 8
    .param p2, "callback"    # Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;
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

    .prologue
    .local p1, "mediaSetToDelete":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/MediaSet;>;"
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 861
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery;->verifyAccess()V

    .line 862
    sget-object v0, Lcom/oneplus/gallery2/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v2, "deleteMediaSet() - Deleting media"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 932
    :goto_0
    return v0

    .line 867
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v2, "deleteMediaSet() - No media set to delete"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 870
    goto :goto_0

    .line 874
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 877
    .local v4, "mediaSetList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/MediaSet;>;"
    sget-object v0, Lcom/oneplus/gallery2/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 878
    .local v6, "activity":Landroid/app/Activity;
    if-nez v6, :cond_3

    .line 880
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v1, "deleteMediaSet() - No activity to show dialog"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-direct {p0, v4, p2}, Lcom/oneplus/gallery2/OPGallery;->deleteMediaSet(Ljava/util/List;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)V

    move v0, v7

    .line 882
    goto :goto_0

    :cond_3
    move-object v3, v6

    .line 884
    check-cast v3, Lcom/oneplus/gallery2/GalleryActivity;

    .line 887
    .local v3, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    new-instance v0, Lcom/oneplus/gallery2/OPGallery$8;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/OPGallery$8;-><init>(Lcom/oneplus/gallery2/OPGallery;Ljava/util/Collection;Lcom/oneplus/gallery2/GalleryActivity;Ljava/util/List;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)V

    const-string v1, "Gallery.MediaSetDeletionConfirmation"

    invoke-virtual {v0, v3, v1}, Lcom/oneplus/gallery2/OPGallery$8;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    move v0, v7

    .line 932
    goto :goto_0
.end method

.method public isSharingMediaActivityClicked(Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;->onShareActivityClicked(Ljava/lang/String;)V

    .line 1071
    :cond_0
    return-void
.end method

.method public renameMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Z
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    const/4 v0, 0x0

    .line 1191
    invoke-virtual {p0, p1, v0, v0}, Lcom/oneplus/gallery2/OPGallery;->renameMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public renameMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
    .locals 8
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Lcom/oneplus/base/OperationCallback",
            "<",
            "Ljava/lang/Object;",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 1203
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery;->verifyAccess()V

    .line 1204
    if-nez p1, :cond_0

    .line 1206
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v7, "renameMediaSet() - mediaSet is null"

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :goto_0
    return v1

    .line 1211
    :cond_0
    sget-object v5, Lcom/oneplus/gallery2/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 1212
    .local v6, "activity":Landroid/app/Activity;
    if-nez v6, :cond_1

    .line 1214
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v7, "renameMediaSet() - No activity to show dialog"

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1219
    :cond_1
    instance-of v5, p1, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    if-nez v5, :cond_2

    .line 1221
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v7, "renameMediaSet() - Only support album media set."

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    :cond_2
    if-eqz p2, :cond_3

    .line 1228
    new-instance v3, Lcom/oneplus/base/OperationCallbackHelper;

    invoke-direct {v3, p2, p3}, Lcom/oneplus/base/OperationCallbackHelper;-><init>(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)V

    .local v3, "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Object;>;"
    :goto_1
    move-object v4, p1

    .line 1232
    check-cast v4, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .local v4, "albumMediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    move-object v2, v6

    .line 1233
    check-cast v2, Lcom/oneplus/gallery2/GalleryActivity;

    .line 1236
    .local v2, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    new-instance v0, Lcom/oneplus/gallery2/OPGallery$11;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/OPGallery$11;-><init>(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/base/OperationCallbackHelper;Lcom/oneplus/gallery2/media/AlbumMediaSet;Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 1314
    .local v0, "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    const-string v1, "Gallery.AlbumRename"

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/gallery2/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 1317
    const/4 v1, 0x1

    goto :goto_0

    .line 1230
    .end local v0    # "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    .end local v2    # "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    .end local v3    # "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Object;>;"
    .end local v4    # "albumMediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Object;>;"
    goto :goto_1
.end method

.method public setCurrentMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery;->verifyAccess()V

    .line 1328
    if-nez p1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentMediaSet() - No media set"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const/4 v0, 0x0

    .line 1343
    :goto_0
    return-object v0

    .line 1333
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/OPGallery$12;

    const-string v1, "CurrentMediaSet"

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/gallery2/OPGallery$12;-><init>(Lcom/oneplus/gallery2/OPGallery;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 1341
    .local v0, "handle":Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1342
    sget-object v1, Lcom/oneplus/gallery2/OPGallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/gallery2/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z
    .locals 12
    .param p2, "sharingcallback"    # Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;
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

    .prologue
    .line 1351
    .local p1, "mediaToShare":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery;->verifyAccess()V

    .line 1352
    sget-object v8, Lcom/oneplus/gallery2/OPGallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1354
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v9, "shareMedia() - Waiting for previous sharing result"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const/4 v8, 0x0

    .line 1415
    :goto_0
    return v8

    .line 1358
    :cond_0
    iput-object p2, p0, Lcom/oneplus/gallery2/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    .line 1360
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1362
    :cond_1
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v9, "shareMedia() - No media to share"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const/4 v8, 0x0

    goto :goto_0

    .line 1365
    :cond_2
    sget-object v8, Lcom/oneplus/gallery2/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity;

    .line 1366
    .local v0, "activity":Lcom/oneplus/gallery2/GalleryActivity;
    if-nez v0, :cond_3

    .line 1368
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v9, "shareMedia() - No activity"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const/4 v8, 0x0

    goto :goto_0

    .line 1373
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1374
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1375
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 1377
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1378
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery2/media/Media;>;"
    const/4 v5, 0x0

    .line 1379
    .local v5, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1380
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 1381
    .restart local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_4
    invoke-direct {p0, v3, v5}, Lcom/oneplus/gallery2/OPGallery;->prepareSharingMedia(Landroid/content/Intent;Lcom/oneplus/gallery2/media/Media;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1382
    const/4 v8, 0x0

    goto :goto_0

    .line 1386
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery2/media/Media;>;"
    .end local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_5
    invoke-direct {p0, v3, p1}, Lcom/oneplus/gallery2/OPGallery;->prepareSharingMedia(Landroid/content/Intent;Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1387
    const/4 v8, 0x0

    goto :goto_0

    .line 1394
    :cond_6
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/oneplus/gallery2/ShareMediaIntentSender;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1395
    .local v7, "receiverIntent":Landroid/content/Intent;
    const-string v8, "GalleryID"

    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/base/BaseApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v8, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1399
    .local v6, "pendIntent":Landroid/app/PendingIntent;
    const v8, 0x7f090050

    invoke-virtual {v0, v8}, Lcom/oneplus/gallery2/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9

    invoke-static {v3, v8, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v1

    .line 1400
    .local v1, "chooserIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGallery;->m_MediaShareResultCallback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    invoke-virtual {v0, v1, v8}, Lcom/oneplus/gallery2/GalleryActivity;->startActivityForResult(Landroid/content/Intent;Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    .line 1403
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    if-eqz v8, :cond_7

    .line 1404
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;->onShareStarted(Z)V

    .line 1405
    :cond_7
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    const-string v9, "Gallery.ShareMedia"

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10, v11}, Lcom/oneplus/gallery2/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    sget-object v8, Lcom/oneplus/gallery2/OPGallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/gallery2/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1415
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1407
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    .end local v6    # "pendIntent":Landroid/app/PendingIntent;
    .end local v7    # "receiverIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1409
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v9, "shareMedia() - Fail to start activity"

    invoke-static {v8, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1410
    const/4 v8, 0x0

    goto/16 :goto_0
.end method
