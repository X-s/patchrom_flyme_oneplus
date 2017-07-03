.class Lcom/oneplus/gallery/media/MediaManagerImpl$25;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->onInitialize()V
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
        "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0

    .prologue
    .line 3753
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$25;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V
    .locals 0
    .param p1, "dataInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .prologue
    .line 3765
    return-void
.end method

.method public bridge synthetic onDeleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3753
    check-cast p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$25;->onDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V

    return-void
.end method

.method public onInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V
    .locals 7
    .param p1, "dataInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .prologue
    .line 3761
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$25;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iget-wide v2, p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->id:J

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$25;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_EmptyMediaObtainCallback:Lcom/oneplus/gallery/media/MediaObtainCallback;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4500(Lcom/oneplus/gallery/media/MediaManagerImpl;)Lcom/oneplus/gallery/media/MediaObtainCallback;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x100

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(JLcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    .line 3762
    return-void
.end method

.method public bridge synthetic onInserted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3753
    check-cast p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$25;->onInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V

    return-void
.end method

.method public onUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V
    .locals 7
    .param p1, "dataInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .prologue
    .line 3756
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$25;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iget-wide v2, p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->id:J

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$25;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_EmptyMediaObtainCallback:Lcom/oneplus/gallery/media/MediaObtainCallback;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4500(Lcom/oneplus/gallery/media/MediaManagerImpl;)Lcom/oneplus/gallery/media/MediaObtainCallback;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x100

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(JLcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    .line 3757
    return-void
.end method

.method public bridge synthetic onUpdated(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3753
    check-cast p1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$25;->onUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V

    return-void
.end method
