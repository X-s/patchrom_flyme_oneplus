.class Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$1;
.super Ljava/lang/Object;
.source "MediaDeletionCallbackUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;->callOnDeletionCompleted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;ZLandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

.field private final synthetic val$media:Lcom/oneplus/gallery/media/Media;

.field private final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$1;->val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$1;->val$media:Lcom/oneplus/gallery/media/Media;

    iput-boolean p3, p0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$1;->val$success:Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$1;->val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$1;->val$media:Lcom/oneplus/gallery/media/Media;

    iget-boolean v2, p0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$1;->val$success:Z

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V

    .line 36
    return-void
.end method
