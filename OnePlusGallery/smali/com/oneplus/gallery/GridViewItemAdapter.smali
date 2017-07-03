.class public Lcom/oneplus/gallery/GridViewItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GridViewItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;,
        Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DURATION_THUMB_TRANSITION:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "GridViewItemAdapter"


# instance fields
.field private final m_CheckVisibleRangeRunnable:Ljava/lang/Runnable;

.field private m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private m_GreySquare:Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;

.field private m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

.field private m_GridviewItemHeight:I

.field private m_GridviewItemWidth:I

.field private m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
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

.field private m_MediaList:Lcom/oneplus/gallery/media/MediaList;

.field private m_ThumbnailImageManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

.field private final m_ViewHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            "Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    new-instance v0, Lcom/oneplus/gallery/GridViewItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewItemAdapter$1;-><init>(Lcom/oneplus/gallery/GridViewItemAdapter;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_CheckVisibleRangeRunnable:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_LowResolutionDecodeHandleMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    .line 213
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    .line 214
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaList;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 215
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_ThumbnailImageManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .line 216
    invoke-virtual {p1}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsBlackMode:Z

    .line 217
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "GridViewItemAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor m_MediaList.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewItemAdapter;->onInitialize()V

    .line 223
    return-void

    .line 220
    :cond_0
    const-string v0, "GridViewItemAdapter"

    const-string v1, "gridviewitemAdapter m_MediaList is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/oneplus/gallery/GridViewItemAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewItemAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsVisibleRangeCheckScheduled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/GridViewItemAdapter;)Lcom/oneplus/gallery/GridViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewItemAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/GridViewItemAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewItemAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/GridViewItemAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewItemAdapter;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsBlackMode:Z

    return v0
.end method

.method private getVideoTime(Lcom/oneplus/gallery/media/VideoMedia;)Ljava/lang/String;
    .locals 15
    .param p1, "media"    # Lcom/oneplus/gallery/media/VideoMedia;

    .prologue
    .line 450
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery/media/VideoMedia;->getDuration()J

    move-result-wide v8

    .line 451
    .local v8, "timeInmillisec":J
    const-wide/16 v10, 0x1f4

    add-long/2addr v10, v8

    const-wide/16 v12, 0x3e8

    div-long v0, v10, v12

    .line 452
    .local v0, "duration":J
    const-wide/16 v10, 0xe10

    div-long v2, v0, v10

    .line 453
    .local v2, "hours":J
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v2

    sub-long v10, v0, v10

    const-wide/16 v12, 0x3c

    div-long v4, v10, v12

    .line 454
    .local v4, "minutes":J
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v2

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v4

    add-long/2addr v10, v12

    sub-long v6, v0, v10

    .line 456
    .local v6, "seconds":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-gtz v10, :cond_0

    .line 457
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%02d:%02d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 458
    :goto_0
    return-object v10

    :cond_0
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%02d:%02d:%02d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private onInitialize()V
    .locals 3

    .prologue
    .line 226
    const-string v0, "GridViewItemAdapter"

    const-string v1, "onInitialize"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsBlackMode:Z

    .line 228
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsCameraRoll:Z

    .line 229
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsGrouping:Z

    .line 230
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridviewItemHeight:I

    .line 231
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridviewItemWidth:I

    .line 232
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 233
    new-instance v0, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;

    iget v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridviewItemWidth:I

    iget v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridviewItemHeight:I

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;-><init>(Lcom/oneplus/gallery/GridViewItemAdapter;II)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GreySquare:Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;

    .line 234
    return-void
.end method


