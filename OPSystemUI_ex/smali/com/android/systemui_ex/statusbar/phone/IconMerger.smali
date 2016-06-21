.class public Lcom/android/systemui_ex/statusbar/phone/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;


# static fields
.field private static mLastWidth:I

.field private static mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# instance fields
.field private mIconSize:I

.field private mMoreView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, -0x2

    sput v0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mLastWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mIconSize:I

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/phone/IconMerger;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public checkOverflow(I)V
    .locals 11
    .param p1, "width"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 70
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    if-nez v8, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    .line 73
    .local v0, "N":I
    const/4 v5, 0x0

    .line 74
    .local v5, "visibleChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 74
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_3
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6

    move v4, v6

    .line 86
    .local v4, "overflowShown":Z
    :goto_2
    sget-object v8, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    if-eqz v8, :cond_4

    .line 89
    sget-object v8, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getNotificationIconAreaWidth()I

    move-result v8

    sget-object v9, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getStatusIconsCount()I

    move-result v9

    iget v10, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mIconSize:I

    mul-int/2addr v9, v10

    sub-int p1, v8, v9

    .line 91
    iget v8, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mIconSize:I

    div-int v8, p1, v8

    iget v9, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mIconSize:I

    mul-int p1, v8, v9

    .line 94
    :cond_4
    iget v8, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mIconSize:I

    mul-int/2addr v8, v5

    if-le v8, p1, :cond_7

    move v3, v6

    .line 96
    .local v3, "moreRequired":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 98
    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sput v6, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mLastWidth:I

    .line 99
    if-eqz v3, :cond_8

    .line 101
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 107
    :goto_4
    sget v6, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mLastWidth:I

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v6, v7, :cond_5

    .line 108
    new-instance v6, Lcom/android/systemui_ex/statusbar/phone/IconMerger$1;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui_ex/statusbar/phone/IconMerger$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/IconMerger;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {p0, v6}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->post(Ljava/lang/Runnable;)Z

    .line 118
    :cond_5
    if-eq v3, v4, :cond_0

    .line 119
    new-instance v6, Lcom/android/systemui_ex/statusbar/phone/IconMerger$2;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui_ex/statusbar/phone/IconMerger$2;-><init>(Lcom/android/systemui_ex/statusbar/phone/IconMerger;Z)V

    invoke-virtual {p0, v6}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "moreRequired":Z
    .end local v4    # "overflowShown":Z
    :cond_6
    move v4, v7

    .line 77
    goto :goto_2

    .restart local v4    # "overflowShown":Z
    :cond_7
    move v3, v7

    .line 94
    goto :goto_3

    .line 103
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "moreRequired":Z
    :cond_8
    const/4 v6, -0x2

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 65
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 66
    sub-int v0, p4, p2

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->checkOverflow(I)V

    .line 67
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getMeasuredWidth()I

    move-result v0

    .line 60
    .local v0, "width":I
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mIconSize:I

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->setMeasuredDimension(II)V

    .line 61
    return-void
.end method

.method public onStatusbarColorChange(Z)V
    .locals 2
    .param p1, "isUsingDarkColor"    # Z

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 140
    invoke-static {p0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    .line 53
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 147
    sput-object p1, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 148
    return-void
.end method
