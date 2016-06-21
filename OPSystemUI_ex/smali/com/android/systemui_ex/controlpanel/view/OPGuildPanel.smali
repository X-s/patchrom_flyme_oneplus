.class public Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;
.super Landroid/widget/FrameLayout;
.source "OPGuildPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$1;,
        Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;,
        Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;
    }
.end annotation


# instance fields
.field private mBrightnessController:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

.field private mBrightnessView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

.field private mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarProgessOpacity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->initView(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mBrightnessView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBarProgessOpacity:I

    return v0
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v4, [[I

    new-array v2, v3, [I

    aput-object v2, v1, v3

    new-array v2, v4, [I

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 168
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 60
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v5, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-direct {v5, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    .line 61
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v5}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    .line 62
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    new-instance v6, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;-><init>(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$1;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->startObserving(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040034

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mBrightnessView:Landroid/view/View;

    .line 67
    const v5, 0x7f080051

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBarProgessOpacity:I

    .line 68
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mBrightnessView:Landroid/view/View;

    const v6, 0x7f0f0120

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBar:Landroid/widget/SeekBar;

    .line 69
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->isBlackTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    invoke-virtual {v5}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->getContentColor()I

    move-result v0

    .line 71
    .local v0, "color":I
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 72
    .local v4, "thumbTintList":Landroid/content/res/ColorStateList;
    iget v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBarProgessOpacity:I

    and-int/2addr v5, v0

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 78
    .end local v0    # "color":I
    .local v2, "progressTintList":Landroid/content/res/ColorStateList;
    :goto_0
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 79
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 80
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBar:Landroid/widget/SeekBar;

    const v6, 0x7f080052

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 81
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 82
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v5, :cond_0

    .line 83
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 86
    :cond_0
    new-instance v5, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;Lcom/android/systemui_ex/controlpanel/qs/QSPanel;)V

    iput-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mBrightnessController:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    .line 88
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->addView(Landroid/view/View;)V

    .line 89
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->addView(Landroid/view/View;)V

    .line 90
    return-void

    .line 74
    .end local v2    # "progressTintList":Landroid/content/res/ColorStateList;
    .end local v4    # "thumbTintList":Landroid/content/res/ColorStateList;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mBrightnessView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    invoke-virtual {v6}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->getMainColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    const v5, 0x7f08004a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 76
    .restart local v4    # "thumbTintList":Landroid/content/res/ColorStateList;
    const v5, 0x7f080049

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .restart local v2    # "progressTintList":Landroid/content/res/ColorStateList;
    goto :goto_0
.end method


# virtual methods
.method public getQSPanel()Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    return-object v0
.end method

.method public getQSPanelHeight()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->getPanelHeight()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 100
    .local v2, "width":I
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->getPanelHeight()I

    move-result v1

    .line 101
    .local v1, "height":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 102
    .local v0, "desiredWSpec":I
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setMeasuredDimension(II)V

    .line 103
    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 104
    return-void
.end method

.method public refreshAllTiles()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->refreshAllTiles()V

    .line 116
    :cond_0
    return-void
.end method

.method public setBackgroundTransparencyCallback(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mBrightnessController:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->setBackgroundTransparencyCallback(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;)V

    .line 120
    return-void
.end method

.method public setBrightnessBarHeight(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 127
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    const/4 v0, 0x1

    .line 128
    .local v0, "isLandscape":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 129
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d010c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 130
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->getPanelHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->getShortcutTileViewHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v2, v3

    :cond_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 131
    return-void

    .end local v0    # "isLandscape":Z
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    move v0, v2

    .line 127
    goto :goto_0
.end method

.method public setDetailContentCallback(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setDetailContentCallback(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$DetailCallback;)V

    .line 173
    return-void
.end method

.method public setDetailPanelCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setShowDetailCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;)V

    .line 177
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setListening(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setQSTileCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setQSTileCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;)V

    .line 161
    return-void
.end method

.method public setQSTileHostCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setQSTileHostCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;)V

    .line 157
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method
