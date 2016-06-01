.class Lcom/oppo/tribune/ui/ContentListLayout$3;
.super Ljava/lang/Object;
.source "ContentListLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/ui/ContentListLayout;->init(Landroid/content/Context;)V
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
    .line 99
    iput-object p1, p0, Lcom/oppo/tribune/ui/ContentListLayout$3;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout$3;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    iget-object v0, v0, Lcom/oppo/tribune/ui/ContentListLayout;->mContentListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 105
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout$3;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    iget-object v0, v0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->setOnPullRefresh()V

    .line 106
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout$3;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    iget-object v0, v0, Lcom/oppo/tribune/ui/ContentListLayout;->mGotoTopView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    return-void
.end method
