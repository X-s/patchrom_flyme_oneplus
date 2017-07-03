.class Lcom/oneplus/gallery2/GridViewItemAdapter$1;
.super Ljava/lang/Object;
.source "GridViewItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewItemAdapter;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$1;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$1;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    # setter for: Lcom/oneplus/gallery2/GridViewItemAdapter;->m_IsVisibleRangeCheckScheduled:Z
    invoke-static {v0, v2}, Lcom/oneplus/gallery2/GridViewItemAdapter;->access$002(Lcom/oneplus/gallery2/GridViewItemAdapter;Z)Z

    .line 56
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$1;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewItemAdapter;->access$100(Lcom/oneplus/gallery2/GridViewItemAdapter;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$1;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery2/GridViewItemAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewItemAdapter;->access$100(Lcom/oneplus/gallery2/GridViewItemAdapter;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->onVisibleMediaChanged(ZZ)V

    .line 58
    :cond_0
    return-void
.end method
