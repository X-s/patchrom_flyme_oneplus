.class Lcom/oneplus/gallery2/VideoPlayerActivity$26;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/VideoPlayerActivity;->updateControlsVisibility(Z)V
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
    .line 1553
    iput-object p1, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$26;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$26;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    # getter for: Lcom/oneplus/gallery2/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery2/VideoPlayerActivity;->access$3300(Lcom/oneplus/gallery2/VideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    iget-object v0, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$26;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    sget-object v1, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery2/VideoPlayerActivity;->m_ControlsVisibilityState:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/VideoPlayerActivity;->access$3102(Lcom/oneplus/gallery2/VideoPlayerActivity;Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;)Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    .line 1559
    return-void
.end method
