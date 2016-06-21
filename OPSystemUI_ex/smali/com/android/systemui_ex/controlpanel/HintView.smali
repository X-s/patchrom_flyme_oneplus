.class public Lcom/android/systemui_ex/controlpanel/HintView;
.super Landroid/widget/FrameLayout;
.source "HintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/HintView$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui_ex/controlpanel/HintView$Callback;

.field private mConsuming:Z

.field private mContentView:Landroid/view/ViewGroup;

.field private mFirstX:F

.field private mFirstY:F

.field private mHintDecay:I

.field private mTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/controlpanel/HintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/controlpanel/HintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mContentView:Landroid/view/ViewGroup;

    .line 21
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mHintDecay:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mTouchSlop:F

    .line 40
    const v0, 0x7f040002

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    const v0, 0x7f0f0033

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/HintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mContentView:Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mHintDecay:I

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/HintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mTouchSlop:F

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/HintView;->updateResources()V

    .line 46
    return-void
.end method


# virtual methods
.method public getHintDecay()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mHintDecay:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mConsuming:Z

    if-eqz v4, :cond_2

    .line 80
    :goto_1
    return v3

    .line 53
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mFirstX:F

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mFirstY:F

    .line 55
    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mConsuming:Z

    goto :goto_0

    .line 59
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mFirstY:F

    sub-float v0, v4, v5

    .line 60
    .local v0, "dY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mFirstX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 61
    .local v1, "daX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 63
    .local v2, "daY":F
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mConsuming:Z

    if-nez v4, :cond_0

    cmpg-float v4, v1, v2

    if-gez v4, :cond_0

    iget v4, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mTouchSlop:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    .line 64
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 65
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui_ex/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    .line 67
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mCallback:Lcom/android/systemui_ex/controlpanel/HintView$Callback;

    invoke-interface {v4}, Lcom/android/systemui_ex/controlpanel/HintView$Callback;->hideHintView()V

    .line 68
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mConsuming:Z

    goto :goto_0

    .line 80
    .end local v0    # "dY":F
    .end local v1    # "daX":F
    .end local v2    # "daY":F
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCallback(Lcom/android/systemui_ex/controlpanel/HintView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/HintView$Callback;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mCallback:Lcom/android/systemui_ex/controlpanel/HintView$Callback;

    .line 110
    return-void
.end method

.method public setHintContent(III)V
    .locals 5
    .param p1, "iconId"    # I
    .param p2, "titleId"    # I
    .param p3, "textId"    # I

    .prologue
    .line 85
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 86
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x7f0f0035

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x7f0f0036

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    .local v1, "text":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 93
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mContentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/HintView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/HintView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/HintView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method
