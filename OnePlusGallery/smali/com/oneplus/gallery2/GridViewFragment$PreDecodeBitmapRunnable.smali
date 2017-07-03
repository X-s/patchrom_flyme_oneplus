.class Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewFragment;
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
            "Lcom/oneplus/gallery2/GridViewFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CancellingDecodingMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ThumbDecodingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final preDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

.field final synthetic this$0:Lcom/oneplus/gallery2/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 1
    .param p2, "gridfragment"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 953
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    .line 942
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    .line 944
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable$1;-><init>(Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->preDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    .line 954
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ActivityRef:Ljava/lang/ref/WeakReference;

    .line 955
    return-void
.end method

.method static synthetic access$5500(Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public cancelAllBitmapDecoding()V
    .locals 3

    .prologue
    .line 957
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

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

    .line 958
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 959
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 960
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    .line 963
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$1500(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v12

    .line 965
    .local v12, "medialist":Lcom/oneplus/gallery2/media/MediaList;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    .end local v12    # "medialist":Lcom/oneplus/gallery2/media/MediaList;
    :cond_0
    :goto_0
    return-void

    .line 967
    .restart local v12    # "medialist":Lcom/oneplus/gallery2/media/MediaList;
    :cond_1
    invoke-interface {v12}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v11

    .line 968
    .local v11, "mediaCount":I
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$5600(Lcom/oneplus/gallery2/GridViewFragment;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v6

    .line 969
    .local v6, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    if-nez v6, :cond_2

    .line 971
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$5700(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "run() - gridLayoutManager is null"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 974
    :cond_2
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v14

    .line 975
    .local v14, "visibleLastposition":I
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v13

    .line 976
    .local v13, "visibleFirstposition":I
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 978
    .local v5, "handler":Landroid/os/Handler;
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 979
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$800(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 981
    move v8, v14

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_4

    add-int/lit8 v0, v14, 0x1c

    if-ge v8, v0, :cond_4

    if-ge v8, v11, :cond_4

    .line 982
    invoke-interface {v12, v8}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 983
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/Handle;

    .line 984
    .local v7, "handle":Lcom/oneplus/base/Handle;
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 985
    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 987
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$800(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v0

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->preDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v7

    .line 988
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 992
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v7    # "handle":Lcom/oneplus/base/Handle;
    :cond_4
    move v10, v13

    .local v10, "index":I
    :goto_2
    add-int/lit8 v0, v13, -0x1c

    if-le v10, v0, :cond_6

    if-ltz v10, :cond_6

    if-ge v10, v11, :cond_6

    .line 993
    invoke-interface {v12, v10}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 994
    .restart local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/Handle;

    .line 995
    .restart local v7    # "handle":Lcom/oneplus/base/Handle;
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 996
    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 998
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$800(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v0

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->preDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v7

    .line 999
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    :cond_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 1003
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v7    # "handle":Lcom/oneplus/base/Handle;
    :cond_6
    add-int/lit8 v10, v13, 0x1

    :goto_3
    if-ge v10, v14, :cond_7

    if-ge v10, v11, :cond_7

    .line 1005
    invoke-interface {v12, v10}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 1006
    .restart local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1003
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1009
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v8    # "i":I
    .end local v10    # "index":I
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 1013
    .restart local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_ThumbDecodingTable:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/Handle;

    .line 1014
    .restart local v7    # "handle":Lcom/oneplus/base/Handle;
    invoke-static {v7}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_4

    .line 1016
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v7    # "handle":Lcom/oneplus/base/Handle;
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->m_CancellingDecodingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/16 :goto_0
.end method
