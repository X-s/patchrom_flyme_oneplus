.class Lcom/oneplus/gallery/media/MediaManagerImpl$28;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->queryContentProvider(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$callback:Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;

.field final synthetic val$projection:[Ljava/lang/String;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$sortOrder:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)V
    .locals 0

    .prologue
    .line 4106
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;->val$projection:[Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;->val$selection:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;->val$selectionArgs:[Ljava/lang/String;

    iput-object p5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;->val$sortOrder:Ljava/lang/String;

    iput-object p6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;->val$callback:Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 7
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4110
    const/4 v6, 0x0

    .line 4113
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;->val$projection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;->val$selection:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;->val$selectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;->val$sortOrder:Ljava/lang/String;

    move-object v0, p3

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4114
    if-eqz v6, :cond_0

    .line 4115
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;->val$callback:Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;

    invoke-interface {v0, p1, p2, v6}, Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;->onQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4119
    :cond_0
    if-eqz v6, :cond_1

    .line 4120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4122
    :cond_1
    return-void

    .line 4119
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 4120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
