.class Lcom/oneplus/gallery/media/MediaManagerImpl$15$1;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl$15;->onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$15;

.field final synthetic val$media:[Lcom/oneplus/gallery/media/Media;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl$15;[Lcom/oneplus/gallery/media/Media;)V
    .locals 0

    .prologue
    .line 2744
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$15$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$15;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$15$1;->val$media:[Lcom/oneplus/gallery/media/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2748
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2749
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$15$1;->val$media:[Lcom/oneplus/gallery/media/Media;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$15$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$15;

    iget-object v2, v2, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    const/4 v3, -0x1

    invoke-virtual {v2, p3, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(Landroid/database/Cursor;I)Lcom/oneplus/gallery/media/Media;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2750
    :cond_0
    return-void
.end method
