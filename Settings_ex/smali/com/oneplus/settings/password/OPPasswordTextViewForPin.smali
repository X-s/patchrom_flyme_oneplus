.class public Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
.super Landroid/view/View;
.source "OPPasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;
    }
.end annotation


# static fields
.field private static final APPEAR_DURATION:J = 0xa0L

.field private static final DISAPPEAR_DURATION:J = 0xa0L

.field private static final DOT_APPEAR_DURATION_OVERSHOOT:J = 0x140L

.field private static final DOT_APPEAR_TEXT_DISAPPEAR_OVERLAP_DURATION:J = 0x82L

.field private static final DOT_OVERSHOOT_FACTOR:F = 1.5f

.field private static final MAX_LOCK_PASSWORD_SIZE:I = 0x10

.field private static final OVERSHOOT_TIME_POSITION:F = 0.5f

.field private static final RESET_DELAY_PER_ELEMENT:J = 0x28L

.field private static final RESET_MAX_DELAY:J = 0xc8L

.field private static final TEXT_REST_DURATION_AFTER_APPEAR:J = 0x64L

.field private static final TEXT_VISIBILITY_DURATION:J = 0x514L


# instance fields
.field private charState:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

.field private charState2:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

.field private charState3:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

.field private charState4:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

.field private inputCount:I

.field private isAllowDelete:Z

.field private isDelete:Z

.field private isDrawEmptyCircleAfterDelete:Z

.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

.field private mCharPadding:I

.field private mCharPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDotSize:I

.field private mDotSizeEmpty:I

.field private final mDrawAlphaPaint1:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint2:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint3:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint4:Landroid/graphics/Paint;

.field private final mDrawEmptyCirclePaint:Landroid/graphics/Paint;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mEmptyCircleWidth:I

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field public mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

.field private mPM:Landroid/os/PowerManager;

.field private mPasswordCheckState:Z

.field private mScreenDensity:F

.field private mShowPassword:Z

.field private mText:Ljava/lang/String;

