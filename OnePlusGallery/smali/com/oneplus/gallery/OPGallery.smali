.class public final Lcom/oneplus/gallery/OPGallery;
.super Lcom/oneplus/gallery/Gallery;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/OPGallery$16;,
        Lcom/oneplus/gallery/OPGallery$MediaSetHandle;
    }
.end annotation


# static fields
.field private static final COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

.field private static final CONTROL_ITEM_ID_ADD:J = -0xdL

.field private static final CONTROL_ITEM_ID_FAVORITE:J = -0xfL

.field private static final FLAG_ADD_TO_FAVORITE_MEDIA_SET:I = 0x2

.field public static final INTENT_EXTRA_GALLERY_ID:Ljava/lang/String; = "GalleryID"


# instance fields
.field private m_AppTracker:Lcom/oneplus/gallery/AppTracker;

.field private final m_CurrentMediaSetHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/OPGallery$MediaSetHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaShareResultCallback:Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;

.field private m_SharingMediaCallback:Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    const/4 v1, 0x0

    new-instance v2, Lcom/oneplus/gallery/ui/ProcessingDialogBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery/ui/ProcessingDialogBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery/OPGallery;->COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    .line 72
    new-instance v0, Lcom/oneplus/gallery/OPGallery$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGallery$1;-><init>(Lcom/oneplus/gallery/OPGallery;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGallery;->m_MediaShareResultCallback:Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;

    .line 102
    sget-object v0, Lcom/oneplus/gallery/OPGallery;->COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/OPGallery;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 103
    sget-object v0, Lcom/oneplus/gallery/OPGallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/OPGallery;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 106
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/AppTracker;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/AppTracker;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/OPGallery;)Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/OPGallery$MediaSetHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/gallery/OPGallery$MediaSetHandle;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGallery;->removeCurrentMediaSet(Lcom/oneplus/gallery/OPGallery$MediaSetHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/OPGallery;Ljava/util/List;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p3, "x3"    # Lcom/oneplus/base/OperationCallback;
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # I

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/OPGallery;->addToInternal(Ljava/util/List;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/OPGallery;)Lcom/oneplus/gallery/AppTracker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/AppTracker;)Lcom/oneplus/gallery/AppTracker;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/gallery/AppTracker;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "x4"    # Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/OPGallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/OPGallery;Ljava/util/List;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/OPGallery;->deleteMediaSet(Ljava/util/List;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;)V

    return-void
.end method

