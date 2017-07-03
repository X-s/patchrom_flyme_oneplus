.class public Lcom/oneplus/gallery2/GridViewItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GridViewItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/GridViewItemAdapter$SquareDrawable;,
        Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DURATION_THUMB_TRANSITION:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "GridViewItemAdapter"


# instance fields
.field private final m_CheckVisibleRangeRunnable:Ljava/lang/Runnable;

.field private m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private m_GreySquare:Lcom/oneplus/gallery2/GridViewItemAdapter$SquareDrawable;

.field private m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

.field private m_GridviewItemHeight:I

.field private m_GridviewItemWidth:I

.field private m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsBlackMode:Z

.field private m_IsCameraRoll:Z

.field private m_IsGrouping:Z

.field private m_IsVisibleRangeCheckScheduled:Z

.field private m_LowResolutionDecodeHandleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private m_ThumbnailImageManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

.field private final m_VideoDurationCallback:Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

.field private final m_ViewHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 50
    new-instance v0, Lcom/oneplus/gallery2/GridViewItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewItemAdapter$1;-><init>(Lcom/oneplus/gallery2/GridViewItemAdapter;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_CheckVisibleRangeRunnable:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_LowResolutionDecodeHandleMap:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    .line 72
    new-instance v0, Lcom/oneplus/gallery2/GridViewItemAdapter$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewItemAdapter$2;-><init>(Lcom/oneplus/gallery2/GridViewItemAdapter;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_VideoDurationCallback:Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    .line 228
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    .line 229
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaList;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 230
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ThumbnailImageManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    .line 231
    invoke-virtual {p1}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsBlackMode:Z

    .line 232
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "GridViewItemAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor m_MediaList.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewItemAdapter;->onInitialize()V

    .line 238
    return-void

    .line 235
    :cond_0
    const-string v0, "GridViewItemAdapter"

    const-string v1, "gridviewitemAdapter m_MediaList is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/oneplus/gallery2/GridViewItemAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewItemAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsVisibleRangeCheckScheduled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/GridViewItemAdapter;)Lcom/oneplus/gallery2/GridViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewItemAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/GridViewItemAdapter;Lcom/oneplus/gallery2/media/Media;J)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewItemAdapter;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "x2"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/GridViewItemAdapter;->onVideoDurationObtained(Lcom/oneplus/gallery2/media/Media;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/GridViewItemAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewItemAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/GridViewItemAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewItemAdapter;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsBlackMode:Z

    return v0
.end method

.method private getVideoTime(J)Ljava/lang/String;
    .locals 13
    .param p1, "durationMillis"    # J

    .prologue
    .line 354
    const-wide/16 v8, 0x1f4

    add-long/2addr v8, p1

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 355
    .local v0, "duration":J
    const-wide/16 v8, 0xe10

    div-long v2, v0, v8

    .line 356
    .local v2, "hours":J
    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v2

    sub-long v8, v0, v8

    const-wide/16 v10, 0x3c

    div-long v4, v8, v10

    .line 357
    .local v4, "minutes":J
    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v4

    add-long/2addr v8, v10

    sub-long v6, v0, v8

    .line 359
    .local v6, "seconds":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_0

    .line 360
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 361
    :goto_0
    return-object v8

    :cond_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private onInitialize()V
    .locals 3

    .prologue
    .line 263
    const-string v0, "GridViewItemAdapter"

    const-string v1, "onInitialize"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsBlackMode:Z

    .line 265
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsCameraRoll:Z

    .line 266
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsGrouping:Z

    .line 267
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridviewItemHeight:I

    .line 268
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridviewItemWidth:I

    .line 269
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 270
    new-instance v0, Lcom/oneplus/gallery2/GridViewItemAdapter$SquareDrawable;

    iget v1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridviewItemWidth:I

    iget v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridviewItemHeight:I

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/gallery2/GridViewItemAdapter$SquareDrawable;-><init>(Lcom/oneplus/gallery2/GridViewItemAdapter;II)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GreySquare:Lcom/oneplus/gallery2/GridViewItemAdapter$SquareDrawable;

    .line 271
    return-void
.end method

.method private onVideoDurationObtained(Lcom/oneplus/gallery2/media/Media;J)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "duration"    # J

    .prologue
    .line 518
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .line 522
    .local v0, "viewHolder":Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    if-eqz v0, :cond_0

    .line 526
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->duration:Ljava/lang/Long;

    .line 527
    iget-object v1, v0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->itemInfoTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Lcom/oneplus/gallery2/GridViewItemAdapter;->getVideoTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAllBitmapDecodeTasks()V
    .locals 3

    .prologue
    .line 242
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 245
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 248
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_LowResolutionDecodeHandleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_LowResolutionDecodeHandleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 251
    .restart local v0    # "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 253
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public final findViewHolder(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    :cond_0
    const-string v2, "GridViewItemAdapter"

    const-string v3, "getItem() - No Data, m_MediaList is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_1
    :goto_0
    return-object v1

    .line 295
    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 297
    const-string v2, "GridViewItemAdapter"

    const-string v3, "getItem() - Invalid item position"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_3
    iget-boolean v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsGrouping:Z

    if-eqz v2, :cond_4

    .line 302
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v2, p1}, Lcom/oneplus/gallery2/GridViewFragment;->findItemGroupIndex(I)I

    move-result v0

    .line 303
    .local v0, "groupIndexCounts":I
    sub-int/2addr p1, v0

    .line 306
    .end local v0    # "groupIndexCounts":I
    :cond_4
    const-string v2, "GridViewItemAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItem() UI position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    if-ltz p1, :cond_7

    .line 310
    iget-boolean v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsCameraRoll:Z

    if-eqz v2, :cond_6

    .line 313
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/GridViewFragment;->getStartCameraDataPosition()I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment;->getStartCameraDataPosition()I

    move-result v1

    if-le p1, v1, :cond_5

    add-int/lit8 v1, p1, -0x1

    :goto_1
    invoke-interface {v2, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_5
    move v1, p1

    goto :goto_1

    .line 322
    :cond_6
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 323
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 326
    :cond_7
    const-string v2, "GridViewItemAdapter"

    const-string v3, "getItem() - Invalid item position"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsCameraRoll:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 283
    :goto_0
    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemInternal(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 335
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 339
    const-string v1, "GridViewItemAdapter"

    const-string v2, "getItemInternal() invalid position "

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-object v0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 43
    check-cast p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewItemAdapter;->onBindViewHolder(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;I)V
    .locals 12
    .param p1, "viewholder"    # Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 368
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v4, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    .line 373
    .local v4, "prevMedia":Lcom/oneplus/gallery2/media/Media;
    if-eqz v4, :cond_2

    .line 374
    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_2
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->durationObtainingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v9

    iput-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->durationObtainingHandle:Lcom/oneplus/base/Handle;

    .line 379
    iget-boolean v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsCameraRoll:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v9}, Lcom/oneplus/gallery2/GridViewFragment;->getStartCameraDataPosition()I

    move-result v9

    if-ne p2, v9, :cond_4

    .line 383
    iget-object v10, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-boolean v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsBlackMode:Z

    if-eqz v9, :cond_3

    const v9, 0x7f02006d

    :goto_1
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GreySquare:Lcom/oneplus/gallery2/GridViewItemAdapter$SquareDrawable;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 386
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 387
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    .line 388
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->lowResolutionThumbDecodeHandle:Lcom/oneplus/base/Handle;

    .line 389
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->highResolutionThumbDecodeHandle:Lcom/oneplus/base/Handle;

    .line 390
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 498
    :goto_2
    iget-boolean v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsVisibleRangeCheckScheduled:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v9, :cond_0

    .line 500
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsVisibleRangeCheckScheduled:Z

    .line 501
    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    iget-object v10, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_CheckVisibleRangeRunnable:Ljava/lang/Runnable;

    invoke-static {v9, v10}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 383
    :cond_3
    const v9, 0x7f02006e

    goto :goto_1

    .line 394
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    .line 395
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 399
    iget-boolean v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsCameraRoll:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v9}, Lcom/oneplus/gallery2/GridViewFragment;->getStartCameraDataPosition()I

    move-result v9

    if-le p2, v9, :cond_5

    .line 400
    add-int/lit8 v2, p2, -0x1

    .line 404
    .local v2, "mediaindex":I
    :goto_3
    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v9}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v9

    if-lt v2, v9, :cond_6

    .line 406
    const-string v9, "GridViewItemAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onBindViewHolder() - media index out of bounds MediaList.length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v11}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    .end local v2    # "mediaindex":I
    :cond_5
    move v2, p2

    .restart local v2    # "mediaindex":I
    goto :goto_3

    .line 410
    :cond_6
    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v10, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 411
    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/GridViewItemAdapter;->getItemInternal(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery2/GridViewFragment;->isSelectionMediaListContains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {p1, v9}, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 415
    :goto_4
    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v9, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 418
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iput-object v1, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    .line 422
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->mimeType:Ljava/lang/String;

    .line 425
    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v9, v1}, Lcom/oneplus/gallery2/GridViewFragment;->getThumbnailInfo(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    move-result-object v6

    .line 426
    .local v6, "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    invoke-virtual {v6}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->getHQThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 427
    .local v5, "thumb":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 428
    .local v0, "isThumbReady":Z
    const/4 v9, 0x0

    iput-boolean v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->isThumbDecoded:Z

    .line 429
    if-eqz v5, :cond_a

    .line 431
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v10, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;

    invoke-direct {v10, v5}, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    const/4 v9, 0x1

    iput-boolean v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->isThumbDecoded:Z

    .line 433
    const/4 v0, 0x1

    .line 439
    :goto_5
    if-nez v5, :cond_7

    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ThumbnailImageManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v9, :cond_7

    .line 441
    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ThumbnailImageManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-interface {v9, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->getTempThumbnailImage(Lcom/oneplus/gallery2/media/Media;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 442
    if-eqz v5, :cond_7

    .line 444
    const-string v9, "GridViewItemAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onBindViewHolder() - Use temp thumb for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v10, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;

    invoke-direct {v10, v5}, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    const/4 v0, 0x1

    .line 451
    :cond_7
    if-nez v0, :cond_8

    .line 453
    new-instance v7, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v9, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    iget-object v10, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v7, v9, v10}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 454
    .local v7, "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    .end local v7    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_8
    const/4 v9, 0x0

    iput-boolean v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    .line 459
    instance-of v9, v1, Lcom/oneplus/gallery2/media/VideoMedia;

    if-eqz v9, :cond_e

    move-object v8, v1

    .line 460
    check-cast v8, Lcom/oneplus/gallery2/media/VideoMedia;

    .line 461
    .local v8, "videoMedia":Lcom/oneplus/gallery2/media/VideoMedia;
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 462
    invoke-interface {v8}, Lcom/oneplus/gallery2/media/VideoMedia;->isSlowMotion()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 463
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    const v10, 0x7f020098

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 468
    :goto_6
    invoke-interface {v8}, Lcom/oneplus/gallery2/media/VideoMedia;->peekDuration()Ljava/lang/Long;

    move-result-object v9

    iput-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->duration:Ljava/lang/Long;

    .line 469
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->duration:Ljava/lang/Long;

    if-eqz v9, :cond_d

    .line 470
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->itemInfoTextView:Landroid/widget/TextView;

    iget-object v10, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->duration:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/oneplus/gallery2/GridViewItemAdapter;->getVideoTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 413
    .end local v0    # "isThumbReady":Z
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v5    # "thumb":Landroid/graphics/Bitmap;
    .end local v6    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    .end local v8    # "videoMedia":Lcom/oneplus/gallery2/media/VideoMedia;
    :cond_9
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    goto/16 :goto_4

    .line 436
    .restart local v0    # "isThumbReady":Z
    .restart local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    .restart local v5    # "thumb":Landroid/graphics/Bitmap;
    .restart local v6    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    :cond_a
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->decodeThumbnailImages(Z)V

    goto/16 :goto_5

    .line 464
    .restart local v8    # "videoMedia":Lcom/oneplus/gallery2/media/VideoMedia;
    :cond_b
    invoke-interface {v8}, Lcom/oneplus/gallery2/media/VideoMedia;->isTimeLapse()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 465
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    const v10, 0x7f020099

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 467
    :cond_c
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    const v10, 0x7f02009a

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 473
    :cond_d
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->itemInfoTextView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_VideoDurationCallback:Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    invoke-interface {v8, v9}, Lcom/oneplus/gallery2/media/VideoMedia;->getDuration(Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;)Lcom/oneplus/base/Handle;

    move-result-object v9

    iput-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->durationObtainingHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_2

    .line 476
    .end local v8    # "videoMedia":Lcom/oneplus/gallery2/media/VideoMedia;
    :cond_e
    instance-of v9, v1, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-eqz v9, :cond_11

    move-object v3, v1

    .line 477
    check-cast v3, Lcom/oneplus/gallery2/media/PhotoMedia;

    .line 478
    .local v3, "photoMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    invoke-interface {v3}, Lcom/oneplus/gallery2/media/PhotoMedia;->isPanorama()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 480
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 481
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    const v10, 0x7f020097

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 482
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->itemInfoTextView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 484
    :cond_f
    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaUtils;->containsMultipleSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 486
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 487
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    const v10, 0x7f020095

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->itemInfoTextView:Landroid/widget/TextView;

    check-cast v1, Lcom/oneplus/gallery2/media/GroupedMedia;

    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/GroupedMedia;->getSubMediaCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 491
    .restart local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_10
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 493
    .end local v3    # "photoMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    :cond_11
    iget-object v9, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 508
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 510
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;-><init>(Lcom/oneplus/gallery2/GridViewItemAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 43
    check-cast p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/GridViewItemAdapter;->onViewRecycled(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .prologue
    .line 534
    iget-object v0, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 537
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 594
    iput-object v1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 595
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 596
    iput-object v1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    .line 597
    return-void
.end method

.method public removeDecodingHandle(Lcom/oneplus/gallery2/media/Media;)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_0
    return-void
.end method

.method public removeLowResDecodingHandle(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_LowResolutionDecodeHandleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_LowResolutionDecodeHandleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_0
    return-void
.end method

.method public updateMediaList(Lcom/oneplus/gallery2/media/MediaList;)V
    .locals 1
    .param p1, "mediaList"    # Lcom/oneplus/gallery2/media/MediaList;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 601
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 602
    return-void
.end method
