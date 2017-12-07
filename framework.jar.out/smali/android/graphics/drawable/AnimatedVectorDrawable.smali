.class public Landroid/graphics/drawable/AnimatedVectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedVectorDrawable$1;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;
    }
.end annotation


# static fields
.field private static final ANIMATED_VECTOR:Ljava/lang/String; = "animated-vector"

.field private static final DBG_ANIMATION_VECTOR_DRAWABLE:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "AnimatedVectorDrawable"

.field private static final TARGET:Ljava/lang/String; = "target"


# instance fields
.field private mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

.field private mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Animatable2$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

.field private mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mMutated:Z

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->shouldIgnoreInvalidAnimation()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()J
    .locals 2

    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateAnimatorSet()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap10(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0
    .param p0, "animatorSetPtr"    # J
    .param p2, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p3, "id"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nReverse(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    return-void
.end method

.method static synthetic -wrap11(J[FI)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "data"    # [F
    .param p3, "length"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetPropertyHolderData(J[FI)V

    return-void
.end method

.method static synthetic -wrap12(J[II)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "data"    # [I
    .param p3, "length"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetPropertyHolderData(J[II)V

    return-void
.end method

.method static synthetic -wrap13(JJ)V
    .locals 0
    .param p0, "animatorPtr"    # J
    .param p2, "vectorDrawablePtr"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetVectorDrawableTarget(JJ)V

    return-void
.end method

.method static synthetic -wrap14(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0
    .param p0, "animatorSetPtr"    # J
    .param p2, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p3, "id"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nStart(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    return-void
.end method

.method static synthetic -wrap15(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "vectorDrawable"    # Landroid/graphics/drawable/VectorDrawable;
    .param p3, "ignoreInvalidAnim"    # Z

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    return-void
.end method

.method static synthetic -wrap2(JIFF)J
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "propertyId"    # I
    .param p3, "startValue"    # F
    .param p4, "endValue"    # F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateGroupPropertyHolder(JIFF)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(JIII)J
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "propertyId"    # I
    .param p3, "startValue"    # I
    .param p4, "endValue"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathColorPropertyHolder(JIII)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(JJJ)J
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "startValuePtr"    # J
    .param p4, "endValuePtr"    # J

    .prologue
    invoke-static/range {p0 .. p5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathDataPropertyHolder(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5(JIFF)J
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "propertyId"    # I
    .param p3, "startValue"    # F
    .param p4, "endValue"    # F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathPropertyHolder(JIFF)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap6(JFF)J
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "startValue"    # F
    .param p3, "endValue"    # F

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateRootAlphaPropertyHolder(JFF)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap7(JJJJJII)V
    .locals 0
    .param p0, "setPtr"    # J
    .param p2, "propertyValuesHolder"    # J
    .param p4, "nativeInterpolator"    # J
    .param p6, "startDelay"    # J
    .param p8, "duration"    # J
    .param p10, "repeatCount"    # I
    .param p11, "repeatMode"    # I

    .prologue
    invoke-static/range {p0 .. p11}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nAddAnimator(JJJJJII)V

    return-void
.end method

.method static synthetic -wrap8(J)V
    .locals 0
    .param p0, "animatorSetPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nEnd(J)V

    return-void
.end method

.method static synthetic -wrap9(J)V
    .locals 0
    .param p0, "animatorSetPtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nReset(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V

    .line 253
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 245
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    .line 250
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 251
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 893
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$1;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 258
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, p1, v1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    .line 259
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .line 260
    iput-object p2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static containsSameValueType(Landroid/animation/PropertyValuesHolder;Landroid/util/Property;)Z
    .locals 5
    .param p0, "holder"    # Landroid/animation/PropertyValuesHolder;
    .param p1, "property"    # Landroid/util/Property;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 556
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getValueType()Ljava/lang/Class;

    move-result-object v0

    .line 557
    .local v0, "type1":Ljava/lang/Class;
    invoke-virtual {p1}, Landroid/util/Property;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 558
    .local v1, "type2":Ljava/lang/Class;
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_0

    const-class v4, Ljava/lang/Float;

    if-ne v0, v4, :cond_3

    .line 559
    :cond_0
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_1

    const-class v4, Ljava/lang/Float;

    if-ne v1, v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    .line 560
    :cond_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_4

    const-class v4, Ljava/lang/Integer;

    if-ne v0, v4, :cond_7

    .line 561
    :cond_4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_5

    const-class v4, Ljava/lang/Integer;

    if-ne v1, v4, :cond_6

    :cond_5
    :goto_1
    return v2

    :cond_6
    move v2, v3

    goto :goto_1

    .line 563
    :cond_7
    if-ne v0, v1, :cond_8

    :goto_2
    return v2

    :cond_8
    move v2, v3

    goto :goto_2
.end method

.method private ensureAnimatorSet()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 846
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    .line 850
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->prepareLocalAnimators(Landroid/animation/AnimatorSet;Landroid/content/res/Resources;)V

    .line 851
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->init(Landroid/animation/AnimatorSet;)V

    .line 852
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    .line 845
    :cond_0
    return-void
.end method

.method private fallbackOntoUI()V
    .locals 3

    .prologue
    .line 583
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    instance-of v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    if-eqz v1, :cond_2

    .line 584
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    .line 585
    .local v0, "oldAnim":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    new-instance v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .line 586
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    invoke-interface {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->init(Landroid/animation/AnimatorSet;)V

    .line 590
    :cond_0
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 593
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-wrap0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V

    .line 582
    .end local v0    # "oldAnim":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    :cond_2
    return-void
.end method

.method private static native nAddAnimator(JJJJJII)V
.end method

.method private static native nCreateAnimatorSet()J
.end method

.method private static native nCreateGroupPropertyHolder(JIFF)J
.end method

.method private static native nCreatePathColorPropertyHolder(JIII)J
.end method

.method private static native nCreatePathDataPropertyHolder(JJJ)J
.end method

.method private static native nCreatePathPropertyHolder(JIFF)J
.end method

.method private static native nCreateRootAlphaPropertyHolder(JFF)J
.end method

.method private static native nEnd(J)V
.end method

.method private static native nReset(J)V
.end method

.method private static native nReverse(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
.end method

.method private static native nSetPropertyHolderData(J[FI)V
.end method

.method private static native nSetPropertyHolderData(J[II)V
.end method

.method private static native nSetVectorDrawableTarget(JJ)V
.end method

.method private static native nStart(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
.end method

.method private removeAnimatorSetListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 951
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 953
    iput-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 950
    :cond_0
    return-void
.end method

.method private static shouldIgnoreInvalidAnimation()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 292
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 293
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 294
    :cond_0
    return v3

    .line 296
    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_2

    .line 297
    return v3

    .line 299
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V
    .locals 11
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "vectorDrawable"    # Landroid/graphics/drawable/VectorDrawable;
    .param p3, "ignoreInvalidAnim"    # Z

    .prologue
    .line 520
    instance-of v8, p0, Landroid/animation/ObjectAnimator;

    if-eqz v8, :cond_4

    .line 525
    check-cast p0, Landroid/animation/ObjectAnimator;

    .end local p0    # "animator":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 526
    .local v2, "holders":[Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_5

    .line 527
    aget-object v6, v2, v3

    .line 528
    .local v6, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v6}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    .line 529
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/VectorDrawable;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 530
    .local v7, "targetNameObj":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 531
    .local v4, "property":Landroid/util/Property;
    instance-of v8, v7, Landroid/graphics/drawable/VectorDrawable$VObject;

    if-eqz v8, :cond_2

    .line 532
    check-cast v7, Landroid/graphics/drawable/VectorDrawable$VObject;

    .end local v7    # "targetNameObj":Ljava/lang/Object;
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/VectorDrawable$VObject;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v4

    .line 537
    .end local v4    # "property":Landroid/util/Property;
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 538
    invoke-static {v6, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->containsSameValueType(Landroid/animation/PropertyValuesHolder;Landroid/util/Property;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 539
    invoke-virtual {v6, v4}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    .line 526
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    .restart local v4    # "property":Landroid/util/Property;
    .restart local v7    # "targetNameObj":Ljava/lang/Object;
    :cond_2
    instance-of v8, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v8, :cond_0

    .line 534
    check-cast v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .end local v7    # "targetNameObj":Ljava/lang/Object;
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v4

    .local v4, "property":Landroid/util/Property;
    goto :goto_1

    .line 540
    .end local v4    # "property":Landroid/util/Property;
    :cond_3
    if-nez p3, :cond_1

    .line 541
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Wrong valueType for Property: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 542
    const-string/jumbo v10, ".  Expected type: "

    .line 541
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 542
    invoke-virtual {v4}, Landroid/util/Property;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v10

    .line 541
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 542
    const-string/jumbo v10, ". Actual "

    .line 541
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 543
    const-string/jumbo v10, "type defined in resources: "

    .line 541
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 543
    invoke-virtual {v6}, Landroid/animation/PropertyValuesHolder;->getValueType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v10

    .line 541
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 548
    .end local v2    # "holders":[Landroid/animation/PropertyValuesHolder;
    .end local v3    # "i":I
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "pvh":Landroid/animation/PropertyValuesHolder;
    .restart local p0    # "animator":Landroid/animation/Animator;
    :cond_4
    instance-of v8, p0, Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_5

    .line 549
    check-cast p0, Landroid/animation/AnimatorSet;

    .end local p0    # "animator":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 550
    .local v0, "anim":Landroid/animation/Animator;
    invoke-static {v0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    goto :goto_2

    .line 519
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "anim$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v3, 0x0

    .line 605
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 607
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 608
    .local v0, "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 612
    :cond_0
    if-eqz p1, :cond_1

    .line 613
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->inflatePendingAnimators(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 618
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 619
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    .line 604
    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    .line 599
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canReverse()Z
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->canReverse()Z

    move-result v0

    return v0
.end method

.method public clearAnimationCallbacks()V
    .locals 1

    .prologue
    .line 974
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->removeAnimatorSetListener()V

    .line 975
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 976
    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 973
    return-void
.end method

.method public clearMutated()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 278
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->clearMutated()V

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    .line 276
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    instance-of v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-get1(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 331
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->fallbackOntoUI()V

    .line 334
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->onDraw(Landroid/graphics/Canvas;)V

    .line 335
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 325
    return-void
.end method

.method public forceAnimationOnUI()V
    .locals 3

    .prologue
    .line 572
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    instance-of v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    if-eqz v1, :cond_1

    .line 573
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    .line 574
    .local v0, "animator":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Cannot force Animated Vector Drawable to run on UI thread when the animation has started on RenderThread."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->fallbackOntoUI()V

    .line 571
    .end local v0    # "animator":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 310
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    .line 305
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 427
    const/4 v0, -0x3

    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 442
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 441
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    .line 456
    .local v10, "state":Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 457
    .local v7, "eventType":I
    const/high16 v9, 0x3f800000    # 1.0f

    .line 458
    .local v9, "pathErrorScale":F
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    add-int/lit8 v8, v14, 0x1

    .line 461
    .local v8, "innerDepth":I
    :goto_0
    const/4 v14, 0x1

    if-eq v7, v14, :cond_7

    .line 462
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ge v14, v8, :cond_0

    const/4 v14, 0x3

    if-eq v7, v14, :cond_7

    .line 463
    :cond_0
    const/4 v14, 0x2

    if-ne v7, v14, :cond_3

    .line 464
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 465
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "animated-vector"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 467
    sget-object v14, Lcom/android/internal/R$styleable;->AnimatedVectorDrawable:[I

    .line 466
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v14}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 469
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 468
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 470
    .local v6, "drawableRes":I
    if-eqz v6, :cond_2

    .line 471
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/VectorDrawable;

    .line 473
    .local v13, "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/VectorDrawable;->setAllowCaching(Z)V

    .line 474
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 475
    invoke-virtual {v13}, Landroid/graphics/drawable/VectorDrawable;->getPixelSize()F

    move-result v9

    .line 476
    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v14, :cond_1

    .line 477
    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 479
    :cond_1
    iput-object v13, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 481
    .end local v13    # "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 510
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "drawableRes":I
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    .line 482
    .restart local v11    # "tagName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v14, "target"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 484
    sget-object v14, Lcom/android/internal/R$styleable;->AnimatedVectorDrawableTarget:[I

    .line 483
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v14}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 486
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    .line 485
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 488
    .local v12, "target":Ljava/lang/String;
    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 487
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 489
    .local v4, "animResId":I
    if-eqz v4, :cond_5

    .line 490
    if-eqz p4, :cond_6

    .line 492
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v5

    .line 494
    .local v5, "animator":Landroid/animation/Animator;
    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 495
    invoke-static {v10}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v15

    .line 494
    invoke-static {v5, v12, v14, v15}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    .line 496
    invoke-virtual {v10, v12, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addTargetAnimator(Ljava/lang/String;Landroid/animation/Animator;)V

    .line 506
    .end local v5    # "animator":Landroid/animation/Animator;
    :cond_5
    :goto_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 502
    :cond_6
    invoke-virtual {v10, v4, v9, v12}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addPendingAnimator(IFLjava/lang/String;)V

    goto :goto_2

    .line 515
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "animResId":I
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "target":Ljava/lang/String;
    :cond_7
    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-nez v14, :cond_8

    const/16 p1, 0x0

    .end local p1    # "res":Landroid/content/res/Resources;
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    .line 453
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 265
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 266
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    .line 267
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    .line 266
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    .line 270
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 340
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 339
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 355
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setLayoutDirection(I)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 350
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 345
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .prologue
    .line 912
    if-nez p1, :cond_0

    .line 913
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 918
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 921
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_2

    .line 926
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$2;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 946
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 911
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 822
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    .line 829
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reset()V

    .line 821
    return-void
.end method

.method public reverse()V
    .locals 2

    .prologue
    .line 875
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    .line 878
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->canReverse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    const-string/jumbo v0, "AnimatedVectorDrawable"

    const-string/jumbo v1, "AnimatedVectorDrawable can\'t reverse()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reverse()V

    .line 874
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    .line 371
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 376
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 392
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setHotspot(FF)V

    .line 391
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 397
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->setHotspotBounds(IIII)V

    .line 396
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 387
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 386
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 402
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 401
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 407
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    if-eqz p1, :cond_1

    .line 410
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->resume()V

    .line 416
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setVisible(ZZ)Z

    .line 417
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 413
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->pause()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 834
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    .line 841
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->start()V

    .line 833
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->end()V

    .line 857
    return-void
.end method

.method public unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .prologue
    const/4 v2, 0x0

    .line 959
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 961
    :cond_0
    return v2

    .line 963
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 966
    .local v0, "removed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 967
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->removeAnimatorSetListener()V

    .line 969
    :cond_2
    return v0
.end method
