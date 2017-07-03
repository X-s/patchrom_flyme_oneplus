.class Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;
.super Ljava/lang/Object;
.source "DirectoryMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/DirectoryMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 112
    iget-object v3, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    # getter for: Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->access$000(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    # getter for: Lcom/oneplus/gallery2/media/DirectoryMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->access$100(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "completeDeletion() -  Directory "

    const-string v5, " deleted"

    invoke-static {v3, v4, v2, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    iget-object v3, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    # getter for: Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryId:J
    invoke-static {v5}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->access$200(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteFromMediaStore(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    # getter for: Lcom/oneplus/gallery2/media/DirectoryMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->access$300(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeDeletion() - Fail to delete directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
