.class Lcom/oneplus/gallery2/media/AlbumManager$10;
.super Ljava/lang/Object;
.source "AlbumManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/AlbumManager;->setupAlbums()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/AlbumManager;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/AlbumManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 984
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/AlbumManager;->access$2(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setupAlbums()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 988
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getAlbumInfos()Ljava/util/List;

    move-result-object v4

    .line 989
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 990
    iget-object v2, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/AlbumManager;->access$2(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setupAlbums() - Take "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms to get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " album info(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 995
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v1, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 997
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .line 998
    iget-wide v8, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-static {v8, v9}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getAlbumMediaRelationsByAlbumId(J)Ljava/util/List;

    move-result-object v5

    .line 999
    iget-object v8, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    const/16 v9, 0x2710

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v3

    const/4 v0, 0x1

    aput-object v5, v10, v0

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 1000
    if-nez v5, :cond_0

    move v0, v1

    .line 995
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 1001
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    const/16 v2, 0x2711

    invoke-static {v0, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 1004
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    .line 1005
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/AlbumManager;->access$2(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setupAlbums() - Take "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms to get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " album-media relation(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    return-void
.end method