# virtual methods
.method public cancelAllBitmapDecodeTasks()V
    .locals 3

    .prologue
    .line 523
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;

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

    .line 526
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 529
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_LowResolutionDecodeHandleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_LowResolutionDecodeHandleMap:Ljava/util/HashMap;

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

    .line 532
    .restart local v0    # "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 534
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public final findViewHolder(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    :cond_0
    const-string v2, "GridViewItemAdapter"

    const-string v3, "getItem() - No Data, m_MediaList is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1
    :goto_0
    return-object v1

    .line 258
    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 260
    const-string v2, "GridViewItemAdapter"

    const-string v3, "getItem() - Invalid item position"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    iget-boolean v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsGrouping:Z

    if-eqz v2, :cond_4

    .line 265
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v2, p1}, Lcom/oneplus/gallery/GridViewFragment;->findItemGroupIndex(I)I

    move-result v0

    .line 266
    .local v0, "groupIndexCounts":I
    sub-int/2addr p1, v0

    .line 269
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

    .line 271
    if-ltz p1, :cond_7

    .line 273
    iget-boolean v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsCameraRoll:Z

    if-eqz v2, :cond_6

    .line 276
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v2}, Lcom/oneplus/gallery/GridViewFragment;->getStartCameraDataPosition()I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment;->getStartCameraDataPosition()I

    move-result v1

    if-le p1, v1, :cond_5

    add-int/lit8 v1, p1, -0x1

    :goto_1
    invoke-interface {v2, v1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_5
    move v1, p1

    goto :goto_1

    .line 285
    :cond_6
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 286
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 289
    :cond_7
    const-string v2, "GridViewItemAdapter"

    const-string v3, "getItem() - Invalid item position"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsCameraRoll:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 246
    :goto_0
    return v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v0

    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemInternal(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 302
    const-string v1, "GridViewItemAdapter"

    const-string v2, "getItemInternal() invalid position "

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 38
    check-cast p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/GridViewItemAdapter;->onBindViewHolder(Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;I)V
    .locals 12
    .param p1, "viewholder"    # Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 320
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v4, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 325
    .local v4, "prevMedia":Lcom/oneplus/gallery/media/Media;
    if-eqz v4, :cond_2

    .line 326
    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_2
    iget-boolean v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsCameraRoll:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v9}, Lcom/oneplus/gallery/GridViewFragment;->getStartCameraDataPosition()I

    move-result v9

    if-ne p2, v9, :cond_4

    .line 329
    const-string v9, "GridViewItemAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onBindViewHolder() -  getStartCameraDataPosition: 2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v11}, Lcom/oneplus/gallery/GridViewFragment;->getStartCameraDataPosition()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v10, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-boolean v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsBlackMode:Z

    if-eqz v9, :cond_3

    const v9, 0x7f02006d

    :goto_1
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GreySquare:Lcom/oneplus/gallery/GridViewItemAdapter$SquareDrawable;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 334
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 335
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 336
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->lowResolutionThumbDecodeHandle:Lcom/oneplus/base/Handle;

    .line 337
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->highResolutionThumbDecodeHandle:Lcom/oneplus/base/Handle;

    .line 338
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 432
    :goto_2
    iget-boolean v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsVisibleRangeCheckScheduled:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v9, :cond_0

    .line 434
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsVisibleRangeCheckScheduled:Z

    .line 435
    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    iget-object v10, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_CheckVisibleRangeRunnable:Ljava/lang/Runnable;

    invoke-static {v9, v10}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 331
    :cond_3
    const v9, 0x7f02006e

    goto :goto_1

    .line 341
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    .line 342
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 346
    iget-boolean v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsCameraRoll:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v9}, Lcom/oneplus/gallery/GridViewFragment;->getStartCameraDataPosition()I

    move-result v9

    if-le p2, v9, :cond_5

    .line 347
    add-int/lit8 v2, p2, -0x1

    .line 351
    .local v2, "mediaindex":I
    :goto_3
    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v9}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v9

    if-lt v2, v9, :cond_6

    .line 353
    const-string v9, "GridViewItemAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onBindViewHolder() - media index out of bounds MediaList.length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v11}, Lcom/oneplus/gallery/media/MediaList;->size()I

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

    .line 349
    .end local v2    # "mediaindex":I
    :cond_5
    move v2, p2

    .restart local v2    # "mediaindex":I
    goto :goto_3

    .line 357
    :cond_6
    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v10, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 358
    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/GridViewItemAdapter;->getItemInternal(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/GridViewFragment;->isSelectionMediaListContains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {p1, v9}, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 362
    :goto_4
    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v9, v2}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    .line 365
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v9, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iput-object v1, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 369
    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->mimeType:Ljava/lang/String;

    .line 372
    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v9, v1}, Lcom/oneplus/gallery/GridViewFragment;->getThumbnailInfo(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    move-result-object v6

    .line 373
    .local v6, "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    invoke-virtual {v6}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->getHQThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 374
    .local v5, "thumb":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 375
    .local v0, "isThumbReady":Z
    const/4 v9, 0x0

    iput-boolean v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isThumbDecoded:Z

    .line 376
    if-eqz v5, :cond_a

    .line 378
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v10, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;

    invoke-direct {v10, v5}, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    const/4 v9, 0x1

    iput-boolean v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isThumbDecoded:Z

    .line 380
    const/4 v0, 0x1

    .line 386
    :goto_5
    if-nez v5, :cond_7

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_ThumbnailImageManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v9, :cond_7

    .line 388
    iget-object v9, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_ThumbnailImageManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-interface {v9, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->getTempThumbnailImage(Lcom/oneplus/gallery/media/Media;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 389
    if-eqz v5, :cond_7

    .line 391
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

    .line 392
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v10, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;

    invoke-direct {v10, v5}, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    const/4 v0, 0x1

    .line 398
    :cond_7
    if-nez v0, :cond_8

    .line 400
    new-instance v7, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v9, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    iget-object v10, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v7, v9, v10}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 401
    .local v7, "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    .end local v7    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_8
    const/4 v9, 0x0

    iput-boolean v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    .line 406
    instance-of v9, v1, Lcom/oneplus/gallery/media/VideoMedia;

    if-eqz v9, :cond_d

    move-object v8, v1

    .line 407
    check-cast v8, Lcom/oneplus/gallery/media/VideoMedia;

    .line 408
    .local v8, "videoMedia":Lcom/oneplus/gallery/media/VideoMedia;
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 409
    invoke-interface {v8}, Lcom/oneplus/gallery/media/VideoMedia;->isSlowMotion()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 410
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    const v10, 0x7f020098

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    :goto_6
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->durationTextView:Landroid/widget/TextView;

    check-cast v1, Lcom/oneplus/gallery/media/VideoMedia;

    .end local v1    # "media":Lcom/oneplus/gallery/media/Media;
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/GridViewItemAdapter;->getVideoTime(Lcom/oneplus/gallery/media/VideoMedia;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 360
    .end local v0    # "isThumbReady":Z
    .end local v5    # "thumb":Landroid/graphics/Bitmap;
    .end local v6    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    .end local v8    # "videoMedia":Lcom/oneplus/gallery/media/VideoMedia;
    :cond_9
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    goto/16 :goto_4

    .line 383
    .restart local v0    # "isThumbReady":Z
    .restart local v1    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v5    # "thumb":Landroid/graphics/Bitmap;
    .restart local v6    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    :cond_a
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->decodeThumbnailImages(Z)V

    goto :goto_5

    .line 411
    .restart local v8    # "videoMedia":Lcom/oneplus/gallery/media/VideoMedia;
    :cond_b
    invoke-interface {v8}, Lcom/oneplus/gallery/media/VideoMedia;->isTimeLapse()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 412
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    const v10, 0x7f020099

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 414
    :cond_c
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    const v10, 0x7f02009a

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 416
    .end local v8    # "videoMedia":Lcom/oneplus/gallery/media/VideoMedia;
    :cond_d
    instance-of v9, v1, Lcom/oneplus/gallery/media/PhotoMedia;

    if-eqz v9, :cond_f

    move-object v3, v1

    .line 417
    check-cast v3, Lcom/oneplus/gallery/media/PhotoMedia;

    .line 418
    .local v3, "photoMedia":Lcom/oneplus/gallery/media/PhotoMedia;
    invoke-interface {v3}, Lcom/oneplus/gallery/media/PhotoMedia;->isPanorama()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 420
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 421
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    const v10, 0x7f020097

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 422
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->durationTextView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 425
    :cond_e
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 427
    .end local v3    # "photoMedia":Lcom/oneplus/gallery/media/PhotoMedia;
    :cond_f
    iget-object v9, p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

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
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/GridViewItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 442
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030011

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 444
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;-><init>(Lcom/oneplus/gallery/GridViewItemAdapter;Landroid/view/View;)V

    .line 445
    .local v0, "itemViewHolder":Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 516
    iput-object v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 517
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 518
    iput-object v1, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    .line 519
    return-void
.end method

.method public removeDecodingHandle(Lcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_HighResolutionDecodeHandleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_0
    return-void
.end method

.method public removeLowResDecodingHandle(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_LowResolutionDecodeHandleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_LowResolutionDecodeHandleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_0
    return-void
.end method

.method public updateMediaList(Lcom/oneplus/gallery/media/MediaList;)V
    .locals 1
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaList;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 538
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter;->m_ViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 539
    return-void
.end method
