.class Lcom/oneplus/gallery2/media/AlbumManager$2;
.super Ljava/lang/Object;
.source "AlbumManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/AlbumManager;->addMediaToAlbum(JLcom/oneplus/gallery2/media/Media;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/AlbumManager;

.field final synthetic val$media:Lcom/oneplus/gallery2/media/Media;

.field final synthetic val$relation:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->val$relation:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->val$media:Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 179
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->val$relation:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->addAlbumMediaRelation(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;)Z

    move-result v0

    .line 180
    .local v0, "success":Z
    iget-object v4, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    const/16 v5, 0x2724

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->val$relation:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    iget-wide v8, v7, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->val$media:Lcom/oneplus/gallery2/media/Media;

    aput-object v7, v6, v2

    invoke-static {v4, v5, v1, v3, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 181
    return-void

    :cond_0
    move v1, v3

    .line 180
    goto :goto_0
.end method
