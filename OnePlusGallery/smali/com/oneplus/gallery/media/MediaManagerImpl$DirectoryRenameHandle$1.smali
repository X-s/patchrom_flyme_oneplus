.class Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;->callOnDirectoryRename(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;

.field final synthetic val$id:J

.field final synthetic val$newPath:Ljava/lang/String;

.field final synthetic val$oldPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;

    iput-wide p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;->val$id:J

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;->val$oldPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;->val$newPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 955
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;

    iget-wide v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;->val$id:J

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;->val$oldPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;->val$newPath:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;->onRenamed(JLjava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_0
    return-void
.end method
