.class Lcom/oneplus/gallery/media/AlbumMediaSet$2;
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
        "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$2;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
    .locals 0
    .param p1, "dataInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .prologue
    .line 69
    return-void
.end method

.method public bridge synthetic onDeleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet$2;->onDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V

    return-void
.end method

.method public onInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
    .locals 0
    .param p1, "dataInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .prologue
    .line 74
    return-void
.end method

.method public bridge synthetic onInserted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet$2;->onInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V

    return-void
.end method

.method public onUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
    .locals 1
    .param p1, "dataInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$2;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # invokes: Lcom/oneplus/gallery/media/AlbumMediaSet;->onAlbumInfoUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$200(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V

    .line 80
    return-void
.end method

.method public bridge synthetic onUpdated(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/AlbumMediaSet$2;->onUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V

    return-void
.end method
