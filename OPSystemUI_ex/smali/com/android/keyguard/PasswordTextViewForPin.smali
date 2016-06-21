.class public Lcom/android/keyguard/PasswordTextViewForPin;
.super Landroid/view/View;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextViewForPin$CharState;,
        Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;
    }
.end annotation


# instance fields
.field private charState:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

.field private charState2:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

.field private charState3:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

.field private charState4:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

.field private inputCount:I

.field private isAllowDelete:Z

.field private isDelete:Z

.field private isDrawEmptyCircleAfterDelete:Z

.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCallBack:Lcom/android/keyguard/KeyguardInputCountCallBack;

.field private mCharPadding:I

.field private mCharPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/keyguard/PasswordTextViewForPin$CharState;",
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

.field public mOnTextEmptyListerner:Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;

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
            "Lcom/android/keyguard/PasswordTextViewForPin$CharState;",
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

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, -0x1

    const v5, 0xffffff

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    .line 85
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    .line 86
    const-string v2, ""

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 91
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    .line 93
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    .line 94
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    .line 95
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    .line 96
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    .line 101
    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    .line 102
    iput-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCallBack:Lcom/android/keyguard/KeyguardInputCountCallBack;

    .line 103
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mHandler:Landroid/os/Handler;

    .line 106
    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->isAllowDelete:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->isDelete:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->isDrawEmptyCircleAfterDelete:Z

    .line 113
    new-instance v2, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;Lcom/android/keyguard/PasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->charState:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 114
    new-instance v2, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;Lcom/android/keyguard/PasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->charState2:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 115
    new-instance v2, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;Lcom/android/keyguard/PasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->charState3:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 116
    new-instance v2, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;Lcom/android/keyguard/PasswordTextViewForPin$1;)V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->charState4:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 120
    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPasswordCheckState:Z

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin;->setFocusableInTouchMode(Z)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin;->setFocusable(Z)V

    .line 145
    const/16 v2, 0x1c

    iput v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextHeightRaw:I

    .line 146
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->password_circle_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mEmptyCircleWidth:I

    .line 147
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 148
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 149
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const-string v3, "sans-serif-light"

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 151
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 152
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 153
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->password_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 156
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->password_dot_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I

    .line 158
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->password_dot_size_empty:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSizeEmpty:I

    .line 159
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 162
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 163
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    const v3, -0x3f000001    # -7.9999995f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 167
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 168
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 172
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 173
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 177
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 178
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 182
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 183
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mEmptyCircleWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iput v6, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    .line 188
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mShowPassword:Z

    .line 190
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mScreenDensity:F

    .line 199
    return-void

    :cond_0
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/keyguard/PasswordTextViewForPin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPasswordCheckState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/PasswordTextViewForPin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPasswordCheckState:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/PasswordTextViewForPin;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/PasswordTextViewForPin;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/PasswordTextViewForPin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->isDelete:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/PasswordTextViewForPin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->isDelete:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/keyguard/PasswordTextViewForPin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mShowPassword:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/KeyguardInputCountCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCallBack:Lcom/android/keyguard/KeyguardInputCountCallBack;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/PasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/PasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/PasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSizeEmpty:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->charState:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->charState2:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->charState3:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->charState4:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    return-object v0
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 280
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 281
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 282
    return-object v0
.end method

.method private getDrawingWidth()F
    .locals 7

    .prologue
    .line 286
    const/4 v4, 0x0

    .line 287
    .local v4, "width":I
    const/4 v3, 0x4

    .line 288
    .local v3, "length":I
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 289
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v6

    .line 290
    .local v1, "charLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 291
    if-eqz v2, :cond_0

    .line 292
    iget v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    add-int/2addr v4, v5

    .line 294
    :cond_0
    add-int/2addr v4, v1

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_1
    int-to-float v5, v4

    return v5
.end method

.method private userActivity()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 348
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 300
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    if-ne v0, v2, :cond_3

    .line 301
    iput v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 307
    :goto_0
    iput-boolean v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->isAllowDelete:Z

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->charState:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    iput-char p1, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->whichChar:C

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->charState:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startAppearAnimation()V

    .line 310
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    if-ne v0, v2, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/PasswordTextViewForPin$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PasswordTextViewForPin$1;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 332
    :cond_1
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    if-ne v0, v2, :cond_2

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCallBack:Lcom/android/keyguard/KeyguardInputCountCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardInputCountCallBack;->setNumbPadKeyForPinEnable(Z)V

    .line 335
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->userActivity()V

    .line 336
    return-void

    .line 304
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 305
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    goto :goto_0
.end method

.method public deleteLastChar()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 351
    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    if-nez v1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->isDelete:Z

    .line 355
    iput-boolean v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->isAllowDelete:Z

    .line 356
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 357
    .local v0, "length":I
    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    if-lez v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 359
    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->charState:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-virtual {v1, v4, v5, v4, v5}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startRemoveAnimation(JJ)V

    .line 362
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 366
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->userActivity()V

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getDrawingWidth()F

    move-result v16

    .line 208
    .local v16, "totalDrawingWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    sub-float v3, v1, v2

    .line 209
    .local v3, "currentDrawPosition":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 210
    .local v15, "length":I
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 211
    .local v13, "bounds":Landroid/graphics/Rect;
    iget v1, v13, Landroid/graphics/Rect;->bottom:I

    iget v2, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, v2

    .line 212
    .local v4, "charHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    .line 213
    .local v5, "yPosition":F
    iget v1, v13, Landroid/graphics/Rect;->right:I

    iget v2, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v6, v1

    .line 214
    .local v6, "charLength":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v6, v1

    add-float/2addr v3, v1

    .line 215
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v14, v1, :cond_8

    .line 216
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mPasswordCheckState:Z

    if-eqz v1, :cond_7

    .line 217
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->isDelete:Z

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->isAllowDelete:Z

    if-eqz v1, :cond_4

    .line 218
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    if-nez v1, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 242
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    add-float/2addr v3, v1

    .line 215
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 220
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v14, v1, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 222
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v14, v1, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->charState:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    goto :goto_1

    .line 226
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 229
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    if-ge v14, v1, :cond_5

    .line 230
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 231
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    if-ne v14, v1, :cond_6

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->charState:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    .line 234
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->isDelete:Z

    if-nez v1, :cond_0

    .line 235
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 239
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSizeEmpty:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 245
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->charState:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    .line 247
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/PasswordTextViewForPin;->charState2:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float v9, v3, v1

    move-object/from16 v8, p1

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    .line 249
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/PasswordTextViewForPin;->charState3:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    add-float v9, v3, v1

    move-object/from16 v8, p1

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    .line 251
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/PasswordTextViewForPin;->charState4:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    add-float v9, v3, v1

    move-object/from16 v8, p1

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F

    goto/16 :goto_2

    .line 270
    :cond_8
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 374
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->inputCount:I

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 378
    iput-boolean v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPasswordCheckState:Z

    .line 379
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCallBack:Lcom/android/keyguard/KeyguardInputCountCallBack;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardInputCountCallBack;->setNumbPadKeyForPinEnable(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;->onTextChanged(Ljava/lang/String;)V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->invalidate()V

    .line 384
    return-void
.end method

.method public setCallBack(Lcom/android/keyguard/KeyguardInputCountCallBack;)V
    .locals 0
    .param p1, "back"    # Lcom/android/keyguard/KeyguardInputCountCallBack;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCallBack:Lcom/android/keyguard/KeyguardInputCountCallBack;

    .line 203
    return-void
.end method

.method public setTextEmptyListener(Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextEmptyListerner:Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;

    .line 393
    return-void
.end method
