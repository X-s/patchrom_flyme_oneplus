.class Lcom/oneplus/gallery2/GridViewFragment$11;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0

    .prologue
    .line 2095
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$11;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$11;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$3000(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/widget/FastScrollBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$11;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$3000(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/widget/FastScrollBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->adjustThumbPosition()V

    .line 2099
    :cond_0
    return-void
.end method
