.class Lcom/oneplus/gallery2/media/AlbumManager$4;
.super Ljava/lang/Object;
.source "AlbumManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/AlbumManager;->createAlbum(Ljava/lang/String;Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/AlbumManager;

.field final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$4;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/AlbumManager$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/AlbumManager$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 221
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager$4;->val$name:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->addAlbumInfo(Ljava/lang/String;)Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v0

    .line 224
    .local v0, "albumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    if-eqz v0, :cond_1

    .line 225
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager$4;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    # getter for: Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/AlbumManager;->access$200(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAlbum() - Album info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " created, name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/AlbumManager$4;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager$4;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    const/16 v2, 0x271a

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/oneplus/gallery2/media/AlbumManager$4;->val$name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/AlbumManager$4;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    # getter for: Lcom/oneplus/gallery2/media/AlbumManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/AlbumManager;->access$300(Lcom/oneplus/gallery2/media/AlbumManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "createAlbum() - Fail to create new album info"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
