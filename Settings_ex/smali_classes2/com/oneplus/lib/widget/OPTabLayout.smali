.class public Lcom/oneplus/lib/widget/OPTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "OPTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPTabLayout$Mode;,
        Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;,
        Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;,
        Lcom/oneplus/lib/widget/OPTabLayout$Tab;,
        Lcom/oneplus/lib/widget/OPTabLayout$TabGravity;,
        Lcom/oneplus/lib/widget/OPTabLayout$TabView;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38


# instance fields
.field private fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

.field private mContentInsetStart:I

.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mMode:I

.field private mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

.field private final mRequestedTabMaxWidth:I

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

.field private final mTabBackgroundResId:I

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabGravity:I

.field private mTabHorizontalSpacing:I

.field private mTabMaxWidth:I

.field private final mTabMinWidth:I

.field private mTabPaddingBottom:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabPaddingTop:I

.field private final mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

.field private mTabTextAppearance:I

.field private mTabTextColors:Landroid/content/res/ColorStateList;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/OPTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    return v0
.end method

.method static synthetic -get10(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextAppearance:I

    return v0
.end method

.method static synthetic -get11(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabBackgroundResId:I

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    return v0
.end method

.method static synthetic -get5(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMinWidth:I

    return v0
.end method

.method static synthetic -get6(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    return v0
.end method

.method static synthetic -get7(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    return v0
.end method

.method static synthetic -get8(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    return v0
.end method

.method static synthetic -get9(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/lib/widget/OPTabLayout;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/lib/widget/OPTabLayout;I)I
    .locals 1
    .param p1, "dps"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/lib/widget/OPTabLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsLayoutParams()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/lib/widget/OPTabLayout;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTab(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 211
    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPTabLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 215
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    .line 189
    const v2, 0x7fffffff

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    .line 218
    const v2, 0x10c000d

    .line 217
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

    .line 221
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/OPTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 223
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/OPTabLayout;->setFillViewport(Z)V

    .line 226
    new-instance v2, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    .line 227
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/lib/widget/OPTabLayout;->addView(Landroid/view/View;II)V

    .line 229
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout:[I

    .line 230
    sget v3, Lcom/oneplus/commonctrl/R$style;->Oneplus_Widget_Design_OPTabLayout:I

    .line 229
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    .line 233
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabIndicatorHeight:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 232
    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 234
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabIndicatorColor:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 236
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabTextAppearance:I

    .line 237
    sget v3, Lcom/oneplus/commonctrl/R$style;->Oneplus_TextAppearance_Design_Tab:I

    .line 236
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextAppearance:I

    .line 240
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPadding:I

    .line 239
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    .line 241
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingStart:I

    .line 242
    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    .line 241
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    .line 243
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingTop:I

    .line 244
    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    .line 243
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    .line 245
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingEnd:I

    .line 246
    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    .line 245
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    .line 247
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingBottom:I

    .line 248
    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    .line 247
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    .line 251
    iget v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextAppearance:I

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/OPTabLayout;->loadTextColorFromTextAppearance(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 253
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 258
    :cond_0
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabSelectedTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabSelectedTextColor:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 263
    .local v1, "selected":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 266
    .end local v1    # "selected":I
    :cond_1
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabMinWidth:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMinWidth:I

    .line 267
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabMaxWidth:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mRequestedTabMaxWidth:I

    .line 268
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabBackground:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabBackgroundResId:I

    .line 269
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabContentStart:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mContentInsetStart:I

    .line 270
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_horizontalSpacing:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabHorizontalSpacing:I

    .line 271
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabMode:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    .line 272
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabGravity:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    .line 273
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->applyModeAndGravity()V

    .line 214
    return-void
.end method

.method private addTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;IZ)V
    .locals 3
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->createTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    move-result-object v0

    .line 614
    .local v0, "tabView":Lcom/oneplus/lib/widget/OPTabLayout$TabView;
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 615
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsMargin()V

    .line 616
    if-eqz p3, :cond_0

    .line 617
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setSelected(Z)V

    .line 612
    :cond_0
    return-void
.end method

.method private addTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V
    .locals 3
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->createTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    move-result-object v0

    .line 605
    .local v0, "tabView":Lcom/oneplus/lib/widget/OPTabLayout$TabView;
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsMargin()V

    .line 607
    if-eqz p2, :cond_0

    .line 608
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setSelected(Z)V

    .line 603
    :cond_0
    return-void
.end method

.method private animateToTab(I)V
    .locals 7
    .param p1, "newPosition"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 710
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 711
    return-void

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v2

    .line 714
    if-eqz v2, :cond_2

    .line 718
    :cond_1
    invoke-virtual {p0, p1, v3, v6}, Lcom/oneplus/lib/widget/OPTabLayout;->setScrollPosition(IFZ)V

    .line 719
    return-void

    .line 722
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getScrollX()I

    move-result v0

    .line 723
    .local v0, "startScrollX":I
    invoke-direct {p0, p1, v3}, Lcom/oneplus/lib/widget/OPTabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    .line 725
    .local v1, "targetScrollX":I
    if-eq v0, v1, :cond_4

    .line 726
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_3

    .line 727
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 728
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 729
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 730
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oneplus/lib/widget/OPTabLayout$2;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/widget/OPTabLayout$2;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 738
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 739
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 743
    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/16 v3, 0x12c

    invoke-virtual {v2, p1, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    .line 709
    return-void
.end method

.method private applyModeAndGravity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 808
    const/4 v0, 0x0

    .line 809
    .local v0, "paddingStart":I
    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    if-nez v1, :cond_0

    .line 811
    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mContentInsetStart:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 813
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0, v3, v3, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setPaddingRelative(IIII)V

    .line 815
    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 824
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsLayoutParams()V

    .line 807
    return-void

    .line 817
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_0

    .line 820
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_0

    .line 815
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    const/4 v5, 0x0

    .line 791
    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    if-nez v4, :cond_3

    .line 792
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v4, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 793
    .local v2, "selectedChild":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 794
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 796
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 797
    .local v3, "selectedWidth":I
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 799
    .local v1, "nextWidth":I
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 800
    add-int v5, v3, v1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 799
    add-int/2addr v4, v5

    .line 801
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 799
    add-int/2addr v4, v5

    .line 802
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 799
    sub-int/2addr v4, v5

    return v4

    .line 795
    .end local v1    # "nextWidth":I
    .end local v3    # "selectedWidth":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "nextChild":Landroid/view/View;
    goto :goto_0

    .line 796
    .end local v0    # "nextChild":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "selectedWidth":I
    goto :goto_1

    .line 797
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "nextWidth":I
    goto :goto_2

    .line 804
    .end local v1    # "nextWidth":I
    .end local v2    # "selectedChild":Landroid/view/View;
    .end local v3    # "selectedWidth":I
    :cond_3
    return v5
.end method

.method private configureTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;I)V
    .locals 3
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .param p2, "position"    # I

    .prologue
    .line 587
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    .line 588
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 590
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 591
    .local v0, "count":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 592
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "defaultColor"    # I
    .param p1, "selectedColor"    # I

    .prologue
    const/4 v3, 0x2

    .line 1481
    new-array v2, v3, [[I

    .line 1482
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 1483
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 1485
    .local v1, "i":I
    sget-object v3, Lcom/oneplus/lib/widget/OPTabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 1486
    aput p1, v0, v1

    .line 1487
    const/4 v1, 0x1

    .line 1490
    sget-object v3, Lcom/oneplus/lib/widget/OPTabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 1491
    aput p0, v0, v1

    .line 1492
    add-int/lit8 v1, v1, 0x1

    .line 1494
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 631
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 632
    const/4 v1, -0x2

    const/4 v2, -0x1

    .line 631
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 633
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabHorizontalSpacing:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 634
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 635
    return-object v0
.end method

.method private createTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout$TabView;
    .locals 2
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .prologue
    .line 570
    new-instance v0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    .line 571
    .local v0, "tabView":Lcom/oneplus/lib/widget/OPTabLayout$TabView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setFocusable(Z)V

    .line 573
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_0

    .line 574
    new-instance v1, Lcom/oneplus/lib/widget/OPTabLayout$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/OPTabLayout$1;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    return-object v0
.end method

.method private dpToPx(I)I
    .locals 2
    .param p1, "dps"    # I

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private loadTextColorFromTextAppearance(I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "textAppearanceResId"    # I

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1499
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->TextAppearance:[I

    .line 1498
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1501
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1503
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1501
    return-object v1

    .line 1502
    :catchall_0
    move-exception v1

    .line 1503
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1502
    throw v1
.end method

.method private removeTabViewAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->removeViewAt(I)V

    .line 705
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsMargin()V

    .line 706
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->requestLayout()V

    .line 703
    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 747
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    .line 748
    .local v2, "tabCount":I
    if-ge p1, v2, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 746
    :cond_0
    return-void

    .line 749
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 750
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 751
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateAllTabs()V
    .locals 3

    .prologue
    .line 564
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 565
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTab(I)V

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_0
    return-void
.end method

.method private updateTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 597
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    .line 598
    .local v0, "view":Lcom/oneplus/lib/widget/OPTabLayout$TabView;
    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->update()V

    .line 596
    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 3
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    const/4 v2, 0x0

    .line 639
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    if-nez v0, :cond_0

    .line 640
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 641
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 638
    :goto_0
    return-void

    .line 643
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 644
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private updateTabViewsLayoutParams()V
    .locals 3

    .prologue
    .line 828
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 830
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 831
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updateTabViewsMargin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 623
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 624
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 625
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 626
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 622
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V

    .line 331
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;I)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .param p2, "position"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;IZ)V

    .line 342
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 372
    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->-get0(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab belongs to a different OPTabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/OPTabLayout;->addTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;IZ)V

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout;->configureTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;I)V

    .line 378
    if-eqz p3, :cond_1

    .line 379
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->select()V

    .line 371
    :cond_1
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 353
    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->-get0(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab belongs to a different OPTabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout;->addTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V

    .line 358
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->configureTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;I)V

    .line 359
    if-eqz p2, :cond_1

    .line 360
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->select()V

    .line 352
    :cond_1
    return-void
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabAt(I)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newTab()Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 1

    .prologue
    .line 402
    new-instance v0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 656
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/oneplus/commonctrl/R$dimen;->tab_layout_default_height_material:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingBottom()I

    move-result v8

    add-int v4, v7, v8

    .line 657
    .local v4, "idealHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 669
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 671
    iget v7, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    if-ne v7, v11, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getChildCount()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 674
    invoke-virtual {p0, v10}, Lcom/oneplus/lib/widget/OPTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 675
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getMeasuredWidth()I

    move-result v6

    .line 677
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-le v7, v6, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingTop()I

    move-result v7

    .line 681
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingBottom()I

    move-result v8

    .line 680
    add-int/2addr v7, v8

    .line 681
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 680
    invoke-static {p2, v7, v8}, Lcom/oneplus/lib/widget/OPTabLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 682
    .local v1, "childHeightMeasureSpec":I
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 683
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 689
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v6    # "width":I
    :cond_0
    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mRequestedTabMaxWidth:I

    .line 690
    .local v5, "maxTabWidth":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getMeasuredWidth()I

    move-result v7

    const/16 v8, 0x38

    invoke-direct {p0, v8}, Lcom/oneplus/lib/widget/OPTabLayout;->dpToPx(I)I

    move-result v8

    sub-int v3, v7, v8

    .line 691
    .local v3, "defaultTabMaxWidth":I
    if-eqz v5, :cond_1

    if-le v5, v3, :cond_2

    .line 693
    :cond_1
    move v5, v3

    .line 696
    :cond_2
    iget v7, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    if-eq v7, v5, :cond_3

    .line 698
    iput v5, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    .line 699
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 653
    :cond_3
    return-void

    .line 660
    .end local v3    # "defaultTabMaxWidth":I
    .end local v5    # "maxTabWidth":I
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 659
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 664
    :sswitch_1
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 657
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public removeAllTabs()V
    .locals 3

    .prologue
    .line 475
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->removeAllViews()V

    .line 477
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/lib/widget/OPTabLayout$Tab;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .line 479
    .local v1, "tab":Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 483
    .end local v1    # "tab":Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .line 473
    return-void
.end method

.method public removeTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .prologue
    .line 438
    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->-get0(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab does not belong to this OPTabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->removeTabAt(I)V

    .line 437
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 452
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v3

    .line 453
    .local v3, "selectedTabPosition":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->removeTabViewAt(I)V

    .line 455
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .line 456
    .local v2, "removedTab":Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    if-eqz v2, :cond_0

    .line 457
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    .line 460
    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 461
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 462
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v4, v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 452
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .end local v3    # "selectedTabPosition":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "selectedTabPosition":I
    goto :goto_0

    .line 465
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    :cond_2
    if-ne v3, p1, :cond_3

    .line 466
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v5

    :goto_2
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout;->selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    .line 451
    :cond_3
    return-void

    .line 466
    :cond_4
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    goto :goto_2
.end method

.method selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .prologue
    .line 757
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V

    .line 756
    return-void
.end method

.method selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V
    .locals 3
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .param p2, "updateIndicator"    # Z

    .prologue
    const/4 v1, -0x1

    .line 761
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-ne v2, p1, :cond_2

    .line 762
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v1, :cond_1

    .line 763
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-interface {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;->onTabReselected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    .line 766
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->animateToTab(I)V

    .line 760
    :cond_1
    :goto_0
    return-void

    .line 769
    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v0

    .line 770
    .local v0, "newPosition":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->setSelectedTabView(I)V

    .line 771
    if-eqz p2, :cond_4

    .line 772
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 773
    :cond_3
    if-eq v0, v1, :cond_7

    .line 775
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout;->setScrollPosition(IFZ)V

    .line 780
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_5

    .line 781
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-interface {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;->onTabUnselected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    .line 783
    :cond_5
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .line 784
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-interface {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;->onTabSelected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    goto :goto_0

    .end local v0    # "newPosition":I
    :cond_6
    move v0, v1

    .line 769
    goto :goto_1

    .line 777
    .restart local v0    # "newPosition":I
    :cond_7
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->animateToTab(I)V

    goto :goto_2
.end method

.method public setOnTabSelectedListener(Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "onTabSelectedListener"    # Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    .line 389
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    return-void

    .line 311
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 312
    :cond_1
    return-void

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout;->calculateScrollXForTab(IF)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->scrollTo(II)V

    .line 320
    if-eqz p3, :cond_3

    .line 321
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->setSelectedTabView(I)V

    .line 307
    :cond_3
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 284
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 293
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 522
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    if-eq v0, p1, :cond_0

    .line 523
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    .line 524
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->applyModeAndGravity()V

    .line 521
    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 500
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    if-eq p1, v0, :cond_0

    .line 501
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    .line 502
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->applyModeAndGravity()V

    .line 499
    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1
    .param p1, "normalColor"    # I
    .param p2, "selectedColor"    # I

    .prologue
    .line 560
    invoke-static {p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 559
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 543
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 544
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateAllTabs()V

    .line 541
    :cond_0
    return-void
.end method
