.class Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;
.super Ljava/lang/Object;
.source "MediaStoreDirectoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

.field private final synthetic val$dirId:J

.field private final synthetic val$dirInfo:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;->this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;->val$dirInfo:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    iput-wide p3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;->val$dirId:J

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 744
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;->this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;->val$dirInfo:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->access$2(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;->val$dirId:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->deleteExtraDirectoryInfo(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;->this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->access$3(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeFromDirectory() - Extra info of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;->val$dirId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
