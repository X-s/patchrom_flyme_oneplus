.class public Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VectorDrawableAnimatorRT"
.end annotation


# static fields
.field private static final END_ANIMATION:I = 0x4

.field private static final MAX_SAMPLE_POINTS:I = 0x12c

.field private static final RESET_ANIMATION:I = 0x3

.field private static final REVERSE_ANIMATION:I = 0x2

.field private static final START_ANIMATION:I = 0x1


# instance fields
.field private mContainsSequentialAnimators:Z

.field private final mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mInitialized:Z

.field private mIsInfinite:Z

.field private mIsReversible:Z

.field private mLastListenerId:I

.field private mLastSeenTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private final mPendingAnimationActions:Landroid/util/IntArray;

.field private mSetPtr:J

.field private final mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private final mStartDelays:Landroid/util/LongArray;

.field private mStarted:Z

.field private mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/util/IntArray;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .locals 0
    .param p1, "animatorSet"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1156
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    .line 1158
    new-instance v0, Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-direct {v0}, Landroid/animation/PropertyValuesHolder$PropertyValues;-><init>()V

    .line 1157
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    .line 1159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1160
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    .line 1161
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1162
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    .line 1163
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1164
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    .line 1167
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    .line 1168
    iput v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    .line 1169
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    .line 1173
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1174
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap1()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1177
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    iget-wide v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1172
    return-void
.end method

.method private addPendingAction(I)V
    .locals 1
    .param p1, "pendingAnimationAction"    # I

    .prologue
    .line 1519
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1520
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 1518
    return-void
.end method

