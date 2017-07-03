.class Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3$2;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;

.field final synthetic val$r:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3$2;->this$2:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;

    iput-object p2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3$2;->val$r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3$2;->this$2:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->access$2100(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3$2;->val$r:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3$2;->this$2:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    # setter for: Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;
    invoke-static {v0, v2}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->access$2202(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 568
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3$2;->this$2:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    # setter for: Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->access$2102(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 569
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3$2;->this$2:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->createCoverImageFromMediaList()V
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->access$2400(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V

    .line 571
    :cond_0
    return-void
.end method
