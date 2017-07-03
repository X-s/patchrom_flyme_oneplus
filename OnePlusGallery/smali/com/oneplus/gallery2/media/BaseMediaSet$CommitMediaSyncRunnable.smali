.class final Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;
.super Ljava/lang/Object;
.source "BaseMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/BaseMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommitMediaSyncRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery2/media/BaseMediaSet;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/BaseMediaSet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery2/media/BaseMediaSet;
    .param p2, "x1"    # Lcom/oneplus/gallery2/media/BaseMediaSet$1;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->access$102(Lcom/oneplus/gallery2/media/BaseMediaSet;Z)Z

    .line 98
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    .line 99
    return-void
.end method
