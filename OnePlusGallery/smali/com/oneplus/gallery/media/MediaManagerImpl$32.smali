.class Lcom/oneplus/gallery/media/MediaManagerImpl$32;
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

.field final synthetic val$parentId:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 4870
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$32;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-wide p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$32;->val$parentId:J

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$32;->val$directoryPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4875
    iget-wide v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$32;->val$parentId:J

    invoke-static {v2, v3}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraDirectoryInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    move-result-object v0

    .line 4876
    .local v0, "extraDirectoryInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$32;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2724

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$32;->val$parentId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$32;->val$directoryPath:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-static {v1, v2, v6, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4877
    return-void
.end method