.method private static callOnFinished(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0
    .param p0, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p1, "id"    # I

    .prologue
    .line 1698
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->onAnimationEnd(I)V

    .line 1697
    return-void
.end method

.method private static createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F
    .locals 7
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    .prologue
    .line 1422
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    move-result v3

    .line 1423
    .local v3, "numAnimFrames":I
    new-array v4, v3, [F

    .line 1424
    .local v4, "values":[F
    add-int/lit8 v5, v3, -0x1

    int-to-float v2, v5

    .line 1425
    .local v2, "lastFrame":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1426
    int-to-float v5, v1

    div-float v0, v5, v2

    .line 1427
    .local v0, "fraction":F
    invoke-interface {p0, v0}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v4, v1

    .line 1425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1429
    .end local v0    # "fraction":F
    :cond_0
    return-object v4
.end method

.method private static createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I
    .locals 7
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    .prologue
    .line 1434
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    move-result v3

    .line 1435
    .local v3, "numAnimFrames":I
    new-array v4, v3, [I

    .line 1436
    .local v4, "values":[I
    add-int/lit8 v5, v3, -0x1

    int-to-float v2, v5

    .line 1437
    .local v2, "lastFrame":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1438
    int-to-float v5, v1

    div-float v0, v5, v2

    .line 1439
    .local v0, "fraction":F
    invoke-interface {p0, v0}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    .line 1437
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1441
    .end local v0    # "fraction":F
    :cond_0
    return-object v4
.end method

.method private createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V
    .locals 13
    .param p1, "propertyPtr"    # J
    .param p3, "extraDelay"    # J
    .param p5, "animator"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 1446
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v8

    .line 1447
    .local v8, "duration":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    move-result v10

    .line 1448
    .local v10, "repeatCount":I
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v0

    add-long v6, p3, v0

    .line 1449
    .local v6, "startDelay":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v12

    .line 1451
    .local v12, "interpolator":Landroid/animation/TimeInterpolator;
    invoke-static {v12, v8, v9}, Landroid/view/RenderNodeAnimatorSetHelper;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v4

    .line 1453
    .local v4, "nativeInterpolator":J
    long-to-float v0, v6

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v6, v0

    .line 1454
    long-to-float v0, v8

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v8, v0

    .line 1456
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/LongArray;->add(J)V

    .line 1457
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1458
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatMode()I

    move-result v11

    move-wide v2, p1

    .line 1457
    invoke-static/range {v0 .. v11}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap7(JJJJJII)V

    .line 1445
    return-void
.end method

.method private createRTAnimator(Landroid/animation/ObjectAnimator;J)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "startTime"    # J

    .prologue
    .line 1235
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1236
    .local v1, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v7

    .line 1237
    .local v7, "target":Ljava/lang/Object;
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_1

    move-object v3, v7

    .line 1238
    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v0, :cond_5

    .line 1241
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, v1

    if-ge v6, v0, :cond_0

    .line 1242
    aget-object v0, v1, v6

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1243
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    instance-of v0, v0, Landroid/util/PathParser$PathData;

    if-eqz v0, :cond_3

    .line 1244
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    const-string/jumbo v2, "pathData"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1243
    if-eqz v0, :cond_3

    move-object v0, v7

    .line 1245
    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V

    .line 1241
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1247
    :cond_3
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v0, :cond_4

    move-object v0, v7

    .line 1248
    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V

    goto :goto_2

    .line 1250
    :cond_4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "ClipPath only supports PathData property"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    .end local v6    # "i":I
    :cond_5
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_6

    move-object v3, v7

    .line 1258
    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    .line 1257
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V

    goto :goto_0

    .line 1259
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1261
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Target should be either VGroup, VPath, or ConstantState, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1262
    const-string/jumbo v0, "Null target"

    .line 1261
    :goto_3
    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1262
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1263
    const-string/jumbo v3, " is not supported"

    .line 1262
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V
    .locals 11
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .param p3, "startTime"    # J

    .prologue
    .line 1317
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPropertyIndex(Ljava/lang/String;)I

    move-result v10

    .line 1319
    .local v10, "propertyId":I
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getNativePtr()J

    move-result-wide v8

    .line 1320
    .local v8, "nativePtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_4

    .line 1321
    :cond_0
    if-gez v10, :cond_2

    .line 1322
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1323
    return-void

    .line 1325
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v5, v5, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1326
    const-string/jumbo v5, " is not supported for FullPath"

    .line 1325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1330
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1329
    invoke-static {v8, v9, v10, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap5(JIFF)J

    move-result-wide v2

    .line 1331
    .local v2, "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v1, :cond_3

    .line 1333
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1334
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1333
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v0

    .line 1335
    .local v0, "dataPoints":[F
    array-length v1, v0

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap11(J[FI)V

    .end local v0    # "dataPoints":[F
    :cond_3
    :goto_0
    move-object v1, p0

    move-wide v4, p3

    move-object v6, p1

    .line 1356
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1315
    return-void

    .line 1338
    .end local v2    # "propertyPtr":J
    :cond_4
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_6

    .line 1340
    :cond_5
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1339
    invoke-static {v8, v9, v10, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap3(JIII)J

    move-result-wide v2

    .line 1341
    .restart local v2    # "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v1, :cond_3

    .line 1343
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1344
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1343
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I

    move-result-object v7

    .line 1345
    .local v7, "dataPoints":[I
    array-length v1, v7

    invoke-static {v2, v3, v7, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap12(J[II)V

    goto :goto_0

    .line 1348
    .end local v2    # "propertyPtr":J
    .end local v7    # "dataPoints":[I
    :cond_6
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1349
    return-void

    .line 1351
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1352
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v5, v5, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    .line 1351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1352
    const-string/jumbo v5, ". Only float, int or PathData value is "

    .line 1351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1353
    const-string/jumbo v5, "supported for Paths."

    .line 1351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V
    .locals 12
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p4, "startTime"    # J

    .prologue
    .line 1271
    invoke-virtual {p3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativePtr()J

    move-result-wide v8

    .line 1273
    .local v8, "nativePtr":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v1, p1

    if-ge v7, v1, :cond_3

    .line 1275
    aget-object v1, p1, v7

    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1276
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getPropertyIndex(Ljava/lang/String;)I

    move-result v10

    .line 1277
    .local v10, "propertyId":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_1

    .line 1273
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1284
    :cond_1
    if-ltz v10, :cond_0

    .line 1292
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1291
    invoke-static {v8, v9, v10, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap2(JIFF)J

    move-result-wide v2

    .line 1293
    .local v2, "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v1, :cond_2

    .line 1294
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1295
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1294
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v0

    .line 1296
    .local v0, "dataPoints":[F
    array-length v1, v0

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap11(J[FI)V

    .end local v0    # "dataPoints":[F
    :cond_2
    move-object v1, p0

    move-wide/from16 v4, p4

    move-object v6, p2

    .line 1298
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    goto :goto_1

    .line 1269
    .end local v2    # "propertyPtr":J
    .end local v10    # "propertyId":I
    :cond_3
    return-void
.end method

.method private createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V
    .locals 13
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VPath;
    .param p3, "startTime"    # J

    .prologue
    .line 1304
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    move-result-wide v0

    .line 1305
    .local v0, "nativePtr":J
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v6, v6, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v6, Landroid/util/PathParser$PathData;

    invoke-virtual {v6}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v2

    .line 1307
    .local v2, "startPathDataPtr":J
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v6, v6, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v6, Landroid/util/PathParser$PathData;

    invoke-virtual {v6}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v4

    .line 1309
    .local v4, "endPathDataPtr":J
    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap4(JJJ)J

    move-result-wide v8

    .local v8, "propertyPtr":J
    move-object v7, p0

    move-wide/from16 v10, p3

    move-object v12, p1

    .line 1311
    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1302
    return-void
.end method

.method private createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V
    .locals 12
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p4, "startTime"    # J

    .prologue
    .line 1362
    invoke-virtual {p3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v10

    .line 1363
    .local v10, "nativePtr":J
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1364
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1365
    return-void

    .line 1367
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Only alpha is supported for root group"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1371
    :cond_1
    const/4 v9, 0x0

    .line 1372
    .local v9, "startValue":Ljava/lang/Float;
    const/4 v7, 0x0

    .line 1373
    .local v7, "endValue":Ljava/lang/Float;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v1, p1

    if-ge v8, v1, :cond_2

    .line 1374
    aget-object v1, p1, v8

    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1375
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    const-string/jumbo v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1376
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v9, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    .end local v9    # "startValue":Ljava/lang/Float;
    check-cast v9, Ljava/lang/Float;

    .line 1377
    .local v9, "startValue":Ljava/lang/Float;
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v7, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    .end local v7    # "endValue":Ljava/lang/Float;
    check-cast v7, Ljava/lang/Float;

    .line 1381
    .end local v9    # "startValue":Ljava/lang/Float;
    :cond_2
    if-nez v9, :cond_5

    if-nez v7, :cond_5

    .line 1382
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1383
    return-void

    .line 1373
    .restart local v7    # "endValue":Ljava/lang/Float;
    .local v9, "startValue":Ljava/lang/Float;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1385
    .end local v7    # "endValue":Ljava/lang/Float;
    .end local v9    # "startValue":Ljava/lang/Float;
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "No alpha values are specified"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1388
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v10, v11, v1, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap6(JFF)J

    move-result-wide v2

    .line 1389
    .local v2, "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v1, :cond_6

    .line 1391
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1392
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1391
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v0

    .line 1393
    .local v0, "dataPoints":[F
    array-length v1, v0

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap11(J[FI)V

    .end local v0    # "dataPoints":[F
    :cond_6
    move-object v1, p0

    move-wide/from16 v4, p4

    move-object v6, p2

    .line 1395
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1361
    return-void
.end method

.method private endAnimation()V
    .locals 2

    .prologue
    .line 1606
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap8(J)V

    .line 1607
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1599
    return-void
.end method

.method private static getFrameCount(J)I
    .locals 8
    .param p0, "duration"    # J

    .prologue
    .line 1402
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v2

    .line 1403
    .local v2, "frameIntervalNanos":J
    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    long-to-int v0, v4

    .line 1404
    .local v0, "animIntervalMs":I
    long-to-double v4, p0

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 1406
    .local v1, "numAnimFrames":I
    const/4 v4, 0x2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1407
    const/16 v4, 0x12c

    if-le v1, v4, :cond_0

    .line 1408
    const-string/jumbo v4, "AnimatedVectorDrawable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Duration for the animation is too long :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1409
    const-string/jumbo v6, ", the animation will subsample the keyframe or path data."

    .line 1408
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const/16 v1, 0x12c

    .line 1412
    :cond_0
    return v1
.end method

.method private handlePendingAction(I)V
    .locals 3
    .param p1, "pendingAnimationAction"    # I

    .prologue
    .line 1484
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1485
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    .line 1483
    :goto_0
    return-void

    .line 1486
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1487
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    goto :goto_0

    .line 1488
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1489
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    goto :goto_0

    .line 1490
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1491
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    goto :goto_0

    .line 1493
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Animation action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1494
    const-string/jumbo v2, "is not supported"

    .line 1493
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateOwningView()V
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    .line 1514
    return-void
.end method

.method private onAnimationEnd(I)V
    .locals 2
    .param p1, "listenerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1681
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    if-eq p1, v0, :cond_0

    .line 1682
    return-void

    .line 1687
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1690
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1691
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    .line 1692
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1680
    :cond_1
    return-void
.end method

.method private parseAnimatorSet(Landroid/animation/AnimatorSet;J)V
    .locals 6
    .param p1, "set"    # Landroid/animation/AnimatorSet;
    .param p2, "startTime"    # J

    .prologue
    .line 1210
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    .line 1212
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->shouldPlayTogether()Z

    move-result v3

    .line 1214
    .local v3, "playTogether":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1215
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1217
    .local v0, "animator":Landroid/animation/Animator;
    instance-of v4, v0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 1218
    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    .line 1224
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 1226
    invoke-virtual {v0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v4

    add-long/2addr p2, v4

    .line 1227
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    .line 1214
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1219
    :cond_2
    instance-of v4, v0, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 1220
    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimator(Landroid/animation/ObjectAnimator;J)V

    goto :goto_1

    .line 1209
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_3
    return-void
.end method

.method private resetAnimation()V
    .locals 2

    .prologue
    .line 1612
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap9(J)V

    .line 1613
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1611
    return-void
.end method

.method private reverseAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1618
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1619
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    iget v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    invoke-static {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap10(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    .line 1620
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1621
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1617
    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1590
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1591
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    iget v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    invoke-static {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap14(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    .line 1592
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1593
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1583
    :cond_0
    return-void
.end method

.method private transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .locals 5
    .param p1, "animatorSet"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .prologue
    .line 1702
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1703
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 1704
    .local v1, "pendingAction":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1705
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->start()V

    .line 1702
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1706
    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1707
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->end()V

    goto :goto_1

    .line 1708
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1709
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reverse()V

    goto :goto_1

    .line 1710
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1711
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reset()V

    goto :goto_1

    .line 1713
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Animation action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1714
    const-string/jumbo v4, "is not supported"

    .line 1713
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1717
    .end local v1    # "pendingAction":I
    :cond_4
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 1701
    return-void
.end method

.method private useLastSeenTarget()Z
    .locals 2

    .prologue
    .line 1499
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1500
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNode;

    .line 1501
    .local v0, "target":Landroid/view/RenderNode;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/view/RenderNode;)Z

    move-result v1

    return v1

    .line 1503
    .end local v0    # "target":Landroid/view/RenderNode;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private useTarget(Landroid/view/RenderNode;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/RenderNode;

    .prologue
    .line 1507
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/RenderNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {p1, p0}, Landroid/view/RenderNode;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    .line 1509
    const/4 v0, 0x1

    return v0

    .line 1511
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    .prologue
    .line 1632
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    return v0
.end method

.method public end()V
    .locals 1

    .prologue
    .line 1541
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1542
    return-void

    .line 1545
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1546
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    .line 1540
    :goto_0
    return-void

    .line 1548
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    goto :goto_0
.end method

.method public getAnimatorNativePtr()J
    .locals 2

    .prologue
    .line 1627
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    return-wide v0
.end method

.method public init(Landroid/animation/AnimatorSet;)V
    .locals 12
    .param p1, "set"    # Landroid/animation/AnimatorSet;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1182
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 1184
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "VectorDrawableAnimator cannot be re-initialized"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1187
    :cond_0
    invoke-direct {p0, p1, v10, v11}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    .line 1188
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable;->getNativeTree()J

    move-result-wide v2

    .line 1190
    .local v2, "vectorDrawableTreePtr":J
    iget-wide v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v6, v7, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap13(JJ)V

    .line 1191
    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    .line 1192
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    .line 1195
    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1196
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    if-eqz v1, :cond_3

    .line 1197
    iput-boolean v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1181
    :cond_1
    return-void

    :cond_2
    move v1, v5

    .line 1192
    goto :goto_0

    .line 1200
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1201
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v1, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-lez v1, :cond_4

    .line 1202
    iput-boolean v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1203
    return-void

    .line 1200
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isInfinite()Z
    .locals 1

    .prologue
    .line 1667
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1642
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1643
    const/4 v0, 0x0

    return v0

    .line 1645
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1637
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1660
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1661
    check-cast p1, Landroid/view/DisplayListCanvas;

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->recordLastSeenTarget(Landroid/view/DisplayListCanvas;)V

    .line 1659
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 1671
    return-void
.end method

.method protected recordLastSeenTarget(Landroid/view/DisplayListCanvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 1467
    invoke-static {p1}, Landroid/view/RenderNodeAnimatorSetHelper;->getTarget(Landroid/view/DisplayListCanvas;)Landroid/view/RenderNode;

    move-result-object v1

    .line 1468
    .local v1, "node":Landroid/view/RenderNode;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    .line 1470
    iget-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1471
    :cond_0
    invoke-direct {p0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/view/RenderNode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1476
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->handlePendingAction(I)V

    .line 1475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1478
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 1466
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 1655
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1654
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1554
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1555
    return-void

    .line 1558
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1559
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    .line 1553
    :goto_0
    return-void

    .line 1561
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    goto :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 1676
    return-void
.end method

.method public reverse()V
    .locals 1

    .prologue
    .line 1569
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 1572
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1576
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    .line 1568
    :goto_0
    return-void

    .line 1570
    :cond_0
    return-void

    .line 1578
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    goto :goto_0
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 1650
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1649
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1525
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1526
    return-void

    .line 1529
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1533
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    .line 1524
    :goto_0
    return-void

    .line 1535
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    goto :goto_0
.end method
