.class public Lcom/android/settings_ex/ui/PasswordTextViewForPin;
.super Landroid/view/View;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ui/PasswordTextViewForPin$1;,
        Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;,
        Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;
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
.field private charState:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

.field private charState2:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

.field private charState3:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

.field private charState4:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

.field private inputCount:I

.field private isAllowDelete:Z

.field private isDelete:Z

.field private isDrawEmptyCircleAfterDelete:Z

.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCallBack:Lcom/android/settings_ex/password/PasswordInputCountCallBack;

.field private mCharPadding:I

.field private mCharPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;",
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

.field public mOnTextEmptyListerner:Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;

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
            "Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;",
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
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/high16 v6, -0x23000000

    const v5, 0xffffff

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    .line 88
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    .line 89
    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 94
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    .line 95
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    .line 96
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    .line 97
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    .line 98
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    .line 99
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    .line 104
    iput v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    .line 105
    iput-object v3, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCallBack:Lcom/android/settings_ex/password/PasswordInputCountCallBack;

    .line 106
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mHandler:Landroid/os/Handler;

    .line 109
    iput-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isAllowDelete:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isDelete:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isDrawEmptyCircleAfterDelete:Z

    .line 116
    new-instance v2, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin;Lcom/android/settings_ex/ui/PasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    .line 117
    new-instance v2, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin;Lcom/android/settings_ex/ui/PasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState2:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    .line 118
    new-instance v2, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin;Lcom/android/settings_ex/ui/PasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState3:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    .line 119
    new-instance v2, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin;Lcom/android/settings_ex/ui/PasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState4:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    .line 123
    iput-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mPasswordCheckState:Z

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->setFocusableInTouchMode(Z)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->setFocusable(Z)V

    .line 148
    const/16 v2, 0x1c

    iput v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mTextHeightRaw:I

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mEmptyCircleWidth:I

    .line 150
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 151
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 155
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const-string v3, "sans-serif-light"

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 163
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 164
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 165
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 168
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSize:I

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSizeEmpty:I

    .line 171
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 174
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 175
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 185
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 186
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 190
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 191
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 195
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 196
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 198
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 200
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 201
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPadding:I

    .line 206
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mShowPassword:Z

    .line 208
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mScreenDensity:F

    .line 217
    return-void

    :cond_0
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSize:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPadding:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSizeEmpty:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isDelete:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/ui/PasswordTextViewForPin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isDelete:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mShowPassword:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object v0
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 299
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 300
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 301
    return-object v0
.end method

.method private getDrawingWidth()F
    .locals 7

    .prologue
    .line 305
    const/4 v4, 0x0

    .line 306
    .local v4, "width":I
    const/4 v3, 0x4

    .line 307
    .local v3, "length":I
    invoke-direct {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 308
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v6

    .line 309
    .local v1, "charLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 310
    if-eqz v2, :cond_0

    .line 311
    iget v5, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPadding:I

    add-int/2addr v4, v5

    .line 313
    :cond_0
    add-int/2addr v4, v1

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_1
    int-to-float v5, v4

    return v5
.end method

.method private obtainCharState(C)Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 359
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin;Lcom/android/settings_ex/ui/PasswordTextViewForPin$1;)V

    .line 360
    .local v0, "charState":Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iput-char p1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->whichChar:C

    .line 362
    return-object v0
.end method

.method private userActivity()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 367
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 319
    iget v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    if-ne v0, v3, :cond_2

    .line 320
    iput v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 326
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isAllowDelete:Z

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    iput-char p1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->whichChar:C

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->startAppearAnimation()V

    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 351
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    if-ne v0, v3, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCallBack:Lcom/android/settings_ex/password/PasswordInputCountCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/settings_ex/password/PasswordInputCountCallBack;->setNumbPadKeyForPinEnable(Z)V

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->userActivity()V

    .line 355
    return-void

    .line 323
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 324
    iget v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    goto :goto_0
.end method

.method public deleteLastChar()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 370
    iget v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    if-nez v1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isDelete:Z

    .line 374
    iput-boolean v3, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isAllowDelete:Z

    .line 375
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 376
    .local v0, "length":I
    iget v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    if-lez v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 378
    iget v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-virtual {v1, v4, v5, v4, v5}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->startRemoveAnimation(JJ)V

    .line 381
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 385
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->userActivity()V

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 225
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getDrawingWidth()F

    move-result v16

    .line 226
    .local v16, "totalDrawingWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    sub-float v3, v1, v2

    .line 227
    .local v3, "currentDrawPosition":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 228
    .local v15, "length":I
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 229
    .local v13, "bounds":Landroid/graphics/Rect;
    iget v1, v13, Landroid/graphics/Rect;->bottom:I

    iget v2, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, v2

    .line 230
    .local v4, "charHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    .line 232
    .local v5, "yPosition":F
    iget v1, v13, Landroid/graphics/Rect;->right:I

    iget v2, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v6, v1

    .line 233
    .local v6, "charLength":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v6, v1

    add-float/2addr v3, v1

    .line 234
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v14, v1, :cond_8

    .line 235
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mPasswordCheckState:Z

    if-eqz v1, :cond_7

    .line 236
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isDelete:Z

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isAllowDelete:Z

    if-eqz v1, :cond_4

    .line 237
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    if-nez v1, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 261
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    add-float/2addr v3, v1

    .line 234
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 239
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v14, v1, :cond_2

    .line 240
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSize:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 241
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v14, v1, :cond_3

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    goto :goto_1

    .line 245
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 248
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    if-ge v14, v1, :cond_5

    .line 249
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSize:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 250
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    if-ne v14, v1, :cond_6

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    .line 253
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->isDelete:Z

    if-nez v1, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 258
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 264
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    .line 266
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState2:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float v9, v3, v1

    move-object/from16 v8, p1

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    .line 268
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState3:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    add-float v9, v3, v1

    move-object/from16 v8, p1

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    .line 270
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->charState4:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    add-float v9, v3, v1

    move-object/from16 v8, p1

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    goto/16 :goto_2

    .line 289
    :cond_8
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 393
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->inputCount:I

    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 397
    iput-boolean v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mPasswordCheckState:Z

    .line 398
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCallBack:Lcom/android/settings_ex/password/PasswordInputCountCallBack;

    invoke-interface {v0, v1}, Lcom/android/settings_ex/password/PasswordInputCountCallBack;->setNumbPadKeyForPinEnable(Z)V

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->invalidate()V

    .line 403
    return-void
.end method

.method public setCallBack(Lcom/android/settings_ex/password/PasswordInputCountCallBack;)V
    .locals 0
    .param p1, "back"    # Lcom/android/settings_ex/password/PasswordInputCountCallBack;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCallBack:Lcom/android/settings_ex/password/PasswordInputCountCallBack;

    .line 221
    return-void
.end method

.method public setTextEmptyListener(Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;

    .line 412
    return-void
.end method
