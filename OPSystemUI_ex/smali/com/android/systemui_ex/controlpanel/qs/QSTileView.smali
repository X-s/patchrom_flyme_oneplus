.class public Lcom/android/systemui_ex/controlpanel/qs/QSTileView;
.super Landroid/view/ViewGroup;
.source "QSTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;
    }
.end annotation


# static fields
.field private static final TYPEFACE:Landroid/graphics/Typeface;


# instance fields
.field private final STATE_DISABLED:I

.field private final STATE_QUICK_LAUNCH_OFF:I

.field private final STATE_QUICK_LAUNCH_ON:I

.field private final STATE_SWITCH_OFF:I

.field private final STATE_SWITCH_ON:I

.field private mAnimationEnabled:Z

.field private mClickPrimary:Landroid/view/View$OnClickListener;

.field private mClickSecondary:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCross:Landroid/widget/ImageView;

.field private mCrossLineHeight:I

.field private mCrossLineWidthPx:I

.field private mCrossMask:Landroid/widget/ImageView;

.field private final mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;

.field private mHasDetailInfo:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mIconSizePx:I

.field private mIconState:I

.field private mIsShortcutTile:Z

.field private mLabel:Landroid/widget/TextView;

.field private mLabelAddToLinePx:I

.field private mLabelCaretIcon:Landroid/widget/ImageView;

.field private mLabelCaretIconPaddingLeft:I

.field private mLabelLayout:Landroid/widget/LinearLayout;

.field private mLabelTextSize:I

.field private mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

.field private mRipple:Landroid/widget/ImageView;

.field private mRippleRadius:I

.field private mSwitchIconMarginTop:I

.field private mSwitchTilePaddingHorizontal:I

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private mTileHeight:I

.field private mTileWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->TYPEFACE:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isShortcut"    # Z
    .param p3, "hasDetailInfo"    # Z
    .param p4, "showDisabledCross"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v1, Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTileView;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRippleRadius:I

    .line 411
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->STATE_DISABLED:I

    .line 412
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->STATE_SWITCH_ON:I

    .line 413
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->STATE_SWITCH_OFF:I

    .line 414
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->STATE_QUICK_LAUNCH_ON:I

    .line 415
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->STATE_QUICK_LAUNCH_OFF:I

    .line 74
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, "res":Landroid/content/res/Resources;
    iput-boolean p2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIsShortcutTile:Z

    .line 77
    iput-boolean p3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mHasDetailInfo:Z

    .line 78
    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRippleRadius:I

    .line 79
    const v1, 0x7f0d011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossLineHeight:I

    .line 81
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->updateParams()V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->createIcon()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    .line 84
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 86
    if-nez p2, :cond_0

    if-eqz p4, :cond_0

    .line 87
    const v1, 0x7f0d011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossLineWidthPx:I

    .line 88
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    .line 89
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 93
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 96
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 100
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRippleRadius:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setMaxRadius(I)V

    .line 103
    :cond_1
    if-eqz p2, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->initLabelLayout()V

    .line 113
    return-void

    .line 106
    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRipple:Landroid/widget/ImageView;

    .line 107
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRipple:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRipple:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRipple:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private createIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 201
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 202
    return-object v0
.end method

.method private createLabelCaretIcon()Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x7f02046b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 217
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelCaretIconPaddingLeft:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 218
    return-object v0
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 244
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getAlpha(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 424
    packed-switch p1, :pswitch_data_0

    .line 432
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 426
    :pswitch_1
    const/16 v0, 0x4d

    goto :goto_0

    .line 428
    :pswitch_2
    const/16 v0, 0x99

    goto :goto_0

    .line 430
    :pswitch_3
    const/16 v0, 0xcc

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getCurrentState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)I
    .locals 3
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    .prologue
    .line 437
    const/4 v1, 0x2

    .line 438
    .local v1, "iconState":I
    instance-of v2, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    if-eqz v2, :cond_5

    move-object v0, p1

    .line 439
    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .line 440
    .local v0, "booleanState":Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    iget-boolean v2, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->enabled:Z

    if-eqz v2, :cond_4

    .line 441
    iget-boolean v2, v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_2

    .line 442
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIsShortcutTile:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    .line 456
    .end local v0    # "booleanState":Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .end local p1    # "state":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    :cond_0
    :goto_0
    return v1

    .line 442
    .restart local v0    # "booleanState":Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    .restart local p1    # "state":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 444
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIsShortcutTile:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x5

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    .line 447
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "booleanState":Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    :cond_5
    instance-of v2, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    if-eqz v2, :cond_0

    .line 450
    check-cast p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    .end local p1    # "state":Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    iget-boolean v2, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    if-eqz v2, :cond_6

    .line 451
    const/4 v1, 0x2

    goto :goto_0

    .line 453
    :cond_6
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private getLauncherHLColor()I
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;

    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->getContentColor()I

    move-result v0

    return v0
