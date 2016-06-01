.class Lcom/oppo/tribune/ui/ContentListLayout$2;
.super Ljava/lang/Object;
.source "ContentListLayout.java"

# interfaces
.implements Lcom/oppo/tribune/ui/pullview/ListScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/ui/ContentListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/ui/ContentListLayout;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/ui/ContentListLayout;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oppo/tribune/ui/ContentListLayout$2;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/ViewGroup;III)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 70
    return-void
.end method

.method public onScrollStateChanged(Landroid/view/ViewGroup;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "scrollState"    # I

    .prologue
    .line 53
    if-nez p2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout$2;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    # getter for: Lcom/oppo/tribune/ui/ContentListLayout;->mHideGotoTop:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/oppo/tribune/ui/ContentListLayout;->access$000(Lcom/oppo/tribune/ui/ContentListLayout;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->removeMainRunnable(Ljava/lang/Runnable;)V

    .line 55
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout$2;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    # getter for: Lcom/oppo/tribune/ui/ContentListLayout;->mHideGotoTop:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/oppo/tribune/ui/ContentListLayout;->access$000(Lcom/oppo/tribune/ui/ContentListLayout;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout$2;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    # getter for: Lcom/oppo/tribune/ui/ContentListLayout;->mHideGotoTop:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/oppo/tribune/ui/ContentListLayout;->access$000(Lcom/oppo/tribune/ui/ContentListLayout;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->removeMainRunnable(Ljava/lang/Runnable;)V

    .line 58
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout$2;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    iget-object v0, v0, Lcom/oppo/tribune/ui/ContentListLayout;->mGotoTopView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout$2;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    iget-object v0, v0, Lcom/oppo/tribune/ui/ContentListLayout;->mGotoTopView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
