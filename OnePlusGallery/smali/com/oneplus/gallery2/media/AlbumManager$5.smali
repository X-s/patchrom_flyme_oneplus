.class Lcom/oneplus/gallery2/media/AlbumManager$5;
.super Ljava/lang/Object;
.source "AlbumManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/AlbumManager;->deleteAlbum(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/AlbumManager;

.field final synthetic val$albumId:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/AlbumManager;J)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$5;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    iput-wide p2, p0, Lcom/oneplus/gallery2/media/AlbumManager$5;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$5;->val$albumId:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->deleteAlbumInfo(J)Z

    .line 297
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$5;->val$albumId:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->deleteAlbumMediaRelationsByAlbumId(J)Z

    .line 298
    return-void
.end method
