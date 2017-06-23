.class Landroid/widget/AbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 2404
    iput-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2407
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2409
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2410
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2411
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2415
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2475
    :goto_0
    return v5

    .line 2419
    :cond_0
    iget-object v7, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 2420
    .local v4, "position":I
    if-eq v4, v8, :cond_1

    iget-object v7, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v7, :cond_2

    :cond_1
    move v5, v6

    .line 2422
    goto :goto_0

    .line 2425
    :cond_2
    iget-object v7, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v4, v7, :cond_3

    move v5, v6

    .line 2432
    goto :goto_0

    .line 2436
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2437
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v7, v3, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v7, :cond_5

    .line 2438
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v2, v3, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2443
    .local v2, "isItemEnabled":Z
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v2, :cond_6

    :cond_4
    move v5, v6

    .line 2445
    goto :goto_0

    .line 2440
    .end local v2    # "isItemEnabled":Z
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isItemEnabled":Z
    goto :goto_1

    .line 2448
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    sparse-switch p2, :sswitch_data_0

    move v5, v6

    .line 2475
    goto :goto_0

    .line 2450
    :sswitch_0
    iget-object v7, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v4, :cond_7

    .line 2451
    iget-object v6, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v8}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0

    :cond_7
    move v5, v6

    .line 2454
    goto :goto_0

    .line 2456
    :sswitch_1
    iget-object v7, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v7

    if-eq v7, v4, :cond_8

    .line 2457
    iget-object v6, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v4}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0

    :cond_8
    move v5, v6

    .line 2460
    goto :goto_0

    .line 2462
    :sswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2463
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v4}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 2464
    .local v0, "id":J
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p1, v4, v0, v1}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v5

    goto :goto_0

    .end local v0    # "id":J
    :cond_9
    move v5, v6

    .line 2466
    goto :goto_0

    .line 2468
    :sswitch_3
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2469
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v4}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 2470
    .restart local v0    # "id":J
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p1, v4, v0, v1}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    goto/16 :goto_0

    .end local v0    # "id":J
    :cond_a
    move v5, v6

    .line 2472
    goto/16 :goto_0

    .line 2448
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