.method private addToInternal(Ljava/util/List;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;I)Z
    .locals 15
    .param p2, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p3, "callback"    # Lcom/oneplus/base/OperationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Lcom/oneplus/base/OperationCallback;",
            "Landroid/os/Handler;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    new-instance v10, Lcom/oneplus/base/OperationCallbackHelper;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v10, v0, v1}, Lcom/oneplus/base/OperationCallbackHelper;-><init>(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)V

    .line 383
    .local v10, "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;
    sget-object v2, Lcom/oneplus/gallery/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    .line 384
    .local v11, "activity":Landroid/app/Activity;
    if-eqz v11, :cond_1

    move-object v13, v11

    .line 386
    check-cast v13, Lcom/oneplus/gallery/GalleryActivity;

    .line 389
    .local v13, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v13, v2}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 390
    .local v14, "isDarkMode":Z
    new-instance v12, Landroid/app/Dialog;

    if-eqz v14, :cond_0

    const v2, 0x7f0a000c

    :goto_0
    invoke-direct {v12, v11, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 391
    .local v12, "dialog":Landroid/app/Dialog;
    const v2, 0x7f090053

    invoke-virtual {v11, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 394
    const v2, 0x7f03000a

    invoke-virtual {v12, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 395
    const v2, 0x102000d

    invoke-virtual {v12, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    .line 398
    .local v7, "progressBar":Landroid/widget/ProgressBar;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 399
    new-instance v2, Lcom/oneplus/gallery/OPGallery$4;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/OPGallery$4;-><init>(Lcom/oneplus/gallery/OPGallery;)V

    invoke-virtual {v12, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 407
    new-instance v9, Lcom/oneplus/gallery/OPGallery$5;

    invoke-direct {v9, p0, v12}, Lcom/oneplus/gallery/OPGallery$5;-><init>(Lcom/oneplus/gallery/OPGallery;Landroid/app/Dialog;)V

    .line 415
    .local v9, "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/oneplus/gallery/GalleryDialogFragment;->setCancelable(Z)V

    .line 416
    const-string v2, "Gallery.MediaAddToAlbum"

    invoke-virtual {v9, v13, v2}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 427
    .end local v13    # "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    .end local v14    # "isDarkMode":Z
    :goto_1
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/media/OPMediaManager;

    .line 428
    .local v6, "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    if-eqz v6, :cond_2

    .line 430
    new-instance v2, Lcom/oneplus/gallery/OPGallery$6;

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lcom/oneplus/gallery/OPGallery$6;-><init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery/media/OPMediaManager;Landroid/widget/ProgressBar;ILcom/oneplus/gallery/GalleryDialogFragment;Lcom/oneplus/base/OperationCallbackHelper;)V

    const-wide/16 v4, 0x0

    invoke-interface {v6, v2, v4, v5}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    .line 492
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/oneplus/base/OperationCallbackHelper;->callOnStarted(Ljava/lang/Object;)V

    .line 494
    const/4 v2, 0x1

    return v2

    .line 390
    .end local v6    # "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    .end local v7    # "progressBar":Landroid/widget/ProgressBar;
    .end local v9    # "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    .end local v12    # "dialog":Landroid/app/Dialog;
    .restart local v13    # "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    .restart local v14    # "isDarkMode":Z
    :cond_0
    const v2, 0x7f0a000a

    goto :goto_0

    .line 420
    .end local v13    # "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    .end local v14    # "isDarkMode":Z
    :cond_1
    const/4 v12, 0x0

    .line 421
    .restart local v12    # "dialog":Landroid/app/Dialog;
    const/4 v7, 0x0

    .line 422
    .restart local v7    # "progressBar":Landroid/widget/ProgressBar;
    const/4 v9, 0x0

    .restart local v9    # "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    goto :goto_1

    .line 489
    .restart local v6    # "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v3, "addToInternal() - No media manager"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)V
    .locals 24
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "callback"    # Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 734
    .local p2, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    sget-object v4, Lcom/oneplus/gallery/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v6, "deleteMedia() - Deleting media"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_0
    return-void

    .line 741
    :cond_1
    sget-object v4, Lcom/oneplus/gallery/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/Activity;

    .line 742
    .local v18, "activity":Landroid/app/Activity;
    if-nez v18, :cond_2

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v6, "deleteMedia() - No activity to show dialog"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v5, v18

    .line 745
    check-cast v5, Lcom/oneplus/gallery/GalleryActivity;

    .line 748
    .local v5, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    new-instance v9, Lcom/oneplus/base/SimpleRef;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 749
    .local v9, "progressRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Float;>;"
    new-instance v8, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v8}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 751
    .local v8, "progressBarRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Landroid/widget/ProgressBar;>;"
    if-eqz v18, :cond_5

    .line 753
    move-object/from16 v7, p3

    .line 754
    .local v7, "finalMediaType":Lcom/oneplus/gallery/media/MediaType;
    new-instance v3, Lcom/oneplus/gallery/OPGallery$9;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/gallery/OPGallery$9;-><init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/GalleryActivity;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V

    .line 814
    .local v3, "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GalleryDialogFragment;->setCancelable(Z)V

    .line 815
    const-string v4, "Gallery.MediaDeletion"

    invoke-virtual {v3, v5, v4}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 821
    .end local v7    # "finalMediaType":Lcom/oneplus/gallery/media/MediaType;
    :goto_0
    const/4 v4, 0x1

    new-array v13, v4, [I

    .line 822
    .local v13, "deletedCount":[I
    new-instance v10, Lcom/oneplus/gallery/OPGallery$10;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    move-object v15, v9

    move-object/from16 v16, v8

    move-object/from16 v17, v3

    invoke-direct/range {v10 .. v17}, Lcom/oneplus/gallery/OPGallery$10;-><init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;[ILjava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;Lcom/oneplus/gallery/GalleryDialogFragment;)V

    .line 860
    .local v10, "deletionCallback":Lcom/oneplus/gallery/media/MediaDeletionCallback;
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v4

    const-class v6, Lcom/oneplus/gallery/media/MediaManager;

    invoke-virtual {v4, v6}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v23

    check-cast v23, Lcom/oneplus/gallery/media/MediaManager;

    .line 861
    .local v23, "mediaManager":Lcom/oneplus/gallery/media/MediaManager;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/OPGallery;->getHandler()Landroid/os/Handler;

    move-result-object v20

    .line 862
    .local v20, "handler":Landroid/os/Handler;
    sget-object v4, Lcom/oneplus/gallery/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/oneplus/gallery/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 863
    if-eqz p4, :cond_3

    .line 864
    invoke-virtual/range {p4 .. p4}, Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;->onDeletionProcessStarted()V

    .line 865
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v21, v4, -0x1

    .local v21, "i":I
    :goto_1
    if-ltz v21, :cond_0

    .line 867
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/oneplus/gallery/media/Media;

    .line 869
    .local v22, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz p1, :cond_6

    .line 870
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v10, v2, v4}, Lcom/oneplus/gallery/media/MediaSet;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v19

    .line 873
    .local v19, "handle":Lcom/oneplus/base/Handle;
    :goto_2
    invoke-static/range {v19 .. v19}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p4, :cond_4

    .line 875
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V

    .line 876
    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V

    .line 865
    :cond_4
    add-int/lit8 v21, v21, -0x1

    goto :goto_1

    .line 818
    .end local v3    # "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    .end local v10    # "deletionCallback":Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .end local v13    # "deletedCount":[I
    .end local v19    # "handle":Lcom/oneplus/base/Handle;
    .end local v20    # "handler":Landroid/os/Handler;
    .end local v21    # "i":I
    .end local v22    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v23    # "mediaManager":Lcom/oneplus/gallery/media/MediaManager;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    goto :goto_0

    .line 872
    .restart local v10    # "deletionCallback":Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .restart local v13    # "deletedCount":[I
    .restart local v20    # "handler":Landroid/os/Handler;
    .restart local v21    # "i":I
    .restart local v22    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v23    # "mediaManager":Lcom/oneplus/gallery/media/MediaManager;
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v10, v2, v4}, Lcom/oneplus/gallery/media/MediaManager;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v19

    .restart local v19    # "handle":Lcom/oneplus/base/Handle;
    goto :goto_2
.end method

.method private deleteMediaSet(Ljava/util/List;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;)V
    .locals 21
    .param p2, "callback"    # Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;",
            "Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, "mediaSetToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/MediaSet;>;"
    sget-object v3, Lcom/oneplus/gallery/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "deleteMediaSet() - Deleting media"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_0
    return-void

    .line 973
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/Activity;

    .line 974
    .local v16, "activity":Landroid/app/Activity;
    if-nez v16, :cond_2

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "deleteMediaSet() - No activity to show dialog"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v4, v16

    .line 977
    check-cast v4, Lcom/oneplus/gallery/GalleryActivity;

    .line 980
    .local v4, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    new-instance v7, Lcom/oneplus/base/SimpleRef;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 981
    .local v7, "progressRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Float;>;"
    new-instance v6, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v6}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 983
    .local v6, "progressBarRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Landroid/widget/ProgressBar;>;"
    if-eqz v16, :cond_5

    .line 985
    new-instance v2, Lcom/oneplus/gallery/OPGallery$12;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/gallery/OPGallery$12;-><init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/GalleryActivity;Ljava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V

    .line 1018
    .local v2, "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GalleryDialogFragment;->setCancelable(Z)V

    .line 1019
    const-string v3, "Gallery.MediaSetDeletion"

    invoke-virtual {v2, v4, v3}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 1025
    :goto_0
    const/4 v3, 0x1

    new-array v11, v3, [I

    .line 1026
    .local v11, "deletedCount":[I
    new-instance v8, Lcom/oneplus/gallery/OPGallery$13;

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v12, p1

    move-object v13, v7

    move-object v14, v6

    move-object v15, v2

    invoke-direct/range {v8 .. v15}, Lcom/oneplus/gallery/OPGallery$13;-><init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;[ILjava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;Lcom/oneplus/gallery/GalleryDialogFragment;)V

    .line 1070
    .local v8, "deletionCallback":Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/OPGallery;->getHandler()Landroid/os/Handler;

    move-result-object v18

    .line 1071
    .local v18, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/gallery/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1072
    if-eqz p2, :cond_3

    .line 1073
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;->onDeletionProcessStarted()V

    .line 1074
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_1
    if-ltz v19, :cond_0

    .line 1076
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/gallery/media/MediaSet;

    .line 1077
    .local v20, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v8, v1, v3}, Lcom/oneplus/gallery/media/MediaSet;->delete(Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v17

    .line 1078
    .local v17, "handle":Lcom/oneplus/base/Handle;
    invoke-static/range {v17 .. v17}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1080
    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1081
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v8, v0, v3}, Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/MediaSet;Z)V

    .line 1074
    :cond_4
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 1022
    .end local v2    # "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    .end local v8    # "deletionCallback":Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;
    .end local v11    # "deletedCount":[I
    .end local v17    # "handle":Lcom/oneplus/base/Handle;
    .end local v18    # "handler":Landroid/os/Handler;
    .end local v19    # "i":I
    .end local v20    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    goto :goto_0
.end method

.method private prepareSharingMedia(Landroid/content/Intent;Lcom/oneplus/gallery/media/Media;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v2, 0x0

    .line 1097
    if-nez p2, :cond_0

    .line 1099
    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v4, "prepareSharingMedia() - No media to share"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :goto_0
    return v2

    .line 1102
    :cond_0
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1103
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 1104
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1115
    :goto_1
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1117
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1134
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1107
    :cond_1
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, "filePath":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1110
    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v4, "prepareSharingMedia() - No file path"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    :cond_2
    const-string v2, "android.intent.extra.STREAM"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1120
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v3, "prepareSharingMedia() - media\'s mimeType is empty"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    sget-object v2, Lcom/oneplus/gallery/OPGallery$16;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 1124
    :pswitch_0
    const-string v2, "image/*"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1127
    :pswitch_1
    const-string v2, "video/*"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1130
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v3, "prepareSharingMedia() - Unknown media type"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1121
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
            "Lcom/oneplus/gallery/media/Media;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "mediaCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery/media/Media;>;"
    const/4 v9, 0x0

    .line 1141
    const/4 v6, 0x0

    .line 1142
    .local v6, "mimeType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1143
    .local v7, "mimeTypePrefix":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1144
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

    check-cast v5, Lcom/oneplus/gallery/media/Media;

    .line 1146
    .local v5, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v5, :cond_0

    .line 1148
    invoke-interface {v5}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 1149
    .local v1, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 1150
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    :goto_1
    invoke-interface {v5}, Lcom/oneplus/gallery/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 1159
    .local v2, "currentType":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1161
    const-string v10, "*/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1163
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1165
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1167
    const-string v6, "*/*"

    .line 1168
    const-string v7, "*/"

    goto :goto_0

    .line 1153
    .end local v2    # "currentType":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 1154
    .local v3, "filePath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1156
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1170
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

    .line 1172
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

    .line 1178
    :cond_3
    move-object v6, v2

    .line 1179
    const/16 v10, 0x2f

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1180
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

    .line 1183
    .end local v0    # "charIndex":I
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "currentType":Ljava/lang/String;
    .end local v5    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1185
    iget-object v10, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v11, "prepareSharingMedia() - No media to share"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :goto_3
    return v9

    .line 1188
    :cond_6
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1190
    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    const/4 v9, 0x1

    goto :goto_3
.end method

.method private removeCurrentMediaSet(Lcom/oneplus/gallery/OPGallery$MediaSetHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/gallery/OPGallery$MediaSetHandle;

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery;->verifyAccess()V

    .line 1199
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1200
    .local v0, "isCurrent":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1203
    sget-object v1, Lcom/oneplus/gallery/OPGallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1207
    :cond_0
    :goto_1
    return-void

    .line 1199
    .end local v0    # "isCurrent":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1205
    .restart local v0    # "isCurrent":Z
    :cond_2
    sget-object v2, Lcom/oneplus/gallery/OPGallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/OPGallery$MediaSetHandle;

    iget-object v1, v1, Lcom/oneplus/gallery/OPGallery$MediaSetHandle;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addTo(Ljava/util/List;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
    .locals 2
    .param p2, "mediaSetsToExclude"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Lcom/oneplus/base/OperationCallback",
            "<***>;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .local p3, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<***>;"
    const/4 v0, 0x0

    .line 121
    .local v0, "mediaSetCollection":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/MediaSet;>;"
    if-eqz p2, :cond_0

    .line 123
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "mediaSetCollection":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/MediaSet;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 124
    .restart local v0    # "mediaSetCollection":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/MediaSet;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/oneplus/gallery/OPGallery;->addTo(Ljava/util/List;Ljava/util/Set;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    move-result v1

    return v1
.end method

.method public addTo(Ljava/util/List;Ljava/util/Set;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
    .locals 16
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;",
            "Lcom/oneplus/base/OperationCallback",
            "<***>;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .local p2, "mediaSetsToExclude":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/MediaSet;>;"
    .local p3, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<***>;"
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/OPGallery;->verifyAccess()V

    .line 145
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    :cond_0
    const/4 v3, 0x0

    .line 368
    :goto_0
    return v3

    .line 149
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/Activity;

    .line 150
    .local v15, "activity":Landroid/app/Activity;
    if-nez v15, :cond_2

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v4, "addTo() - No activity to show dialog"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v3, 0x0

    goto :goto_0

    .line 157
    :cond_2
    instance-of v3, v15, Lcom/oneplus/gallery/OPGalleryActivity;

    if-nez v3, :cond_3

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v4, "addTo() - Only support OPGalleryActivity"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object v13, v15

    .line 162
    check-cast v13, Lcom/oneplus/gallery/GalleryActivity;

    .line 165
    .local v13, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    check-cast v15, Lcom/oneplus/gallery/OPGalleryActivity;

    .end local v15    # "activity":Landroid/app/Activity;
    sget-object v3, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v15, v3}, Lcom/oneplus/gallery/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/media/MediaSetList;

    .line 166
    .local v7, "mediaSetList":Lcom/oneplus/gallery/media/MediaSetList;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Lcom/oneplus/gallery/media/MediaSetList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 167
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 170
    :cond_5
    new-instance v6, Lcom/oneplus/base/OperationCallbackHelper;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lcom/oneplus/base/OperationCallbackHelper;-><init>(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)V

    .line 173
    .local v6, "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;
    new-instance v5, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v5}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 174
    .local v5, "dialogFragmentRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Lcom/oneplus/gallery/GalleryDialogFragment;>;"
    new-instance v2, Lcom/oneplus/gallery/OPGallery$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/gallery/OPGallery$2;-><init>(Lcom/oneplus/gallery/OPGallery;Ljava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/OperationCallbackHelper;Lcom/oneplus/gallery/media/MediaSetList;)V

    .line 301
    .local v2, "bottomSheetListener":Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;
    new-instance v8, Lcom/oneplus/gallery/OPGallery$3;

    move-object/from16 v9, p0

    move-object v10, v7

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    move-object v14, v2

    invoke-direct/range {v8 .. v14}, Lcom/oneplus/gallery/OPGallery$3;-><init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/media/MediaSetList;Ljava/util/Set;Ljava/util/List;Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;)V

    invoke-interface {v5, v8}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 363
    invoke-interface {v5}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/GalleryDialogFragment;

    const-string v4, "Gallery.AddTo"

    invoke-virtual {v3, v13, v4}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 366
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/oneplus/base/OperationCallbackHelper;->callOnStarted(Ljava/lang/Object;)V

    .line 368
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public createAlbum()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/gallery/OPGallery;->createAlbum(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

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
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery;->verifyAccess()V

    .line 509
    sget-object v4, Lcom/oneplus/gallery/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 510
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 512
    iget-object v4, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "createAlbum() - No activity to show dialog"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v4, 0x0

    .line 601
    :goto_0
    return v4

    :cond_0
    move-object v3, v0

    .line 515
    check-cast v3, Lcom/oneplus/gallery/GalleryActivity;

    .line 519
    .local v3, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    if-eqz p1, :cond_1

    .line 520
    new-instance v1, Lcom/oneplus/base/OperationCallbackHelper;

    invoke-direct {v1, p1, p2}, Lcom/oneplus/base/OperationCallbackHelper;-><init>(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)V

    .line 525
    .local v1, "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    :goto_1
    new-instance v2, Lcom/oneplus/gallery/OPGallery$7;

    invoke-direct {v2, p0, v3, v1}, Lcom/oneplus/gallery/OPGallery$7;-><init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/base/OperationCallbackHelper;)V

    .line 599
    .local v2, "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    const-string v4, "Gallery.AlbumCreation"

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 601
    const/4 v4, 0x1

    goto :goto_0

    .line 522
    .end local v1    # "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    .end local v2    # "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    goto :goto_1
.end method

.method public deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z
    .locals 12
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p3, "callback"    # Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;
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

    .prologue
    .line 610
    .local p2, "mediaToDelete":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery/media/Media;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery;->verifyAccess()V

    .line 611
    sget-object v1, Lcom/oneplus/gallery/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v6, "deleteMedia() - Deleting media"

    invoke-static {v1, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v1, 0x0

    .line 726
    :goto_0
    return v1

    .line 616
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v6, "deleteMedia() - No media to delete"

    invoke-static {v1, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v1, 0x0

    goto :goto_0

    .line 623
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v1

    sget-object v6, Lcom/oneplus/gallery/media/MediaSet$Type;->USER:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-eq v1, v6, :cond_6

    instance-of v1, p1, Lcom/oneplus/gallery/media/FavoriteMediaSet;

    if-nez v1, :cond_6

    :cond_3
    const/4 v4, 0x1

    .line 624
    .local v4, "deleteOriginal":Z
    :goto_1
    const/4 v11, 0x0

    .line 625
    .local v11, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 626
    .local v2, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/media/Media;

    .line 628
    .local v10, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v10, :cond_4

    .line 630
    if-nez v11, :cond_7

    .line 631
    invoke-interface {v10}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v11

    .line 634
    :cond_5
    :goto_3
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 623
    .end local v2    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .end local v4    # "deleteOriginal":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v11    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 632
    .restart local v2    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v4    # "deleteOriginal":Z
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v11    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    :cond_7
    sget-object v1, Lcom/oneplus/gallery/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery/media/MediaType;

    if-eq v11, v1, :cond_5

    invoke-interface {v10}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v1

    if-eq v11, v1, :cond_5

    .line 633
    sget-object v11, Lcom/oneplus/gallery/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery/media/MediaType;

    goto :goto_3

    .line 637
    .end local v10    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 639
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v6, "deleteMedia() - No media to delete"

    invoke-static {v1, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v1, 0x0

    goto :goto_0

    .line 644
    :cond_9
    sget-object v1, Lcom/oneplus/gallery/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    .line 645
    .local v8, "activity":Landroid/app/Activity;
    if-nez v8, :cond_a

    .line 647
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v6, "deleteMedia() - No activity to show dialog"

    invoke-static {v1, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-direct {p0, p1, v2, v11, p3}, Lcom/oneplus/gallery/OPGallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)V

    .line 649
    const/4 v1, 0x1

    goto :goto_0

    :cond_a
    move-object v5, v8

    .line 651
    check-cast v5, Lcom/oneplus/gallery/GalleryActivity;

    .line 654
    .local v5, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    move-object v3, v11

    .line 655
    .local v3, "finalMediaType":Lcom/oneplus/gallery/media/MediaType;
    new-instance v0, Lcom/oneplus/gallery/OPGallery$8;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/gallery/OPGallery$8;-><init>(Lcom/oneplus/gallery/OPGallery;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;ZLcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)V

    .line 724
    .local v0, "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    const-string v1, "Gallery.MediaDeletionConfirmation"

    invoke-virtual {v0, v5, v1}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 726
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public deleteMediaSet(Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;)Z
    .locals 8
    .param p2, "callback"    # Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;
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

    .prologue
    .local p1, "mediaSetToDelete":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery/media/MediaSet;>;"
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 887
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery;->verifyAccess()V

    .line 888
    sget-object v0, Lcom/oneplus/gallery/OPGallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v2, "deleteMediaSet() - Deleting media"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 958
    :goto_0
    return v0

    .line 893
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v2, "deleteMediaSet() - No media set to delete"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 896
    goto :goto_0

    .line 900
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 903
    .local v4, "mediaSetList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/MediaSet;>;"
    sget-object v0, Lcom/oneplus/gallery/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 904
    .local v6, "activity":Landroid/app/Activity;
    if-nez v6, :cond_3

    .line 906
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v1, "deleteMediaSet() - No activity to show dialog"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-direct {p0, v4, p2}, Lcom/oneplus/gallery/OPGallery;->deleteMediaSet(Ljava/util/List;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;)V

    move v0, v7

    .line 908
    goto :goto_0

    :cond_3
    move-object v3, v6

    .line 910
    check-cast v3, Lcom/oneplus/gallery/GalleryActivity;

    .line 913
    .local v3, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    new-instance v0, Lcom/oneplus/gallery/OPGallery$11;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/OPGallery$11;-><init>(Lcom/oneplus/gallery/OPGallery;Ljava/util/Collection;Lcom/oneplus/gallery/GalleryActivity;Ljava/util/List;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;)V

    const-string v1, "Gallery.MediaSetDeletionConfirmation"

    invoke-virtual {v0, v3, v1}, Lcom/oneplus/gallery/OPGallery$11;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    move v0, v7

    .line 958
    goto :goto_0
.end method

.method public isSharingMediaActivityClicked(Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;->onShareActivityClicked(Ljava/lang/String;)V

    .line 1091
    :cond_0
    return-void
.end method

.method public renameMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Z
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    const/4 v0, 0x0

    .line 1211
    invoke-virtual {p0, p1, v0, v0}, Lcom/oneplus/gallery/OPGallery;->renameMediaSet(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public renameMediaSet(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
    .locals 8
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Lcom/oneplus/base/OperationCallback",
            "<",
            "Ljava/lang/Object;",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 1224
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery;->verifyAccess()V

    .line 1225
    if-nez p1, :cond_0

    .line 1227
    iget-object v6, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v7, "renameMediaSet() - mediaSet is null"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    :goto_0
    return v5

    .line 1232
    :cond_0
    sget-object v6, Lcom/oneplus/gallery/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1233
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1235
    iget-object v6, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v7, "renameMediaSet() - No activity to show dialog"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1240
    :cond_1
    instance-of v6, p1, Lcom/oneplus/gallery/media/AlbumMediaSet;

    if-nez v6, :cond_2

    .line 1242
    iget-object v6, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v7, "renameMediaSet() - Only support album media set."

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1248
    :cond_2
    if-eqz p2, :cond_3

    .line 1249
    new-instance v2, Lcom/oneplus/base/OperationCallbackHelper;

    invoke-direct {v2, p2, p3}, Lcom/oneplus/base/OperationCallbackHelper;-><init>(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)V

    .local v2, "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    :goto_1
    move-object v1, p1

    .line 1253
    check-cast v1, Lcom/oneplus/gallery/media/AlbumMediaSet;

    .local v1, "albumMediaSet":Lcom/oneplus/gallery/media/AlbumMediaSet;
    move-object v4, v0

    .line 1254
    check-cast v4, Lcom/oneplus/gallery/GalleryActivity;

    .line 1257
    .local v4, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    new-instance v3, Lcom/oneplus/gallery/OPGallery$14;

    invoke-direct {v3, p0, v4, v1, v2}, Lcom/oneplus/gallery/OPGallery$14;-><init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/base/OperationCallbackHelper;)V

    .line 1332
    .local v3, "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    const-string v5, "Gallery.AlbumRename"

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 1335
    const/4 v5, 0x1

    goto :goto_0

    .line 1251
    .end local v1    # "albumMediaSet":Lcom/oneplus/gallery/media/AlbumMediaSet;
    .end local v2    # "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    .end local v3    # "dialogFragment":Lcom/oneplus/gallery/GalleryDialogFragment;
    .end local v4    # "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    goto :goto_1
.end method

.method public setCurrentMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 1345
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery;->verifyAccess()V

    .line 1346
    if-nez p1, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentMediaSet() - No media set"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const/4 v0, 0x0

    .line 1361
    :goto_0
    return-object v0

    .line 1351
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/OPGallery$15;

    const-string v1, "CurrentMediaSet"

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/gallery/OPGallery$15;-><init>(Lcom/oneplus/gallery/OPGallery;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1359
    .local v0, "handle":Lcom/oneplus/gallery/OPGallery$MediaSetHandle;
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery;->m_CurrentMediaSetHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1360
    sget-object v1, Lcom/oneplus/gallery/OPGallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/gallery/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;)Z
    .locals 12
    .param p2, "sharingcallback"    # Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;
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

    .prologue
    .line 1369
    .local p1, "mediaToShare":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery/media/Media;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery;->verifyAccess()V

    .line 1370
    sget-object v8, Lcom/oneplus/gallery/OPGallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1372
    iget-object v8, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v9, "shareMedia() - Waiting for previous sharing result"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const/4 v8, 0x0

    .line 1433
    :goto_0
    return v8

    .line 1376
    :cond_0
    iput-object p2, p0, Lcom/oneplus/gallery/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;

    .line 1378
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1380
    :cond_1
    iget-object v8, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v9, "shareMedia() - No media to share"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const/4 v8, 0x0

    goto :goto_0

    .line 1383
    :cond_2
    sget-object v8, Lcom/oneplus/gallery/OPGallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryActivity;

    .line 1384
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    if-nez v0, :cond_3

    .line 1386
    iget-object v8, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v9, "shareMedia() - No activity"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const/4 v8, 0x0

    goto :goto_0

    .line 1391
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1392
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1393
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 1395
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1396
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/media/Media;>;"
    const/4 v5, 0x0

    .line 1397
    .local v5, "media":Lcom/oneplus/gallery/media/Media;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1398
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "media":Lcom/oneplus/gallery/media/Media;
    check-cast v5, Lcom/oneplus/gallery/media/Media;

    .line 1399
    .restart local v5    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_4
    invoke-direct {p0, v3, v5}, Lcom/oneplus/gallery/OPGallery;->prepareSharingMedia(Landroid/content/Intent;Lcom/oneplus/gallery/media/Media;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1400
    const/4 v8, 0x0

    goto :goto_0

    .line 1404
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/media/Media;>;"
    .end local v5    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_5
    invoke-direct {p0, v3, p1}, Lcom/oneplus/gallery/OPGallery;->prepareSharingMedia(Landroid/content/Intent;Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1405
    const/4 v8, 0x0

    goto :goto_0

    .line 1412
    :cond_6
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/gallery/GalleryApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/oneplus/gallery/receiver/ReceiverIntentSender;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1413
    .local v7, "receiverIntent":Landroid/content/Intent;
    const-string v8, "GalleryID"

    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/gallery/GalleryApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v8, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1417
    .local v6, "pendIntent":Landroid/app/PendingIntent;
    const v8, 0x7f090050

    invoke-virtual {v0, v8}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9

    invoke-static {v3, v8, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v1

    .line 1418
    .local v1, "chooserIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/oneplus/gallery/OPGallery;->m_MediaShareResultCallback:Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;

    invoke-virtual {v0, v1, v8}, Lcom/oneplus/gallery/GalleryActivity;->startActivityForResult(Landroid/content/Intent;Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    .line 1421
    iget-object v8, p0, Lcom/oneplus/gallery/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;

    if-eqz v8, :cond_7

    .line 1422
    iget-object v8, p0, Lcom/oneplus/gallery/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;->onShareStarted(Z)V

    .line 1423
    :cond_7
    iget-object v8, p0, Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    const-string v9, "Gallery.ShareMedia"

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10, v11}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    sget-object v8, Lcom/oneplus/gallery/OPGallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/gallery/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1433
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1425
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    .end local v6    # "pendIntent":Landroid/app/PendingIntent;
    .end local v7    # "receiverIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1427
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v9, "shareMedia() - Fail to start activity"

    invoke-static {v8, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1428
    const/4 v8, 0x0

    goto/16 :goto_0
.end method
