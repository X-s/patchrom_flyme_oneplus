.class Lcom/oneplus/gallery2/media/AlbumManager$8;
.super Ljava/lang/Object;
.source "AlbumManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/AlbumManager;->setupAlbum(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/AlbumManager;

.field final synthetic val$relationsToAdd:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/AlbumManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$8;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/AlbumManager$8;->val$relationsToAdd:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 950
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager$8;->val$relationsToAdd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 951
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager$8;->val$relationsToAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->addAlbumMediaRelation(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;)Z

    .line 950
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 952
    :cond_0
    return-void
.end method
