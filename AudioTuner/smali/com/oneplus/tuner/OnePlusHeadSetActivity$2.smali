.class Lcom/oneplus/tuner/OnePlusHeadSetActivity$2;
.super Landroid/os/Handler;
.source "OnePlusHeadSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/OnePlusHeadSetActivity;
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
    .line 129
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$000(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mAdapter:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$000(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->notifyDataSetChanged()V

    .line 137
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # invokes: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->getDefaultExpanedGroupPosition()I
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$200(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)I

    move-result v3

    .line 138
    .local v3, "positon":I
    if-ltz v3, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$100(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mList:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$100(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
