.class Lcom/oneplus/gallery2/BurstViewerFragment$24;
.super Ljava/lang/Object;
.source "BurstViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;->updateToolbarVisibility(Z)V
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
    .line 2825
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$24;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2829
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$24;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$5000(Lcom/oneplus/gallery2/BurstViewerFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2831
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$24;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$4802(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;)Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    .line 2832
    return-void
.end method
