.class Lcom/oneplus/gallery/media/MediaManagerImpl$31;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->restoreMedia(Lcom/oneplus/base/Handle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$directoryPath:Ljava/lang/String;

.field final synthetic val$extraDirectoryInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

.field final synthetic val$parentId:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;JLjava/lang/String;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;)V
    .locals 0

    .prologue
    .line 4842
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-wide p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->val$parentId:J

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->val$directoryPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->val$extraDirectoryInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4847
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5100(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 4848
    .local v0, "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->val$parentId:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->val$directoryPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->val$directoryPath:Ljava/lang/String;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->isSpecialDirectoryPath(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5200(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->val$directoryPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isHiddenPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4851
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iget-wide v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->val$parentId:J

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->val$directoryPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$31;->val$extraDirectoryInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->onDirectoryMediaSetCreated(JLjava/lang/String;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;Lcom/oneplus/gallery/media/MediaType;)V
    invoke-static/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5500(Lcom/oneplus/gallery/media/MediaManagerImpl;JLjava/lang/String;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;Lcom/oneplus/gallery/media/MediaType;)V

    .line 4853
    :cond_0
    return-void
.end method
