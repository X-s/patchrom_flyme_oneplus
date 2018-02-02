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
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->access$0(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->access$1(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "completeDeletion() -  Directory "

    const-string/jumbo v3, " deleted"

    invoke-static {v0, v2, v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-static {v3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->access$2(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteFromMediaStore(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 124
    iget-object v2, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->access$1(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "completeDeletion() - Fail to delete directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
