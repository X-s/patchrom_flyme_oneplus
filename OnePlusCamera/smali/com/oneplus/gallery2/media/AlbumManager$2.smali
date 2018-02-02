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

.field private final synthetic val$media:Lcom/oneplus/gallery2/media/Media;

.field private final synthetic val$relation:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->val$relation:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->val$media:Lcom/oneplus/gallery2/media/Media;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->val$relation:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->addAlbumMediaRelation(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;)Z

    move-result v0

    .line 180
    iget-object v3, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    const/16 v4, 0x2724

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->val$relation:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    iget-wide v6, v6, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/oneplus/gallery2/media/AlbumManager$2;->val$media:Lcom/oneplus/gallery2/media/Media;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v0, v1, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 181
    return-void

    :cond_0
    move v0, v2

    .line 180
    goto :goto_0
.end method
