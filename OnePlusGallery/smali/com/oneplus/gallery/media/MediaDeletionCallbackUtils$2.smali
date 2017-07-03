.class final Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$2;
.super Ljava/lang/Object;
.source "MediaDeletionCallbackUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;->callOnDeletionStarted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

.field final synthetic val$media:Lcom/oneplus/gallery/media/Media;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$2;->val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$2;->val$media:Lcom/oneplus/gallery/media/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$2;->val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$2;->val$media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V

    .line 63
    return-void
.end method
