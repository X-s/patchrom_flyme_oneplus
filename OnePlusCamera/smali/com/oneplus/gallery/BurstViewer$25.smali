.class Lcom/oneplus/gallery/BurstViewer$25;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$25;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1742
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1744
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$25;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v1}, Lcom/oneplus/gallery/BurstViewer;->-get4(Lcom/oneplus/gallery/BurstViewer;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$25;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v1}, Lcom/oneplus/gallery/BurstViewer;->-get4(Lcom/oneplus/gallery/BurstViewer;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1752
    :cond_0
    return v4

    .line 1744
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$25;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v1}, Lcom/oneplus/gallery/BurstViewer;->-get1(Lcom/oneplus/gallery/BurstViewer;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1746
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$25;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v1}, Lcom/oneplus/gallery/BurstViewer;->-get4(Lcom/oneplus/gallery/BurstViewer;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1747
    .local v0, "currentIndex":I
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$25;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v1}, Lcom/oneplus/gallery/BurstViewer;->-get0(Lcom/oneplus/gallery/BurstViewer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouch() - current index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$25;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v1}, Lcom/oneplus/gallery/BurstViewer;->-get1(Lcom/oneplus/gallery/BurstViewer;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 1749
    const/4 v1, 0x1

    return v1
.end method
