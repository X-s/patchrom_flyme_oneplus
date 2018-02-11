.class public Lcom/oneplus/lib/app/OPAlertController;
.super Ljava/lang/Object;
.source "OPAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/OPAlertController$1;,
        Lcom/oneplus/lib/app/OPAlertController$AlertParams;,
        Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;,
        Lcom/oneplus/lib/app/OPAlertController$CheckedItemAdapter;,
        Lcom/oneplus/lib/app/OPAlertController$RecycleListView;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get10(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListLayout:I

    return v0
.end method

.method static synthetic -get11(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic -get12(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic -get2(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/lib/app/OPAlertController;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    .line 102
    iput v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    .line 114
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    .line 126
    new-instance v1, Lcom/oneplus/lib/app/OPAlertController$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/OPAlertController$1;-><init>(Lcom/oneplus/lib/app/OPAlertController;)V

    iput-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 183
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    .line 184
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 185
    iput-object p3, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    .line 186
    new-instance v1, Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    .line 188
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_alert_dialog_material:I

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAlertDialogLayout:I

    .line 189
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_material:I

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListLayout:I

    .line 190
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_multichoice_material:I

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMultiChoiceItemLayout:I

    .line 191
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_singlechoice_material:I

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mSingleChoiceItemLayout:I

    .line 192
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_item_material:I

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListItemLayout:I

    .line 195
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog:[I

    .line 196
    sget v2, Lcom/oneplus/commonctrl/R$attr;->OPAlertDialogStyle:I

    .line 194
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 199
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_android_layout:I

    .line 200
    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_alert_dialog_material:I

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAlertDialogLayout:I

    .line 203
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_listLayout:I

    .line 204
    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_material:I

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListLayout:I

    .line 206
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_multiChoiceItemLayout:I

    .line 207
    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_multichoice_material:I

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMultiChoiceItemLayout:I

    .line 209
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_singleChoiceItemLayout:I

    .line 210
    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_singlechoice_material:I

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mSingleChoiceItemLayout:I

    .line 212
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_listItemLayout:I

    .line 213
    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_item_material:I

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListItemLayout:I

    .line 215
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    return v4

    .line 223
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 224
    return v3

    :cond_1
    move-object v1, p0

    .line 227
    check-cast v1, Landroid/view/ViewGroup;

    .line 228
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 229
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 230
    add-int/lit8 v0, v0, -0x1

    .line 231
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 232
    invoke-static {p0}, Lcom/oneplus/lib/app/OPAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    return v4

    .line 237
    :cond_3
    return v3
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 756
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 757
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 758
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 759
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 687
    if-eqz p1, :cond_0

    .line 688
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :cond_0
    if-eqz p2, :cond_1

    .line 691
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 688
    goto :goto_0

    :cond_3
    move v1, v2

    .line 691
    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .prologue
    .line 472
    if-nez p1, :cond_1

    .line 474
    instance-of v1, p2, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 475
    check-cast p2, Landroid/view/ViewStub;

    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 478
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "defaultPanel":Landroid/view/View;
    return-object p2

    .line 482
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    .line 483
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 484
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 485
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 490
    :cond_2
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 491
    check-cast p1, Landroid/view/ViewStub;

    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 494
    .restart local p1    # "customPanel":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "customPanel":Landroid/view/View;
    return-object p1
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 11
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .prologue
    .line 812
    const/4 v9, 0x4

    new-array v8, v9, [Landroid/view/View;

    .line 813
    .local v8, "views":[Landroid/view/View;
    const/4 v9, 0x4

    new-array v3, v9, [Z

    .line 814
    .local v3, "light":[Z
    const/4 v2, 0x0

    .line 815
    .local v2, "lastView":Landroid/view/View;
    const/4 v1, 0x0

    .line 817
    .local v1, "lastLight":Z
    const/4 v5, 0x0

    .line 818
    .local v5, "pos":I
    if-eqz p6, :cond_0

    .line 819
    aput-object p2, v8, v5

    .line 820
    const/4 v9, 0x0

    aput-boolean v9, v3, v5

    .line 821
    const/4 v5, 0x1

    .line 829
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    const/4 p3, 0x0

    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_1
    aput-object p3, v8, v5

    .line 830
    iget-object v9, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    :goto_0
    aput-boolean v9, v3, v5

    .line 831
    add-int/lit8 v5, v5, 0x1

    .line 833
    if-eqz p7, :cond_2

    .line 834
    aput-object p4, v8, v5

    .line 835
    iget-boolean v9, p0, Lcom/oneplus/lib/app/OPAlertController;->mForceInverseBackground:Z

    aput-boolean v9, v3, v5

    .line 836
    add-int/lit8 v5, v5, 0x1

    .line 839
    :cond_2
    if-eqz p8, :cond_3

    .line 840
    aput-object p5, v8, v5

    .line 841
    const/4 v9, 0x1

    aput-boolean v9, v3, v5

    .line 844
    :cond_3
    const/4 v6, 0x0

    .line 845
    .local v6, "setView":Z
    const/4 v5, 0x0

    .end local v1    # "lastLight":Z
    .end local v2    # "lastView":Landroid/view/View;
    :goto_1
    array-length v9, v8

    if-ge v5, v9, :cond_a

    .line 846
    aget-object v7, v8, v5

    .line 847
    .local v7, "v":Landroid/view/View;
    if-nez v7, :cond_5

    .line 845
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 830
    .end local v6    # "setView":Z
    .end local v7    # "v":Landroid/view/View;
    .restart local v1    # "lastLight":Z
    .restart local v2    # "lastView":Landroid/view/View;
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 851
    .end local v1    # "lastLight":Z
    .end local v2    # "lastView":Landroid/view/View;
    .restart local v6    # "setView":Z
    .restart local v7    # "v":Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_6

    .line 852
    if-nez v6, :cond_8

    .line 853
    if-eqz v1, :cond_7

    .line 778
    const/4 v9, 0x0

    .line 853
    :goto_3
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 857
    :goto_4
    const/4 v6, 0x1

    .line 860
    :cond_6
    move-object v2, v7

    .line 861
    .local v2, "lastView":Landroid/view/View;
    aget-boolean v1, v3, v5

    .local v1, "lastLight":Z
    goto :goto_2

    .line 774
    .end local v1    # "lastLight":Z
    .end local v2    # "lastView":Landroid/view/View;
    :cond_7
    const/4 v9, 0x0

    .line 853
    goto :goto_3

    .line 855
    :cond_8
    if-eqz v1, :cond_9

    .line 779
    const/4 v9, 0x0

    .line 855
    :goto_5
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 775
    :cond_9
    const/4 v9, 0x0

    .line 855
    goto :goto_5

    .line 864
    .end local v7    # "v":Landroid/view/View;
    :cond_a
    if-eqz v2, :cond_b

    .line 865
    if-eqz v6, :cond_f

    .line 873
    if-eqz v1, :cond_e

    if-eqz p8, :cond_d

    .line 781
    const/4 v9, 0x0

    .line 872
    :goto_6
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 882
    :cond_b
    :goto_7
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    .line 883
    .local v4, "listView":Landroid/widget/ListView;
    if-eqz v4, :cond_c

    iget-object v9, p0, Lcom/oneplus/lib/app/OPAlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_c

    .line 884
    iget-object v9, p0, Lcom/oneplus/lib/app/OPAlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 885
    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    .line 886
    .local v0, "checkedItem":I
    const/4 v9, -0x1

    if-le v0, v9, :cond_c

    .line 887
    const/4 v9, 0x1

    invoke-virtual {v4, v0, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 888
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 772
    .end local v0    # "checkedItem":I
    :cond_c
    return-void

    .line 780
    .end local v4    # "listView":Landroid/widget/ListView;
    :cond_d
    const/4 v9, 0x0

    .line 873
    goto :goto_6

    .line 776
    :cond_e
    const/4 v9, 0x0

    .line 873
    goto :goto_6

    .line 878
    :cond_f
    if-eqz v1, :cond_10

    .line 777
    const/4 v9, 0x0

    .line 878
    :goto_8
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .line 773
    :cond_10
    const/4 v9, 0x0

    .line 878
    goto :goto_8
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 699
    const/4 v1, 0x0

    .line 700
    .local v1, "whichButtons":I
    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 701
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 711
    :goto_0
    const v2, 0x102001a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 712
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 715
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 723
    :goto_1
    const v2, 0x102001b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 724
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 727
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 735
    :goto_2
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/lib/app/OPAlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    if-ne v1, v0, :cond_5

    .line 741
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/app/OPAlertController;->centerButton(Landroid/widget/Button;)V

    .line 749
    :cond_0
    :goto_3
    if-eqz v1, :cond_7

    .line 750
    .local v0, "hasButtons":Z
    :goto_4
    if-nez v0, :cond_1

    .line 751
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 695
    :cond_1
    return-void

    .line 706
    .end local v0    # "hasButtons":Z
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 708
    const/4 v1, 0x1

    goto :goto_0

    .line 717
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 720
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 729
    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 732
    or-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 697
    :cond_5
    const/4 v2, 0x2

    .line 742
    if-ne v1, v2, :cond_6

    .line 743
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/app/OPAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 698
    :cond_6
    const/4 v2, 0x4

    .line 744
    if-ne v1, v2, :cond_0

    .line 745
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/app/OPAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_7
    move v0, v3

    .line 749
    goto :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 659
    sget v2, Lcom/oneplus/commonctrl/R$id;->scrollView:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 660
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 663
    const v2, 0x102000b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    .line 664
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 665
    return-void

    .line 668
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 669
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 672
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 674
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 675
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 676
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 677
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 678
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    .line 679
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 678
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 681
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x20000

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 579
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 580
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    .line 588
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 589
    .local v2, "hasCustomView":Z
    :cond_0
    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 594
    :goto_1
    if-eqz v2, :cond_6

    .line 595
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102002b

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 596
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    iget-boolean v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_1

    .line 600
    iget v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingLeft:I

    iget v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingTop:I

    iget v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingRight:I

    iget v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingBottom:I

    .line 599
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 603
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 604
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 577
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_2
    :goto_2
    return-void

    .line 581
    .end local v2    # "hasCustomView":Z
    :cond_3
    iget v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_4

    .line 582
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 583
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    .line 585
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    const/4 v1, 0x0

    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    .line 590
    .end local v1    # "customView":Landroid/view/View;
    .restart local v2    # "hasCustomView":Z
    :cond_5
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    .line 607
    :cond_6
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method private setupDecor()V
    .locals 4

    .prologue
    .line 442
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/oneplus/commonctrl/R$id;->parentPanel:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 444
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 445
    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/lib/app/OPAlertController$2;-><init>(Lcom/oneplus/lib/app/OPAlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 457
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 458
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 441
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x8

    .line 613
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 615
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 616
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 615
    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 618
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 621
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcom/oneplus/commonctrl/R$id;->title_template:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 622
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 611
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    .line 626
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 627
    .local v0, "hasTextTitle":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 629
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcom/oneplus/commonctrl/R$id;->alertTitle:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    .line 630
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    if-eqz v3, :cond_2

    .line 636
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 626
    .end local v0    # "hasTextTitle":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 637
    .restart local v0    # "hasTextTitle":Z
    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 638
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 642
    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    .line 643
    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    .line 644
    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    .line 645
    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    .line 642
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 646
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 650
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcom/oneplus/commonctrl/R$id;->title_template:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 651
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 653
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupView()V
    .locals 27

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v23, Lcom/oneplus/commonctrl/R$id;->parentPanel:I

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 499
    .local v21, "parentPanel":Landroid/view/View;
    sget v4, Lcom/oneplus/commonctrl/R$id;->topPanel:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 500
    .local v19, "defaultTopPanel":Landroid/view/View;
    sget v4, Lcom/oneplus/commonctrl/R$id;->contentPanel:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 501
    .local v18, "defaultContentPanel":Landroid/view/View;
    sget v4, Lcom/oneplus/commonctrl/R$id;->buttonPanel:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 505
    .local v17, "defaultButtonPanel":Landroid/view/View;
    sget v4, Lcom/oneplus/commonctrl/R$id;->customPanel:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 506
    .local v8, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/oneplus/lib/app/OPAlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 508
    sget v4, Lcom/oneplus/commonctrl/R$id;->topPanel:I

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 509
    .local v16, "customTopPanel":Landroid/view/View;
    sget v4, Lcom/oneplus/commonctrl/R$id;->contentPanel:I

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 510
    .local v15, "customContentPanel":Landroid/view/View;
    sget v4, Lcom/oneplus/commonctrl/R$id;->buttonPanel:I

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 513
    .local v14, "customButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 514
    .local v6, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 515
    .local v7, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 517
    .local v9, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/oneplus/lib/app/OPAlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 518
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/oneplus/lib/app/OPAlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 519
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/oneplus/lib/app/OPAlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 521
    if-eqz v8, :cond_4

    .line 522
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v4, v0, :cond_3

    const/4 v11, 0x1

    .line 523
    .local v11, "hasCustomPanel":Z
    :goto_0
    if-eqz v6, :cond_6

    .line 524
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v4, v0, :cond_5

    const/4 v10, 0x1

    .line 525
    .local v10, "hasTopPanel":Z
    :goto_1
    if-eqz v9, :cond_8

    .line 526
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v4, v0, :cond_7

    const/4 v12, 0x1

    .line 529
    .local v12, "hasButtonPanel":Z
    :goto_2
    if-nez v12, :cond_0

    .line 530
    if-eqz v7, :cond_0

    .line 531
    sget v4, Lcom/oneplus/commonctrl/R$id;->textSpacerNoButtons:I

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 532
    .local v22, "spacer":Landroid/view/View;
    if-eqz v22, :cond_0

    .line 533
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 539
    .end local v22    # "spacer":Landroid/view/View;
    :cond_0
    if-eqz v10, :cond_1

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_1

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 560
    :cond_1
    if-nez v11, :cond_2

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    .line 562
    .local v13, "content":Landroid/view/View;
    :goto_3
    if-eqz v13, :cond_2

    .line 563
    if-eqz v10, :cond_a

    const/4 v4, 0x1

    move/from16 v23, v4

    .line 564
    :goto_4
    if-eqz v12, :cond_b

    const/4 v4, 0x2

    .line 563
    :goto_5
    or-int v20, v23, v4

    .line 566
    .local v20, "indicators":I
    const/4 v4, 0x3

    .line 565
    move/from16 v0, v20

    invoke-virtual {v13, v0, v4}, Landroid/view/View;->setScrollIndicators(II)V

    .line 570
    .end local v13    # "content":Landroid/view/View;
    .end local v20    # "indicators":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    .line 571
    sget-object v23, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog:[I

    const/16 v24, 0x0

    const v25, 0x101005d

    const/16 v26, 0x0

    .line 570
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v4, p0

    .line 572
    invoke-direct/range {v4 .. v12}, Lcom/oneplus/lib/app/OPAlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 574
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 497
    return-void

    .line 522
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "hasTopPanel":Z
    .end local v11    # "hasCustomPanel":Z
    .end local v12    # "hasButtonPanel":Z
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "hasCustomPanel":Z
    goto :goto_0

    .line 521
    .end local v11    # "hasCustomPanel":Z
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "hasCustomPanel":Z
    goto/16 :goto_0

    .line 524
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "hasTopPanel":Z
    goto :goto_1

    .line 523
    .end local v10    # "hasTopPanel":Z
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "hasTopPanel":Z
    goto :goto_1

    .line 526
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 525
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    .line 561
    .restart local v12    # "hasButtonPanel":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    goto :goto_3

    .line 563
    .restart local v13    # "content":Landroid/view/View;
    :cond_a
    const/4 v4, 0x0

    move/from16 v23, v4

    goto :goto_4

    .line 564
    :cond_b
    const/4 v4, 0x0

    goto :goto_5
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 419
    packed-switch p1, :pswitch_data_0

    .line 427
    const/4 v0, 0x0

    return-object v0

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 423
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 425
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    .line 419
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 405
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 406
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 407
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 244
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 245
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->setupView()V

    .line 246
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->setupDecor()V

    .line 240
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 335
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 336
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 339
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :pswitch_0
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 343
    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 333
    :goto_0
    return-void

    .line 347
    :pswitch_1
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 348
    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 352
    :pswitch_2
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 353
    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    .line 270
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 369
    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    .line 371
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 372
    if-eqz p1, :cond_1

    .line 373
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    .line 389
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 390
    if-eqz p1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mForceInverseBackground:Z

    .line 410
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 262
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    .line 286
    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    .line 284
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 294
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    .line 295
    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    .line 296
    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    .line 293
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 304
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    .line 307
    iput p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingLeft:I

    .line 308
    iput p3, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingTop:I

    .line 309
    iput p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingRight:I

    .line 310
    iput p5, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingBottom:I

    .line 303
    return-void
.end method
