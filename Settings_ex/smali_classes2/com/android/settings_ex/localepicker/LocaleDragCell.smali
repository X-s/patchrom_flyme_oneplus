.class Lcom/android/settings_ex/localepicker/LocaleDragCell;
.super Landroid/widget/RelativeLayout;
.source "LocaleDragCell.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mDragHandle:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field private mLocalized:Landroid/widget/TextView;

.field private mMiniLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getCheckbox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getDragHandle()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f110187

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f11018d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mLocalized:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f11018c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f110072

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    .line 49
    const v0, 0x7f11018b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    .line 43
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 75
    return-void
.end method

.method public setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "labelText"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->invalidate()V

    .line 90
    return-void
.end method

.method public setLocalized(Z)V
    .locals 2
    .param p1, "localized"    # Z

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mLocalized:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->invalidate()V

    .line 98
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMiniLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "miniLabelText"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->invalidate()V

    .line 85
    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 3
    .param p1, "showCheckbox"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->invalidate()V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->requestLayout()V

    .line 62
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShowHandle(Z)V
    .locals 2
    .param p1, "showHandle"    # Z

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->invalidate()V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->requestLayout()V

    .line 52
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setShowMiniLabel(Z)V
    .locals 2
    .param p1, "showMiniLabel"    # Z

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->invalidate()V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->requestLayout()V

    .line 79
    return-void

    .line 80
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