.end method

.method private getLauncherMainColor()I
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;

    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->getMainColor()I

    move-result v0

    return v0
.end method

.method private initLabelLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x2

    const/16 v4, 0x11

    .line 141
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIsShortcutTile:Z

    if-nez v1, :cond_1

    .line 142
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    .line 143
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 145
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 149
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 150
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    sget-object v2, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 154
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 155
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 156
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelAddToLinePx:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mHasDetailInfo:Z

    if-eqz v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->createLabelCaretIcon()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelCaretIcon:Landroid/widget/ImageView;

    .line 160
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelCaretIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 165
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setLabelWidth()V

    .line 167
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private static layout(Landroid/view/View;II)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 275
    return-void
.end method

.method private newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101045c

    aput v3, v0, v4

    .line 207
    .local v0, "attrs":[I
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 208
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 209
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    return-object v1
.end method

.method private playAnimation(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animId"    # I

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 376
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mAnimationEnabled:Z

    if-nez v1, :cond_0

    .line 377
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 379
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 380
    return-void
.end method

.method private setCross(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;I)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .param p2, "iconState"    # I

    .prologue
    const v2, 0x7f050007

    const v1, 0x7f050003

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 341
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 342
    if-ne p2, v4, :cond_3

    .line 343
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->crossStateReverse:Z

    if-eqz v0, :cond_2

    const v0, 0x7f050004

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->playAnimation(Landroid/view/View;I)V

    .line 350
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 351
    if-ne p2, v4, :cond_6

    .line 352
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->crossStateReverse:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->playAnimation(Landroid/view/View;I)V

    .line 359
    :cond_1
    :goto_3
    return-void

    .line 343
    :cond_2
    const v0, 0x7f050006

    goto :goto_0

    .line 345
    :cond_3
    if-ne p2, v5, :cond_0

    .line 346
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->crossStateReverse:Z

    if-eqz v0, :cond_4

    const v0, 0x7f050008

    :goto_4
    invoke-direct {p0, v3, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->playAnimation(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    const v0, 0x7f050002

    goto :goto_4

    :cond_5
    move v0, v2

    .line 352
    goto :goto_2

    .line 354
    :cond_6
    if-ne p2, v5, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    iget-boolean v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->crossStateReverse:Z

    if-eqz v3, :cond_7

    :goto_5
    invoke-direct {p0, v0, v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->playAnimation(Landroid/view/View;I)V

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_5
.end method

.method private setCrossColor()V
    .locals 3

    .prologue
    .line 362
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->isBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getLauncherHLColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getLauncherMainColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private setIcon(Landroid/widget/ImageView;Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;I)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .param p3, "iconState"    # I

    .prologue
    .line 294
    iget v3, p2, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->iconId:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 309
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_3

    .line 310
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 311
    .local v0, "d":Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mAnimationEnabled:Z

    if-eqz v3, :cond_2

    .line 312
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 327
    .end local v0    # "d":Landroid/graphics/drawable/AnimationDrawable;
    :goto_1
    return-void

    .line 300
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIsShortcutTile:Z

    if-eqz v3, :cond_1

    .line 301
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRipple:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 314
    .restart local v0    # "d":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 315
    .local v2, "num":I
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 319
    .end local v0    # "d":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "num":I
    :cond_3
    const/4 v3, 0x2

    if-ne p3, v3, :cond_4

    .line 320
    const v3, 0x7f050005

    invoke-direct {p0, p1, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->playAnimation(Landroid/view/View;I)V

    goto :goto_1

    .line 321
    :cond_4
    const/4 v3, 0x3

    if-ne p3, v3, :cond_5

    .line 322
    const v3, 0x7f050001

    invoke-direct {p0, p1, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->playAnimation(Landroid/view/View;I)V

    goto :goto_1

    .line 324
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getAlpha(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

.method private setIconColor(Landroid/widget/ImageView;I)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # I

    .prologue
    .line 330
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->isBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 333
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getLauncherHLColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private setLabelWidth()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 171
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileWidth:I

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mSwitchTilePaddingHorizontal:I

    sub-int v0, v1, v2

    .line 172
    .local v0, "textWidth":I
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelCaretIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelCaretIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelCaretIconPaddingLeft:I

    sub-int v0, v1, v2

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 179
    .end local v0    # "textWidth":I
    :cond_1
    return-void
.end method

.method private updateParams()V
    .locals 3

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    .local v1, "res":Landroid/content/res/Resources;
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIsShortcutTile:Z

    if-eqz v2, :cond_0

    .line 118
    const v2, 0x7f0d0117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIconSizePx:I

    .line 119
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIconSizePx:I

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileWidth:I

    .line 120
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIconSizePx:I

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileHeight:I

    .line 136
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setLabelWidth()V

    .line 137
    return-void

    .line 122
    :cond_0
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 126
    .local v0, "numOfColumns":I
    :goto_1
    const v2, 0x7f0d0116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIconSizePx:I

    .line 127
    const v2, 0x7f0d0114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileHeight:I

    .line 128
    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/2addr v2, v0

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileWidth:I

    .line 129
    const v2, 0x7f0d0118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelTextSize:I

    .line 130
    const v2, 0x7f0d011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mSwitchIconMarginTop:I

    .line 131
    const v2, 0x7f0d011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelCaretIconPaddingLeft:I

    .line 132
    const v2, 0x7f0d0115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mSwitchTilePaddingHorizontal:I

    .line 133
    const v2, 0x7f0d0119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelAddToLinePx:I

    goto :goto_0

    .line 122
    .end local v0    # "numOfColumns":I
    :cond_1
    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public getTileViewHeight()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileHeight:I

    return v0
.end method

.method public getTileViewWidth()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileWidth:I

    return v0
.end method

.method protected handleStateChanged(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getCurrentState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)I

    move-result v0

    .line 279
    .local v0, "iconState":I
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIconState:I

    if-ne v2, v0, :cond_2

    const/4 v1, 0x1

    .line 280
    .local v1, "same":Z
    :goto_0
    iput v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIconState:I

    .line 281
    if-nez v1, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v2, p1, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;I)V

    .line 283
    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setCross(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;I)V

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setIconColor(Landroid/widget/ImageView;I)V

    .line 286
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setCrossColor()V

    .line 288
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIsShortcutTile:Z

    if-nez v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_1
    return-void

    .line 279
    .end local v1    # "same":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->updateParams()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIconState:I

    .line 186
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getMeasuredWidth()I

    move-result v2

    .line 250
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->getMeasuredHeight()I

    move-result v0

    .line 251
    .local v0, "h":I
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 253
    .local v1, "iconHeight":I
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v5, v3, 0x2

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIsShortcutTile:Z

    if-eqz v3, :cond_4

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    :goto_0
    invoke-static {v4, v5, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 256
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRipple:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRipple:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRipple:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRipple:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 261
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v5, v3, 0x2

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossLineHeight:I

    neg-int v3, v3

    div-int/lit8 v6, v3, 0x2

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIsShortcutTile:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    :goto_1
    add-int/2addr v3, v6

    invoke-static {v4, v5, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 264
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 265
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v5, v3, 0x2

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossLineHeight:I

    neg-int v3, v3

    div-int/lit8 v6, v3, 0x2

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIsShortcutTile:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    :goto_2
    add-int/2addr v3, v6

    invoke-static {v4, v5, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 268
    :cond_2
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 269
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mSwitchTilePaddingHorizontal:I

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 271
    :cond_3
    return-void

    .line 253
    :cond_4
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mSwitchIconMarginTop:I

    goto/16 :goto_0

    .line 261
    :cond_5
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mSwitchIconMarginTop:I

    iget-object v7, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    goto :goto_1

    .line 265
    :cond_6
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mSwitchIconMarginTop:I

    iget-object v7, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 223
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 224
    .local v2, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 225
    .local v0, "h":I
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIconSizePx:I

    invoke-static {v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->exactly(I)I

    move-result v1

    .line 226
    .local v1, "iconSpec":I
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIcon:Landroid/widget/ImageView;

    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 227
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCross:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossLineWidthPx:I

    invoke-static {v4}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->exactly(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossLineWidthPx:I

    invoke-static {v5}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->exactly(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossMask:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossLineWidthPx:I

    invoke-static {v4}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->exactly(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mCrossLineWidthPx:I

    invoke-static {v5}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->exactly(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 233
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 234
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mTileWidth:I

    iget v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mSwitchTilePaddingHorizontal:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->exactly(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mIconSizePx:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mSwitchIconMarginTop:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->exactly(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 237
    :cond_2
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRipple:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 238
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRipple:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRippleRadius:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->exactly(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mRippleRadius:I

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->exactly(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 240
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setMeasuredDimension(II)V

    .line 241
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 384
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .param p1, "animationEnabled"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mAnimationEnabled:Z

    .line 388
    return-void
.end method

.method public setOnClickListetner(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "clickPrimary"    # Landroid/view/View$OnClickListener;
    .param p2, "clickSecondary"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    .line 190
    iput-object p2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    .line 192
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mHasDetailInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mLabelLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_0
    return-void
.end method
