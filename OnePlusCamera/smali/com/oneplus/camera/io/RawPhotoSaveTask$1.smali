.class Lcom/oneplus/camera/io/RawPhotoSaveTask$1;
.super Ljava/lang/Object;
.source "RawPhotoSaveTask.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/io/RawPhotoSaveTask;->onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/io/RawPhotoSaveTask;

.field final synthetic val$result:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/io/RawPhotoSaveTask;[Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/io/RawPhotoSaveTask;
    .param p2, "val$result"    # [Landroid/net/Uri;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask$1;->this$0:Lcom/oneplus/camera/io/RawPhotoSaveTask;

    iput-object p2, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask$1;->val$result:[Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask$1;->val$result:[Landroid/net/Uri;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask$1;->this$0:Lcom/oneplus/camera/io/RawPhotoSaveTask;

    iget-object v0, v0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScanCompleted() - path :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask$1;->this$0:Lcom/oneplus/camera/io/RawPhotoSaveTask;

    iget-object v0, v0, Lcom/oneplus/camera/io/RawPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onScanCompleted() - Notify waiting thread"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask$1;->val$result:[Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    .line 107
    iget-object v0, p0, Lcom/oneplus/camera/io/RawPhotoSaveTask$1;->val$result:[Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 99
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
