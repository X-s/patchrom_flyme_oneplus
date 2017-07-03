.class Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreDecodeBitmapRunnable"
.end annotation


# instance fields
.field private final m_ActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gallery/GridViewFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CancellingDecodingMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ThumbDecodingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final preDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

.field final synthetic this$0:Lcom/oneplus/gallery/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 1
    .param p2, "gridfragment"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 927
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    .line 916
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    .line 918
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable$1;-><init>(Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->preDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    .line 928
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ActivityRef:Ljava/lang/ref/WeakReference;

    .line 929
    return-void
.end method

.method static synthetic access$5200(Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;

    .prologue
    .line 912
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public cancelAllBitmapDecoding()V
    .locals 3

    .prologue
    .line 931
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 932
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 933
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 934
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 937
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_0

    .line 938
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    invoke-static {v11}, Lcom/oneplus/gallery/GridViewFragment;->access$1500(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v8

    .line 939
    .local v8, "medialist":Lcom/oneplus/gallery/media/MediaList;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Lcom/oneplus/gallery/media/MediaList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 993
    .end local v8    # "medialist":Lcom/oneplus/gallery/media/MediaList;
    :cond_0
    :goto_0
    return-void

    .line 941
    .restart local v8    # "medialist":Lcom/oneplus/gallery/media/MediaList;
    :cond_1
    invoke-interface {v8}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v7

    .line 942
    .local v7, "mediaCount":I
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;
    invoke-static {v11}, Lcom/oneplus/gallery/GridViewFragment;->access$5300(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    .line 943
    .local v0, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    if-nez v0, :cond_2

    .line 945
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/oneplus/gallery/GridViewFragment;->access$5400(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "run() - gridLayoutManager is null"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v10

    .line 949
    .local v10, "visibleLastposition":I
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v9

    .line 950
    .local v9, "visibleFirstposition":I
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v11}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 952
    .local v2, "handler":Landroid/os/Handler;
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    iget-object v12, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 953
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v11}, Lcom/oneplus/gallery/GridViewFragment;->access$800(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 955
    move v3, v10

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    add-int/lit8 v11, v10, 0x1c

    if-ge v3, v11, :cond_4

    if-ge v3, v7, :cond_4

    .line 956
    invoke-interface {v8, v3}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/media/Media;

    .line 957
    .local v6, "media":Lcom/oneplus/gallery/media/Media;
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Handle;

    .line 958
    .local v1, "handle":Lcom/oneplus/base/Handle;
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v11, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 959
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 961
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v11}, Lcom/oneplus/gallery/GridViewFragment;->access$800(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->preDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    invoke-interface {v11, v6, v13, v12, v2}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 962
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v11, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 966
    .end local v1    # "handle":Lcom/oneplus/base/Handle;
    .end local v6    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_4
    move v5, v9

    .local v5, "index":I
    :goto_2
    add-int/lit8 v11, v9, -0x1c

    if-le v5, v11, :cond_6

    if-ltz v5, :cond_6

    if-ge v5, v7, :cond_6

    .line 967
    invoke-interface {v8, v5}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/media/Media;

    .line 968
    .restart local v6    # "media":Lcom/oneplus/gallery/media/Media;
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Handle;

    .line 969
    .restart local v1    # "handle":Lcom/oneplus/base/Handle;
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v11, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 970
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 972
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v11}, Lcom/oneplus/gallery/GridViewFragment;->access$800(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->preDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    invoke-interface {v11, v6, v13, v12, v2}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 973
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v11, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 977
    .end local v1    # "handle":Lcom/oneplus/base/Handle;
    .end local v6    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_6
    add-int/lit8 v5, v9, 0x1

    :goto_3
    if-ge v5, v10, :cond_7

    if-ge v5, v7, :cond_7

    .line 979
    invoke-interface {v8, v5}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/media/Media;

    .line 980
    .restart local v6    # "media":Lcom/oneplus/gallery/media/Media;
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v11, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 977
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 983
    .end local v3    # "i":I
    .end local v5    # "index":I
    .end local v6    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_7
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 985
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/media/Media;

    .line 987
    .restart local v6    # "media":Lcom/oneplus/gallery/media/Media;
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Handle;

    .line 988
    .restart local v1    # "handle":Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_4

    .line 990
    .end local v1    # "handle":Lcom/oneplus/base/Handle;
    .end local v6    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_8
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->clear()V

    goto/16 :goto_0
.end method