.field private mTextChars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextHeightRaw:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v2, 0x106000b

    const v7, 0xffffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    .line 85
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    .line 86
    const-string v1, ""

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    .line 93
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    .line 94
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    .line 95
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    .line 96
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    .line 101
    iput v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    .line 102
    iput-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    .line 103
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mHandler:Landroid/os/Handler;

    .line 106
    iput-boolean v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isAllowDelete:Z

    .line 111
    iput-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isDelete:Z

    .line 112
    iput-boolean v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isDrawEmptyCircleAfterDelete:Z

    .line 113
    new-instance v1, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {v1, p0, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 114
    new-instance v1, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {v1, p0, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState2:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 115
    new-instance v1, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {v1, p0, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState3:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 116
    new-instance v1, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {v1, p0, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState4:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 120
    iput-boolean v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mPasswordCheckState:Z

    .line 137
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setFocusableInTouchMode(Z)V

    .line 138
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setFocusable(Z)V

    .line 145
    const/16 v1, 0x1c

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextHeightRaw:I

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b00c8

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    .line 147
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v5, 0x81

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 148
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "isApplock":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v5, "applock"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 157
    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const-string v5, "sans-serif-light"

    invoke-static {v5, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 160
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 161
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 162
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 165
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b00c6

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I

    .line 167
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b00c7

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I

    .line 168
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 171
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 172
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    const/high16 v5, -0x23000000

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 182
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 183
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 187
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 188
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 192
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 193
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 197
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 198
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I

    .line 202
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_password"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z

    .line 204
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 205
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 207
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 209
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 211
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mScreenDensity:F

    .line 213
    return-void

    .line 157
    :cond_1
    const v1, 0x7f0e0074

    goto/16 :goto_0

    .line 177
    :cond_2
    const v2, 0x7f0e0074

    goto/16 :goto_1

    :cond_3
    move v1, v4

    .line 202
    goto :goto_2
.end method

.method static synthetic access$100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 247
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 248
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 249
    return-object v0
.end method

.method private getDrawingWidth()F
    .locals 9

    .prologue
    .line 253
    const/4 v5, 0x0

    .line 254
    .local v5, "width":I
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 255
    .local v4, "length":I
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 256
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v6, v7

    .line 257
    .local v1, "charLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 258
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 259
    .local v2, "charState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    if-eqz v3, :cond_0

    .line 260
    int-to-float v6, v5

    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I

    int-to-float v7, v7

    iget v8, v2, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 262
    :cond_0
    int-to-float v6, v5

    int-to-float v7, v1

    iget v8, v2, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    .end local v2    # "charState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    :cond_1
    int-to-float v6, v5

    return v6
.end method

.method private obtainCharState(C)Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 311
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V

    .line 312
    .local v0, "charState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iput-char p1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->whichChar:C

    .line 314
    return-object v0
.end method

.method private userActivity()V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 319
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 9
    .param p1, "c"    # C

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    .line 275
    iput-boolean v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isAllowDelete:Z

    .line 277
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 278
    .local v4, "visibleChars":I
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 280
    .local v3, "textbefore":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 281
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 283
    .local v1, "newLength":I
    if-le v1, v4, :cond_3

    .line 284
    invoke-direct {p0, p1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->obtainCharState(C)Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    move-result-object v0

    .line 285
    .local v0, "charState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startAppearAnimation()V

    .line 293
    if-le v1, v7, :cond_0

    .line 294
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 295
    .local v2, "previousState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    iget-boolean v5, v2, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    if-eqz v5, :cond_0

    .line 296
    invoke-virtual {v2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->swapToDotWhenAppearFinished()V

    .line 300
    .end local v2    # "previousState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v5, :cond_1

    .line 301
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 303
    :cond_1
    if-ne v1, v8, :cond_2

    .line 304
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;->setNumbPadKeyForPinEnable(Z)V

    .line 306
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->userActivity()V

    .line 307
    return-void

    .line 287
    .end local v0    # "charState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 288
    .restart local v0    # "charState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    iput-char p1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->whichChar:C

    goto :goto_0
.end method

.method public deleteLastChar()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 322
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 323
    .local v1, "length":I
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 324
    .local v2, "textbefore":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 325
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 326
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 327
    .local v0, "charState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    invoke-virtual {v0, v6, v7, v6, v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startRemoveAnimation(JJ)V

    .line 329
    .end local v0    # "charState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v3, :cond_1

    .line 330
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->userActivity()V

    .line 334
    return-void
.end method

.method public getMaxLockPasswordSize()I
    .locals 1

    .prologue
    .line 895
    const/16 v0, 0x10

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getDrawingWidth()F

    move-result v10

    .line 222
    .local v10, "totalDrawingWidth":F
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v10, v11

    sub-float v2, v1, v11

    .line 223
    .local v2, "currentDrawPosition":F
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v11, 0x10

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 224
    .local v9, "length":I
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 225
    .local v6, "bounds":Landroid/graphics/Rect;
    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v11

    .line 226
    .local v3, "charHeight":I
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    .line 228
    .local v4, "yPosition":F
    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v11, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v11

    int-to-float v5, v1

    .line 230
    .local v5, "charLength":F
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    .line 231
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 232
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .local v0, "charState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    move-object v1, p1

    .line 233
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    move-result v7

    .line 235
    .local v7, "charWidth":F
    add-float/2addr v2, v7

    .line 231
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "charState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    .end local v7    # "charWidth":F
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 341
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    .line 343
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 345
    iput-boolean v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mPasswordCheckState:Z

    .line 346
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    invoke-interface {v0, v1}, Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;->setNumbPadKeyForPinEnable(Z)V

    .line 347
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->invalidate()V

    .line 351
    return-void
.end method

.method public setCallBack(Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;)V
    .locals 0
    .param p1, "back"    # Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    .line 217
    return-void
.end method

.method public setTextEmptyListener(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    .line 360
    return-void
.end method
