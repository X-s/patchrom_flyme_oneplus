.class Lcom/oneplus/gallery/media/AlbumMediaSet$1;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/AlbumMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
        "<",
        "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$1;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 1
    .param p1, "dataInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$1;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # invokes: Lcom/oneplus/gallery/media/AlbumMediaSet;->onAlbumMediaRelationDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$000(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    .line 52
    return-void
.end method

.method public bridge synthetic onDeleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet$1;->onDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    return-void
.end method

.method public onInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 1
    .param p1, "dataInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$1;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # invokes: Lcom/oneplus/gallery/media/AlbumMediaSet;->onAlbumMediaRelationInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$100(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    .line 58
    return-void
.end method

.method public bridge synthetic onInserted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet$1;->onInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    return-void
.end method

.method public onUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 0
    .param p1, "dataInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .prologue
    .line 61
    return-void
.end method

.method public bridge synthetic onUpdated(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet$1;->onUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    return-void
.end method
