.class public Lcom/android/systemui_ex/BatteryIconGroup;
.super Landroid/widget/LinearLayout;
.source "BatteryIconGroup.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;
.implements Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private densityScale:F

.field private mBatteryChargingView:Landroid/widget/ImageView;

.field private mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

.field private mBatteryLevelView:Landroid/widget/TextView;

.field private mBatteryMeterView:Lcom/android/systemui_ex/BatteryMeterView;

.field private mBatteryShowPercentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mShowPercent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/systemui_ex/BatteryIconGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/BatteryIconGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/BatteryIconGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v1, Lcom/android/systemui_ex/BatteryIconGroup$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui_ex/BatteryIconGroup$1;-><init>(Lcom/android/systemui_ex/BatteryIconGroup;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryShowPercentObserver:Landroid/database/ContentObserver;

    .line 55
    iput-object p1, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_show_battery_percent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mShowPercent:Z

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/BatteryIconGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/BatteryIconGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mShowPercent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/BatteryIconGroup;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/BatteryIconGroup;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/BatteryIconGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/BatteryIconGroup;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui_ex/BatteryIconGroup;->updateBatteryLevelVisibility()V

    return-void
.end method

.method private updateBatteryLevelColor()V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->isUsingDarkIconOnNormalStatusbar()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#B3000000"

    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    return-void

    .line 129
    :cond_0
    const-string v0, "#CCFFFFFF"

    goto :goto_0
.end method

.method private updateBatteryLevelVisibility()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryLevelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 63
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryShowPercentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/BatteryIconGroup;->updateBatteryLevelVisibility()V

    .line 65
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryChargingView:Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui_ex/BatteryIconGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0165

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {p0}, Lcom/android/systemui_ex/BatteryIconGroup;->updateBatteryLevelVisibility()V

    .line 80
    return-void

    .line 76
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryLevelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui_ex/BatteryIconGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryShowPercentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 71
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 90
    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/BatteryIconGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryMeterView:Lcom/android/systemui_ex/BatteryMeterView;

    .line 91
    const v0, 0x7f0f0030

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/BatteryIconGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryLevelView:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/BatteryIconGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryChargingView:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->getSystemDisplayMetricDensity(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->densityScale:F

    .line 94
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 112
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryMeterView:Lcom/android/systemui_ex/BatteryMeterView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/BatteryMeterView;->getRight()I

    move-result v1

    const/high16 v2, 0x40200000    # 2.5f

    iget v3, p0, Lcom/android/systemui_ex/BatteryIconGroup;->densityScale:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 121
    .local v0, "chargingStartingMargin":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryChargingView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 126
    return-void

    .line 118
    .end local v0    # "chargingStartingMargin":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/systemui_ex/BatteryIconGroup;->densityScale:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    add-int v0, v1, v2

    .restart local v0    # "chargingStartingMargin":I
    goto :goto_0
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onStatusbarColorChange(Z)V
    .locals 1
    .param p1, "isUsingDarkColor"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryMeterView:Lcom/android/systemui_ex/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/BatteryMeterView;->onStatusbarColorChange(Z)V

    .line 99
    invoke-direct {p0}, Lcom/android/systemui_ex/BatteryIconGroup;->updateBatteryLevelColor()V

    .line 100
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui_ex/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    .line 147
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryIconGroup;->mBatteryMeterView:Lcom/android/systemui_ex/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/BatteryMeterView;->setBatteryController(Lcom/android/systemui_ex/statusbar/policy/BatteryController;)V

    .line 148
    return-void
.end method
