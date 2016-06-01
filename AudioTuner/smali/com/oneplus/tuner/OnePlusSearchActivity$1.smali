.class Lcom/oneplus/tuner/OnePlusSearchActivity$1;
.super Ljava/lang/Object;
.source "OnePlusSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusSearchActivity;->findViewsAndRegisteListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusSearchActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 121
    const-string v0, "shuqi"

    const-string v1, "mClearSearchHistoryBtn onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$000(Lcom/oneplus/tuner/OnePlusSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchHistoryList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$200(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mFooterView:Landroid/view/View;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$100(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 124
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->isAddedFooterView:Z
    invoke-static {v0, v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$302(Lcom/oneplus/tuner/OnePlusSearchActivity;Z)Z

    .line 125
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->showEmptyView(Z)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mAdapter:Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$400(Lcom/oneplus/tuner/OnePlusSearchActivity;)Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method
