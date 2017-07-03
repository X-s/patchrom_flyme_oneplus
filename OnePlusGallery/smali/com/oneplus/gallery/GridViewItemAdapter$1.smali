.class Lcom/oneplus/gallery/GridViewItemAdapter$1;
.super Ljava/lang/Object;
.source "GridViewItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/GridViewItemAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewItemAdapter;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewItemAdapter$1;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$1;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    # setter for: Lcom/oneplus/gallery/GridViewItemAdapter;->m_IsVisibleRangeCheckScheduled:Z
    invoke-static {v0, v2}, Lcom/oneplus/gallery/GridViewItemAdapter;->access$002(Lcom/oneplus/gallery/GridViewItemAdapter;Z)Z

    .line 51
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$1;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewItemAdapter;->access$100(Lcom/oneplus/gallery/GridViewItemAdapter;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewItemAdapter$1;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewItemAdapter;->access$100(Lcom/oneplus/gallery/GridViewItemAdapter;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->onVisibleMediaChanged(ZZ)V

    .line 53
    :cond_0
    return-void
.end method
