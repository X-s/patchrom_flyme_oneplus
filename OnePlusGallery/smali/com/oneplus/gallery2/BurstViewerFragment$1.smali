.class Lcom/oneplus/gallery2/BurstViewerFragment$1;
.super Lcom/oneplus/widget/FilmstripView$ScrollListener;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$1;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentItemChanged(II)V
    .locals 3
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$1;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;Z)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$000(Lcom/oneplus/gallery2/BurstViewerFragment;Ljava/lang/Integer;Z)V

    .line 143
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
