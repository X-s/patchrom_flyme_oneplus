.class public Lcom/android/server/policy/ui/OpGlobalActionEntry;
.super Landroid/widget/FrameLayout;
.source "OpGlobalActionEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;
    }
.end annotation


# instance fields
.field private mAction:Lcom/android/server/policy/OpGlobalActions$Action;

.field private mActionConfirmLabel:Landroid/widget/TextView;

.field private mActionIcon:Landroid/widget/ImageView;

.field private mActionLabel:Landroid/widget/TextView;

.field private mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

.field private mContext:Landroid/content/Context;

.field private mOnGlobalActionAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOnGlobalActionClickListener:Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

.field private mSelected:Z

.field private mState:Lcom/android/server/policy/OpGlobalActions$ActionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    .line 29
    iput-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    .line 30
    iput-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    .line 37
    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    iput-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 41
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x5030001

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    .line 29
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    .line 37
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    .line 29
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    .line 37
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/OpGlobalActions$ActionState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/ui/OpGlobalActionEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/OpGlobalActions$Action;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionClickListener:Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method private setAction(Lcom/android/server/policy/OpGlobalActions$Action;)V
    .locals 0
    .param p1, "action"    # Lcom/android/server/policy/OpGlobalActions$Action;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    .line 287
    return-void
.end method

.method private setActionConfirmText(I)V
    .locals 2
    .param p1, "textResId"    # I

    .prologue
    .line 120
    const v0, 0x50b0003

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionEntry$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$4;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method private setActionIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgResId"    # I

    .prologue
    .line 71
    const v0, 0x50b0001

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 73
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 74
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionEntry$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$2;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 105
    return-void
.end method

.method private setActionText(I)V
    .locals 2
    .param p1, "textResId"    # I

    .prologue
    .line 108
    const v0, 0x50b0002

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionEntry$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$3;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method private setAnimation(Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;)V
    .locals 0
    .param p1, "anim"    # Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    .line 291
    return-void
.end method

.method private setOnGlobalActionAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 218
    return-void
.end method

