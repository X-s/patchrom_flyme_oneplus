.class Lcom/oneplus/gallery/media/AlbumMediaSet$6;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/AlbumMediaSet;->onAlbumMediaRelationDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$6;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObtained(JLcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$6;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v0, p3}, Lcom/oneplus/gallery/media/AlbumMediaSet;->removeMediaFromActiveMediaLists(Lcom/oneplus/gallery/media/Media;)V

    .line 275
    return-void
.end method
