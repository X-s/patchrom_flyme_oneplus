.class Lcom/oneplus/tuner/OnePlusHeadSetActivity$1;
.super Ljava/lang/Object;
.source "OnePlusHeadSetActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusHeadSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$000(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    if-eq p1, v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$100(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->collapseGroup(I)Z

    .line 69
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$000(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->setGroupClickStatus(II)V

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method
