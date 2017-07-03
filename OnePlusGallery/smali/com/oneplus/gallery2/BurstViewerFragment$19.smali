.class Lcom/oneplus/gallery2/BurstViewerFragment$19;
.super Ljava/lang/Object;
.source "BurstViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 1443
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$19;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$19;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$4400(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick() - click toolbar navigation."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$19;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->closeFragment()V
    invoke-static {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$4500(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    .line 1449
    return-void
.end method
