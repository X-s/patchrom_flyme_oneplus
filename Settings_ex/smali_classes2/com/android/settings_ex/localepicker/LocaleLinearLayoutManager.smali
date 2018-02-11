.class public Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "LocaleLinearLayoutManager.java"


# instance fields
.field private final mActionMoveBottom:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveDown:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveTop:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveUp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionRemove:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    .line 58
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 60
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e05b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    const v2, 0x7f110015

    .line 58
    invoke-direct {v0, v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mActionMoveUp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 61
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 63
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e05b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    const v2, 0x7f110016

    .line 61
    invoke-direct {v0, v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mActionMoveDown:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 64
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 66
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e05b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    const v2, 0x7f110017

    .line 64
    invoke-direct {v0, v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mActionMoveTop:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 67
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e05b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    const v2, 0x7f110018

    .line 67
    invoke-direct {v0, v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mActionMoveBottom:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 70
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e05b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    const v2, 0x7f110019

    .line 70
    invoke-direct {v0, v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mActionRemove:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 53
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->getItemCount()I

    move-result v3

    .line 82
    .local v3, "itemCount":I
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 87
    .local v4, "position":I
    instance-of v2, p3, Lcom/android/settings_ex/localepicker/LocaleDragCell;

    .line 88
    .local v2, "isValidView":Z
    if-nez v2, :cond_0

    .line 89
    const-string/jumbo v5, "LocaleLinearLayoutManager"

    const-string/jumbo v6, "host view is not instanceof LocaleDragCell"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    :cond_0
    move-object v1, p3

    .line 93
    check-cast v1, Lcom/android/settings_ex/localepicker/LocaleDragCell;

    .line 99
    .local v1, "dragCell":Lcom/android/settings_ex/localepicker/LocaleDragCell;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->isRemoveMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    return-void

    .line 109
    :cond_1
    if-lez v4, :cond_2

    .line 110
    iget-object v5, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mActionMoveUp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 111
    iget-object v5, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mActionMoveTop:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 113
    :cond_2
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v3, :cond_3

    .line 114
    iget-object v5, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mActionMoveDown:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 115
    iget-object v5, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mActionMoveBottom:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 117
    :cond_3
    const/4 v5, 0x1

    if-le v3, v5, :cond_4

    .line 118
    iget-object v5, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mActionRemove:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 77
    :cond_4
    return-void
.end method

.method public performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "action"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->getItemCount()I

    move-result v0

    .line 127
    .local v0, "itemCount":I
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 128
    .local v1, "position":I
    const/4 v2, 0x0

    .line 130
    .local v2, "result":Z
    packed-switch p4, :pswitch_data_0

    .line 162
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutManager;->performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v3

    return v3

    .line 132
    :pswitch_0
    if-lez v1, :cond_0

    .line 133
    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    .line 134
    const/4 v2, 0x1

    .line 165
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 166
    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 168
    :cond_1
    return v2

    .line 138
    :pswitch_1
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    .line 140
    const/4 v2, 0x1

    goto :goto_0

    .line 144
    :pswitch_2
    if-eqz v1, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3, v1, v4}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    .line 146
    const/4 v2, 0x1

    goto :goto_0

    .line 150
    :pswitch_3
    add-int/lit8 v3, v0, -0x1

    if-eq v1, v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    .line 152
    const/4 v2, 0x1

    goto :goto_0

    .line 156
    :pswitch_4
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->removeItem(I)V

    .line 158
    const/4 v2, 0x1

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x7f110015
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
