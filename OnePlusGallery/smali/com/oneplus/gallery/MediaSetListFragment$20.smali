.class Lcom/oneplus/gallery/MediaSetListFragment$20;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImage(Lcom/oneplus/gallery/media/MediaSet;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetListFragment;

.field final synthetic val$gridPerRow:I

.field final synthetic val$isUrgent:Z

.field final synthetic val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

.field final synthetic val$mediaSetImageKey:Ljava/lang/String;

.field final synthetic val$needToNotifyAdapter:Z

.field final synthetic val$targetGridCount:I

.field final synthetic val$targetMediaCount:I


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaSet;IIZZI)V
    .locals 0

    .prologue
    .line 2536
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iput-object p2, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$mediaSetImageKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    iput p4, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$targetMediaCount:I

    iput p5, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$targetGridCount:I

    iput-boolean p6, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$isUrgent:Z

    iput-boolean p7, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$needToNotifyAdapter:Z

    iput p8, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$gridPerRow:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheImageLoaded(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "cachedImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 2540
    if-nez p1, :cond_1

    .line 2542
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$6200(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCacheImageLoaded() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$mediaSetImageKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , cachedImage is NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v4, Lcom/oneplus/gallery/media/MediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2546
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$6300(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onCacheImageLoaded() - Media set has been released"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    :goto_0
    return-void

    .line 2551
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v4, Lcom/oneplus/gallery/media/MediaComparator;->TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;

    iget v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$targetMediaCount:I

    invoke-interface {v3, v4, v5, v6}, Lcom/oneplus/gallery/media/MediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;II)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v2

    .line 2552
    .local v2, "mediaList":Lcom/oneplus/gallery/media/MediaList;
    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/gallery/MediaSetListFragment$20$1;

    invoke-direct {v4, p0, v2}, Lcom/oneplus/gallery/MediaSetListFragment$20$1;-><init>(Lcom/oneplus/gallery/MediaSetListFragment$20;Lcom/oneplus/gallery/media/MediaList;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_0

    .line 2578
    .end local v2    # "mediaList":Lcom/oneplus/gallery/media/MediaList;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$6600(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCacheImageLoaded() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$mediaSetImageKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , has cachedImage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetCoverStatusTable:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5700(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/util/Hashtable;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    const/4 v0, 0x0

    .line 2583
    .local v0, "coverImageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;
    invoke-static {v3, v4}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5800(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;

    move-result-object v1

    .line 2584
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2585
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    iget-object v0, v3, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    .line 2587
    :cond_2
    if-eqz v0, :cond_3

    .line 2589
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2590
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2591
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    invoke-static {v3, v0, v6}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5000(Lcom/oneplus/gallery/MediaSetListFragment;Landroid/view/View;Z)V

    .line 2595
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImageFromQueue()V
    invoke-static {v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5500(Lcom/oneplus/gallery/MediaSetListFragment;)V

    goto :goto_0
.end method
