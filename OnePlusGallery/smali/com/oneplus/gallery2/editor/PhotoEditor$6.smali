.class Lcom/oneplus/gallery2/editor/PhotoEditor$6;
.super Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/PhotoEditor;->saveFinalResult(Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;Landroid/graphics/Bitmap;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

.field final synthetic val$resultUri:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/PhotoEditor;[Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 2267
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    iput-object p2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$6;->val$resultUri:[Landroid/net/Uri;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/oneplus/base/Handle;Landroid/net/Uri;II)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "result"    # I
    .param p4, "flags"    # I

    .prologue
    .line 2271
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$6;->val$resultUri:[Landroid/net/Uri;

    monitor-enter v1

    .line 2273
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$6;->val$resultUri:[Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    .line 2274
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$6;->val$resultUri:[Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2275
    monitor-exit v1

    .line 2276
    return-void

    .line 2275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
