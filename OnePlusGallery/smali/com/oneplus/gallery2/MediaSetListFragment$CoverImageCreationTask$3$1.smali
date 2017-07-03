.class Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;

.field final synthetic val$coverImage:Landroid/graphics/Bitmap;

.field final synthetic val$r:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;->this$2:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;

    iput-object p2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;->val$r:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;->val$coverImage:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 477
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;->this$2:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->access$2000(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;->val$r:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;->this$2:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    # setter for: Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;
    invoke-static {v0, v2}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->access$2102(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 482
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;->this$2:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    # setter for: Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->access$2002(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 483
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;->this$2:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;->this$2:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;

    iget-object v1, v1, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;->val$coverImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->onCoverImageUpdated(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1900(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    .line 484
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;->this$2:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->complete()V
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->access$2200(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V

    .line 486
    :cond_0
    return-void
.end method
