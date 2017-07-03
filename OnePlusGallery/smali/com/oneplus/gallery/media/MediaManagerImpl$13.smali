.class Lcom/oneplus/gallery/media/MediaManagerImpl$13;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->deleteMedia(JLcom/oneplus/gallery/media/Media;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$rawFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2219
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$13;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$13;->val$rawFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 6
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2223
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_data= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$13;->val$rawFilePath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2224
    .local v0, "deleteCount":I
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$13;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteMedia() - Delete raw file count: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2225
    return-void
.end method
