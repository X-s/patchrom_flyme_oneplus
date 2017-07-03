.class Lcom/oneplus/gallery2/media/AlbumManager$7;
.super Ljava/lang/Object;
.source "AlbumManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/AlbumManager;->renameAlbum(JLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/AlbumManager;

.field final synthetic val$albumId:J

.field final synthetic val$albumInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

.field final synthetic val$oldName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 829
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$7;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/AlbumManager$7;->val$albumInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iput-wide p3, p0, Lcom/oneplus/gallery2/media/AlbumManager$7;->val$albumId:J

    iput-object p5, p0, Lcom/oneplus/gallery2/media/AlbumManager$7;->val$oldName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 833
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager$7;->val$albumInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->updateAlbumInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)Z

    move-result v0

    .line 834
    .local v0, "result":Z
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager$7;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    const/16 v5, 0x271f

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/oneplus/gallery2/media/AlbumManager$7;->val$albumId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/oneplus/gallery2/media/AlbumManager$7;->val$oldName:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v2, 0x2

    iget-object v7, p0, Lcom/oneplus/gallery2/media/AlbumManager$7;->val$albumInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    iget-object v7, v7, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v4, v5, v1, v3, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 835
    return-void

    :cond_0
    move v1, v3

    .line 834
    goto :goto_0
.end method
