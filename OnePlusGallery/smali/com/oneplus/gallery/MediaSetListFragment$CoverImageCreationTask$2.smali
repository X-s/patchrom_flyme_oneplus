.class Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$2;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$2;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Integer;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$2;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # setter for: Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;
    invoke-static {v1, v0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->access$1502(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 440
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$2;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->access$1600(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$2;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->onMediaListChanged()Z
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->access$1400(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)Z

    .line 442
    :cond_0
    return-void
.end method
