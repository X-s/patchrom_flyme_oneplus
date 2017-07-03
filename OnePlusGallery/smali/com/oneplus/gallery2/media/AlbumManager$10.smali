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
    .line 981
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 985
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    # getter for: Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/media/AlbumManager;->access$400(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "setupAlbums()"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 989
    .local v6, "time":J
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getAlbumInfos()Ljava/util/List;

    move-result-object v1

    .line 990
    .local v1, "allAlbumInfo":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 991
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    # getter for: Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/media/AlbumManager;->access$500(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupAlbums() - Take "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms to get "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " album info(s)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 995
    const/4 v3, 0x0

    .line 996
    .local v3, "relationCount":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 998
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .line 999
    .local v0, "albumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    iget-wide v8, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-static {v8, v9}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getAlbumMediaRelationsByAlbumId(J)Ljava/util/List;

    move-result-object v4

    .line 1000
    .local v4, "relations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    const/16 v8, 0x2710

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v5, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 1001
    if-eqz v4, :cond_0

    .line 1002
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 996
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1004
    .end local v0    # "albumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    .end local v4    # "relations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    const/16 v8, 0x2711

    invoke-static {v5, v8}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 1005
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 1006
    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager$10;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    # getter for: Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/media/AlbumManager;->access$600(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupAlbums() - Take "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms to get "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " album-media relation(s)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    return-void
.end method
