.class Lcom/oneplus/gallery2/VideoPlayerActivity$17;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$17;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$17;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    # getter for: Lcom/oneplus/gallery2/VideoPlayerActivity;->m_CollectButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/oneplus/gallery2/VideoPlayerActivity;->access$2500(Lcom/oneplus/gallery2/VideoPlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$17;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    # getter for: Lcom/oneplus/gallery2/VideoPlayerActivity;->m_CollectButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/oneplus/gallery2/VideoPlayerActivity;->access$2500(Lcom/oneplus/gallery2/VideoPlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 624
    iget-object v0, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$17;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    iget-object v1, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$17;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    # getter for: Lcom/oneplus/gallery2/VideoPlayerActivity;->m_CollectButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/oneplus/gallery2/VideoPlayerActivity;->access$2500(Lcom/oneplus/gallery2/VideoPlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    # invokes: Lcom/oneplus/gallery2/VideoPlayerActivity;->collectMedia(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/VideoPlayerActivity;->access$2600(Lcom/oneplus/gallery2/VideoPlayerActivity;Z)V

    .line 625
    return-void

    .line 623
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