.method private setOnGlobalActionClickListener(Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionClickListener:Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

    .line 214
    return-void
.end method

.method private startAnimateBackground()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x190

    .line 266
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 267
    .local v1, "mAnimator":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 268
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/android/server/policy/ui/OpGlobalActionEntry$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$6;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 278
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 279
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 282
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 283
    return-void

    .line 266
    :array_0
    .array-data 4
        0x0
        0x190
    .end array-data
.end method

.method private startAnimateIcon()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;

    invoke-virtual {v0}, Lcom/android/server/policy/ui/OpGlobalActionIcon;->startAnimateConfirmed()V

    .line 261
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 263
    return-void
.end method


# virtual methods
.method public getMyIndex()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    invoke-virtual {v0}, Lcom/android/server/policy/OpGlobalActions$Action;->ordinal()I

    move-result v0

    return v0
.end method

.method public setRippleColor(J)V
    .locals 9
    .param p1, "color"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 299
    iget-object v5, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mContext:Landroid/content/Context;

    const v6, 0x5020003

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    .line 301
    .local v3, "ripple":Landroid/graphics/drawable/RippleDrawable;
    long-to-int v1, p1

    .line 303
    .local v1, "color_":I
    new-array v2, v8, [I

    aput v1, v2, v7

    .line 304
    .local v2, "colors":[I
    new-array v4, v8, [[I

    .line 305
    .local v4, "states":[[I
    new-array v5, v7, [I

    aput-object v5, v4, v7

    .line 306
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 308
    .local v0, "colorList":Landroid/content/res/ColorStateList;
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 310
    iget-object v5, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 311
    return-void
.end method

.method public setup(Landroid/graphics/drawable/Drawable;IIILcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/policy/OpGlobalActions$Action;Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;I)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgResId"    # I
    .param p3, "actionTextId"    # I
    .param p4, "confirmTextId"    # I
    .param p5, "clickListener"    # Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;
    .param p6, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;
    .param p7, "action"    # Lcom/android/server/policy/OpGlobalActions$Action;
    .param p8, "animationCollect"    # Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;
    .param p9, "marginTop"    # I

    .prologue
    const/4 v1, -0x2

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setActionIcon(Landroid/graphics/drawable/Drawable;I)V

    .line 51
    invoke-direct {p0, p3}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setActionText(I)V

    .line 52
    invoke-direct {p0, p4}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setActionConfirmText(I)V

    .line 53
    invoke-direct {p0, p5}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setOnGlobalActionClickListener(Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;)V

    .line 54
    invoke-direct {p0, p6}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setOnGlobalActionAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 55
    invoke-direct {p0, p7}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setAction(Lcom/android/server/policy/OpGlobalActions$Action;)V

    .line 56
    invoke-direct {p0, p8}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setAnimation(Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;)V

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput p9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method

.method public startAnimate(Lcom/android/server/policy/OpGlobalActions$ActionState;)V
    .locals 8
    .param p1, "state"    # Lcom/android/server/policy/OpGlobalActions$ActionState;

    .prologue
    const/16 v7, 0x333

    const/16 v6, 0x8

    const/4 v5, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, -0x2

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    .line 135
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 136
    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getShowAnimSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animSet":Landroid/view/animation/AnimationSet;
    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 139
    .restart local v0    # "animSet":Landroid/view/animation/AnimationSet;
    iput-boolean v5, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    .line 207
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    :cond_1
    :goto_1
    return-void

    .line 140
    :cond_2
    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v2, :cond_5

    .line 141
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    sget-object v3, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne v2, v3, :cond_3

    .line 143
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getHideAnimSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 155
    :goto_2
    iput-boolean v5, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    goto :goto_0

    .line 144
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    sget-object v3, Lcom/android/server/policy/OpGlobalActions$Action;->REBOOT:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne v2, v3, :cond_4

    .line 146
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 147
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x1dd

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getAdvShowAnimSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animSet":Landroid/view/animation/AnimationSet;
    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 150
    .restart local v0    # "animSet":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    .line 153
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getAdvShowAnimSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animSet":Landroid/view/animation/AnimationSet;
    check-cast v0, Landroid/view/animation/AnimationSet;

    .restart local v0    # "animSet":Landroid/view/animation/AnimationSet;
    goto :goto_2

    .line 156
    :cond_5
    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v2, :cond_7

    .line 157
    iget-boolean v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    if-eqz v2, :cond_6

    .line 159
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 160
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {p0, v3}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setZ(F)V

    .line 164
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getSelectedAnimSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animSet":Landroid/view/animation/AnimationSet;
    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 165
    .restart local v0    # "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startSelectedAnimator()V

    goto :goto_0

    .line 169
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getHideAnimSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 170
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 172
    :cond_7
    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCE_SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v2, :cond_a

    .line 173
    iget-boolean v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    if-eqz v2, :cond_8

    .line 175
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 176
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {p0, v3}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setZ(F)V

    .line 181
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getAdvSelectedAnimSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animSet":Landroid/view/animation/AnimationSet;
    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 182
    .restart local v0    # "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startSelectedAnimator()V

    goto/16 :goto_0

    .line 186
    :cond_8
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    sget-object v3, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne v2, v3, :cond_9

    .line 188
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->clearAnimation()V

    .line 189
    invoke-virtual {p0, v6}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    goto/16 :goto_0

    .line 192
    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getHideAnimSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 196
    :cond_a
    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->CONFIRMED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v2, :cond_0

    .line 197
    iget-boolean v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    if-nez v2, :cond_b

    .line 199
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->clearAnimation()V

    .line 200
    invoke-virtual {p0, v6}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    goto/16 :goto_1

    .line 202
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startConfirmedAnimator()V

    goto/16 :goto_1
.end method

.method public startAnimateShowAdv()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v1}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getAdvShowAnimSets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 222
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimation(Landroid/view/animation/Animation;)V

    .line 223
    return-void
.end method

.method public startConfirmedAnimator()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimateBackground()V

    .line 256
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimateIcon()V

    .line 257
    return-void
.end method

.method public startSelectedAnimator()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x190

    .line 226
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 227
    .local v0, "mAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionEntry$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$5;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 245
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 248
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 249
    return-void

    .line 226
    :array_0
    .array-data 4
        0x0
        0x190
    .end array-data
.end method
