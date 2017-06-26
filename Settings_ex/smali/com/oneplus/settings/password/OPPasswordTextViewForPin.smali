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
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v6, 0x7f0e0071

    const v5, 0xffffff

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    .line 87
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    .line 88
    const-string v2, ""

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 93
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    .line 94
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    .line 95
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    .line 96
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    .line 97
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    .line 98
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    .line 103
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    .line 104
    iput-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    .line 105
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mHandler:Landroid/os/Handler;

    .line 108
    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isAllowDelete:Z

    .line 113
    iput-boolean v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isDelete:Z

    .line 114
    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isDrawEmptyCircleAfterDelete:Z

    .line 115
    new-instance v2, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 116
    new-instance v2, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState2:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 117
    new-instance v2, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState3:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 118
    new-instance v2, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState4:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .line 122
    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mPasswordCheckState:Z

    .line 139
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setFocusableInTouchMode(Z)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setFocusable(Z)V

    .line 147
    const/16 v2, 0x1c

    iput v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextHeightRaw:I

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    .line 149
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 150
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 155
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const-string v3, "sans-serif-light"

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 158
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 159
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 160
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 162
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I

    .line 166
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 169
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 170
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    const/high16 v3, -0x23000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 179
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 180
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 181
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 185
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 186
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 190
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 191
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 195
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 196
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I

    .line 201
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z

    .line 203
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 204
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 208
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mScreenDensity:F

    .line 212
    return-void

    :cond_0
    move v0, v1

    .line 201
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isDelete:Z

    return v0
.end method

.method static synthetic access$402(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isDelete:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object v0
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 294
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 295
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 296
    return-object v0
.end method

.method private getDrawingWidth()F
    .locals 7

    .prologue
    .line 300
    const/4 v4, 0x0

    .line 301
    .local v4, "width":I
    const/4 v3, 0x4

    .line 302
    .local v3, "length":I
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 303
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v6

    .line 304
    .local v1, "charLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 305
    if-eqz v2, :cond_0

    .line 306
    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I

    add-int/2addr v4, v5

    .line 308
    :cond_0
    add-int/2addr v4, v1

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :cond_1
    int-to-float v5, v4

    return v5
.end method

.method private obtainCharState(C)Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 354
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V

    .line 355
    .local v0, "charState":Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iput-char p1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->whichChar:C

    .line 357
    return-object v0
.end method

.method private userActivity()V
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 362
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 314
    iget v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    if-ne v0, v3, :cond_2

    .line 315
    iput v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 321
    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isAllowDelete:Z

    .line 322
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    iput-char p1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->whichChar:C

    .line 323
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startAppearAnimation()V

    .line 343
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 346
    :cond_0
    iget v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    if-ne v0, v3, :cond_1

    .line 347
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;->setNumbPadKeyForPinEnable(Z)V

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->userActivity()V

    .line 350
    return-void

    .line 318
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 319
    iget v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    goto :goto_0
.end method

.method public deleteLastChar()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 365
    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    if-nez v1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 368
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isDelete:Z

    .line 369
    iput-boolean v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isAllowDelete:Z

    .line 370
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 371
    .local v0, "length":I
    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    if-lez v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 373
    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-virtual {v1, v4, v5, v4, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startRemoveAnimation(JJ)V

    .line 376
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 380
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->userActivity()V

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 220
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getDrawingWidth()F

    move-result v16

    .line 221
    .local v16, "totalDrawingWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    sub-float v3, v1, v2

    .line 222
    .local v3, "currentDrawPosition":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 223
    .local v15, "length":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 224
    .local v13, "bounds":Landroid/graphics/Rect;
    iget v1, v13, Landroid/graphics/Rect;->bottom:I

    iget v2, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, v2

    .line 225
    .local v4, "charHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    .line 227
    .local v5, "yPosition":F
    iget v1, v13, Landroid/graphics/Rect;->right:I

    iget v2, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v6, v1

    .line 228
    .local v6, "charLength":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v6, v1

    add-float/2addr v3, v1

    .line 229
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v14, v1, :cond_8

    .line 230
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mPasswordCheckState:Z

    if-eqz v1, :cond_7

    .line 231
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isDelete:Z

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isAllowDelete:Z

    if-eqz v1, :cond_4

    .line 232
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    if-nez v1, :cond_1

    .line 233
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    add-float/2addr v3, v1

    .line 229
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 234
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v14, v1, :cond_2

    .line 235
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 236
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v14, v1, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    goto :goto_1

    .line 240
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 243
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    if-ge v14, v1, :cond_5

    .line 244
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 245
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    if-ne v14, v1, :cond_6

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    .line 248
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isDelete:Z

    if-nez v1, :cond_0

    .line 249
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 253
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 259
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    .line 261
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState2:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float v9, v3, v1

    move-object/from16 v8, p1

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    .line 263
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState3:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    add-float v9, v3, v1

    move-object/from16 v8, p1

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    .line 265
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->charState4:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    add-float v9, v3, v1

    move-object/from16 v8, p1

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    goto/16 :goto_2

    .line 284
    :cond_8
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 388
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->inputCount:I

    .line 390
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 391
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 392
    iput-boolean v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mPasswordCheckState:Z

    .line 393
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    invoke-interface {v0, v1}, Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;->setNumbPadKeyForPinEnable(Z)V

    .line 394
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->invalidate()V

    .line 398
    return-void
.end method

.method public setCallBack(Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;)V
    .locals 0
    .param p1, "back"    # Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    .line 216
    return-void
.end method

.method public setTextEmptyListener(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;

    .line 407
    return-void
.end method
