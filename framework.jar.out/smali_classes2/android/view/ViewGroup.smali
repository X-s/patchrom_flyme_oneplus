.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$ViewLocationHolder;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field public static DEBUG_DRAW:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field static final FLAG_IS_TRANSITION_GROUP:I = 0x1000000

.field static final FLAG_IS_TRANSITION_GROUP_SET:I = 0x2000000

.field private static final FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET:I = 0x800000

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED:I = 0x10000000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED:I = 0x8000000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field static final FLAG_TOUCHSCREEN_BLOCKS_FOCUS:I = 0x4000000

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field private static final LAYOUT_MODE_UNDEFINED:I = -0x1

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2

.field private static final SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

.field private static final TAG:Ljava/lang/String; = "ViewGroup"

.field private static sDebugLines:[F

.field private static sDebugPaint:Landroid/graphics/Paint;


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mCachePaint:Landroid/graphics/Paint;

.field private mChildAcceptsDrag:Z

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mCurrentDrag:Landroid/view/DragEvent;

.field private mCurrentDragView:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragNotifiedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CLIP_CHILDREN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "CLIP_TO_PADDING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "PADDING_NOT_NULL"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mHoveredSelf:Z

.field mInvalidateRegion:Landroid/graphics/RectF;

.field mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutCalledWhileSuppressed:Z

.field private mLayoutMode:I

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mLocalPoint:Landroid/graphics/PointF;

.field private mNestedScrollAxes:I

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mPreSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mSuppressLayout:Z

.field private mTempPoint:[F

.field private mTransientIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    sput-boolean v1, Landroid/view/ViewGroup;->DEBUG_DRAW:Z

    .line 332
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 438
    sput v1, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 513
    new-instance v0, Landroid/view/ViewGroup$1;

    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-void

    .line 332
    nop

    :array_0
    .array-data 4
        0x20000
        0x40000
        0x60000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 563
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 567
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 571
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 574
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 183
    iput v1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 222
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 459
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 464
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 492
    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 503
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 504
    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 6183
    new-instance v0, Landroid/view/ViewGroup$4;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 575
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 576
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 577
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return v0
.end method

.method static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Landroid/graphics/Paint;

    .prologue
    .line 113
    invoke-static/range {p0 .. p9}, Landroid/view/ViewGroup;->fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6076
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6078
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 6079
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6082
    .restart local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6083
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 4393
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4394
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4395
    .local v1, "count":I
    array-length v2, v0

    .line 4396
    .local v2, "size":I
    if-ne p2, v1, :cond_2

    .line 4397
    if-ne v2, v1, :cond_0

    .line 4398
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4399
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4400
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4402
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 4420
    :cond_1
    :goto_0
    return-void

    .line 4403
    :cond_2
    if-ge p2, v1, :cond_4

    .line 4404
    if-ne v2, v1, :cond_3

    .line 4405
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4406
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4407
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4408
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4412
    :goto_1
    aput-object p1, v0, p2

    .line 4413
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4414
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_1

    .line 4415
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_0

    .line 4410
    :cond_3
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 4418
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerIdBits"    # I

    .prologue
    .line 2409
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 2410
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2411
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2412
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x400000

    .line 4310
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v5, :cond_0

    .line 4313
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 4316
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4317
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4321
    :cond_1
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v5, :cond_2

    .line 4322
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4325
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4326
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 4329
    :cond_3
    if-eqz p4, :cond_d

    .line 4330
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 4335
    :goto_0
    if-gez p2, :cond_4

    .line 4336
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4339
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 4342
    if-eqz p4, :cond_e

    .line 4343
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 4348
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4349
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4352
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4353
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_7

    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v5, v7

    if-nez v5, :cond_7

    .line 4354
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4355
    .local v2, "lastKeepOn":Z
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4356
    iget-object v5, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    invoke-virtual {p1, v5, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 4357
    iget-boolean v5, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v5, :cond_6

    .line 4358
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 4360
    :cond_6
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4363
    .end local v2    # "lastKeepOn":Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4364
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 4367
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    .line 4369
    iget v5, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_9

    .line 4370
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4373
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4374
    invoke-virtual {p0, p1, v8}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4377
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_b

    .line 4378
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 4381
    :cond_b
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-eqz v5, :cond_f

    .line 4382
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 4383
    .local v4, "transientCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_f

    .line 4384
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4385
    .local v3, "oldIndex":I
    if-gt p2, v3, :cond_c

    .line 4386
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4383
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4332
    .end local v0    # "ai":Landroid/view/View$AttachInfo;
    .end local v1    # "i":I
    .end local v3    # "oldIndex":I
    .end local v4    # "transientCount":I
    :cond_d
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 4345
    :cond_e
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto/16 :goto_1

    .line 4390
    .restart local v0    # "ai":Landroid/view/View$AttachInfo;
    :cond_f
    return-void
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4480
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4481
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4482
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 2472
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 2369
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_2

    .line 2370
    const/4 v8, 0x0

    .line 2371
    .local v8, "syntheticEvent":Z
    if-nez p1, :cond_0

    .line 2372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2373
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2375
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2376
    const/4 v8, 0x1

    .line 2379
    .end local v0    # "now":J
    :cond_0
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v9, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v9, :cond_1

    .line 2380
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2381
    const/4 v2, 0x1

    iget-object v3, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 2379
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2383
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2385
    if-eqz v8, :cond_2

    .line 2386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2389
    .end local v8    # "syntheticEvent":Z
    .end local v9    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private cancelHoverTarget(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 1892
    const/4 v10, 0x0

    .line 1893
    .local v10, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1894
    .local v11, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    if-eqz v11, :cond_0

    .line 1895
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1896
    .local v9, "next":Landroid/view/ViewGroup$HoverTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 1897
    if-nez v10, :cond_1

    .line 1898
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1902
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1904
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1905
    .local v0, "now":J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1907
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1908
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1909
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1915
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    .end local v9    # "next":Landroid/view/ViewGroup$HoverTarget;
    :cond_0
    return-void

    .line 1900
    .restart local v9    # "next":Landroid/view/ViewGroup$HoverTarget;
    :cond_1
    iput-object v9, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 1912
    :cond_2
    move-object v10, v11

    .line 1913
    move-object v11, v9

    .line 1914
    goto :goto_0
.end method

.method private cancelTouchTarget(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 2442
    const/4 v10, 0x0

    .line 2443
    .local v10, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2444
    .local v11, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v11, :cond_0

    .line 2445
    iget-object v9, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2446
    .local v9, "next":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 2447
    if-nez v10, :cond_1

    .line 2448
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2452
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2455
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2457
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2458
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2459
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2465
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    .end local v9    # "next":Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    return-void

    .line 2450
    .restart local v9    # "next":Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    iput-object v9, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2462
    :cond_2
    move-object v10, v11

    .line 2463
    move-object v11, v9

    .line 2464
    goto :goto_0
.end method

.method private clearCachedLayoutMode()V
    .locals 1

    .prologue
    .line 4242
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4243
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 4245
    :cond_0
    return-void
.end method

.method private clearTouchTargets()V
    .locals 3

    .prologue
    .line 2354
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2355
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_1

    .line 2357
    :cond_0
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2358
    .local v0, "next":Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2359
    move-object v1, v0

    .line 2360
    if-nez v1, :cond_0

    .line 2361
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2363
    .end local v0    # "next":Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    return-void
.end method

.method private debugDraw()Z
    .locals 1

    .prologue
    .line 580
    sget-boolean v0, Landroid/view/ViewGroup;->DEBUG_DRAW:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dipsToPixels(I)I
    .locals 3
    .param p1, "dips"    # I

    .prologue
    .line 3243
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3244
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2056
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 2057
    .local v1, "offsetX":F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 2060
    .local v2, "offsetY":F
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2061
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 2062
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2063
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2064
    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2065
    .local v0, "handled":Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2071
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :goto_0
    return v0

    .line 2067
    .end local v0    # "handled":Z
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2068
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2069
    .restart local v0    # "handled":Z
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "cancel"    # Z
    .param p3, "child"    # Landroid/view/View;
    .param p4, "desiredPointerIdBits"    # I

    .prologue
    const/4 v7, 0x3

    .line 2525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2526
    .local v4, "oldAction":I
    if-nez p2, :cond_0

    if-ne v4, v7, :cond_2

    .line 2527
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2528
    if-nez p3, :cond_1

    .line 2529
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2533
    .local v0, "handled":Z
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2588
    .end local v0    # "handled":Z
    :goto_1
    return v0

    .line 2531
    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_0

    .line 2538
    .end local v0    # "handled":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 2539
    .local v5, "oldPointerIdBits":I
    and-int v1, v5, p4

    .line 2543
    .local v1, "newPointerIdBits":I
    if-nez v1, :cond_3

    .line 2544
    const/4 v0, 0x0

    goto :goto_1

    .line 2552
    :cond_3
    if-ne v1, v5, :cond_7

    .line 2553
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2554
    :cond_4
    if-nez p3, :cond_5

    .line 2555
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_1

    .line 2557
    .end local v0    # "handled":Z
    :cond_5
    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2558
    .local v2, "offsetX":F
    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2559
    .local v3, "offsetY":F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2561
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2563
    .restart local v0    # "handled":Z
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 2567
    .end local v0    # "handled":Z
    .end local v2    # "offsetX":F
    .end local v3    # "offsetY":F
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 2573
    .local v6, "transformedEvent":Landroid/view/MotionEvent;
    :goto_2
    if-nez p3, :cond_8

    .line 2574
    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2587
    .restart local v0    # "handled":Z
    :goto_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 2569
    .end local v0    # "handled":Z
    .end local v6    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v6

    .restart local v6    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_2

    .line 2576
    :cond_8
    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2577
    .restart local v2    # "offsetX":F
    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2578
    .restart local v3    # "offsetY":F
    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2579
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2580
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2583
    :cond_9
    invoke-virtual {p3, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_3
.end method

.method private static drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 6
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "lw"    # I

    .prologue
    .line 3238
    add-int v4, p2, p4

    invoke-static {p5}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3239
    invoke-static {p4}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v4, p2, v0

    add-int v5, p3, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3240
    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 7760
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_0

    .line 7762
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 7765
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x0

    int-to-float v2, p2

    aput v2, v0, v1

    .line 7766
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    .line 7767
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x2

    int-to-float v2, p4

    aput v2, v0, v1

    .line 7768
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x3

    int-to-float v2, p3

    aput v2, v0, v1

    .line 7770
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x4

    int-to-float v2, p4

    aput v2, v0, v1

    .line 7771
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x5

    int-to-float v2, p3

    aput v2, v0, v1

    .line 7772
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x6

    int-to-float v2, p4

    aput v2, v0, v1

    .line 7773
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x7

    int-to-float v2, p5

    aput v2, v0, v1

    .line 7775
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x8

    int-to-float v2, p4

    aput v2, v0, v1

    .line 7776
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x9

    int-to-float v2, p5

    aput v2, v0, v1

    .line 7777
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xa

    int-to-float v2, p2

    aput v2, v0, v1

    .line 7778
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xb

    int-to-float v2, p5

    aput v2, v0, v1

    .line 7780
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xc

    int-to-float v2, p2

    aput v2, v0, v1

    .line 7781
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xd

    int-to-float v2, p5

    aput v2, v0, v1

    .line 7782
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xe

    int-to-float v2, p2

    aput v2, v0, v1

    .line 7783
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xf

    int-to-float v2, p3

    aput v2, v0, v1

    .line 7785
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 7786
    return-void
.end method

.method private static drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "lineLength"    # I
    .param p7, "lineWidth"    # I

    .prologue
    .line 3249
    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v4, p6

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3250
    neg-int v5, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p4

    move v4, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3251
    neg-int v4, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p3

    move v3, p2

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3252
    neg-int v4, p6

    neg-int v5, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p3

    move v3, p4

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3253
    return-void
.end method

.method private exitHoverTargets()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1881
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v2, :cond_1

    .line 1882
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1883
    .local v0, "now":J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1885
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1886
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1887
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1889
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_1
    return-void
.end method

.method private static fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 12
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x2"    # I
    .param p2, "y2"    # I
    .param p3, "x3"    # I
    .param p4, "y3"    # I
    .param p5, "dx1"    # I
    .param p6, "dy1"    # I
    .param p7, "dx2"    # I
    .param p8, "dy2"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 3258
    sub-int v2, p1, p5

    .line 3259
    .local v2, "x1":I
    sub-int v3, p2, p6

    .line 3261
    .local v3, "y1":I
    add-int v4, p3, p7

    .line 3262
    .local v4, "x4":I
    add-int v11, p4, p8

    .local v11, "y4":I
    move-object v0, p0

    move-object/from16 v1, p9

    move v5, p2

    .line 3264
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, v2

    move v8, p2

    move v9, p1

    move/from16 v10, p4

    .line 3265
    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, p3

    move v8, p2

    move v9, v4

    move/from16 v10, p4

    .line 3266
    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, v2

    move/from16 v8, p4

    move v9, v4

    move v10, v11

    .line 3267
    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3268
    return-void
.end method

.method private static fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 3222
    if-eq p2, p4, :cond_2

    if-eq p3, p5, :cond_2

    .line 3223
    if-le p2, p4, :cond_0

    .line 3224
    move v6, p2

    .local v6, "tmp":I
    move p2, p4

    move p4, v6

    .line 3226
    .end local v6    # "tmp":I
    :cond_0
    if-le p3, p5, :cond_1

    .line 3227
    move v6, p3

    .restart local v6    # "tmp":I
    move p3, p5

    move p5, v6

    .line 3229
    .end local v6    # "tmp":I
    :cond_1
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3231
    :cond_2
    return-void
.end method

.method private findChildWithAccessibilityFocus()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2299
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 2300
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_1

    move-object v0, v3

    .line 2318
    :cond_0
    :goto_0
    return-object v0

    .line 2304
    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 2305
    .local v0, "current":Landroid/view/View;
    if-nez v0, :cond_2

    move-object v0, v3

    .line 2306
    goto :goto_0

    .line 2309
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2310
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_3

    .line 2311
    if-eq v1, p0, :cond_0

    move-object v0, v1

    .line 2314
    check-cast v0, Landroid/view/View;

    .line 2315
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 2318
    goto :goto_0
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .param p0, "spec"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 5982
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 5983
    .local v3, "specMode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 5985
    .local v4, "specSize":I
    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5987
    .local v2, "size":I
    const/4 v1, 0x0

    .line 5988
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 5990
    .local v0, "resultMode":I
    sparse-switch v3, :sswitch_data_0

    .line 6046
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 5993
    :sswitch_0
    if-ltz p2, :cond_1

    .line 5994
    move v1, p2

    .line 5995
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 5996
    :cond_1
    if-ne p2, v8, :cond_2

    .line 5998
    move v1, v2

    .line 5999
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 6000
    :cond_2
    if-ne p2, v7, :cond_0

    .line 6003
    move v1, v2

    .line 6004
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 6010
    :sswitch_1
    if-ltz p2, :cond_3

    .line 6012
    move v1, p2

    .line 6013
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 6014
    :cond_3
    if-ne p2, v8, :cond_4

    .line 6017
    move v1, v2

    .line 6018
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 6019
    :cond_4
    if-ne p2, v7, :cond_0

    .line 6022
    move v1, v2

    .line 6023
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 6029
    :sswitch_2
    if-ltz p2, :cond_5

    .line 6031
    move v1, p2

    .line 6032
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 6033
    :cond_5
    if-ne p2, v8, :cond_7

    .line 6036
    sget-boolean v6, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v6, :cond_6

    move v1, v5

    .line 6037
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move v1, v2

    .line 6036
    goto :goto_1

    .line 6038
    :cond_7
    if-ne p2, v7, :cond_0

    .line 6041
    sget-boolean v6, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v6, :cond_8

    move v1, v5

    .line 6042
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    move v1, v2

    .line 6041
    goto :goto_2

    .line 5990
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDebugPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 7752
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 7753
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    .line 7754
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7756
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getLocalPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 1367
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private getTempPoint()[F
    .locals 1

    .prologue
    .line 2477
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    if-nez v0, :cond_0

    .line 2478
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    .line 2480
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    return-object v0
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2396
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    .line 2397
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 2401
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_1
    return-object v0

    .line 2396
    .restart local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2401
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hasBooleanFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 5661
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasChildWithZ()Z
    .locals 3

    .prologue
    .line 3509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_1

    .line 3510
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3512
    :goto_1
    return v1

    .line 3509
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3512
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 608
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 611
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 612
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 613
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 614
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    .line 612
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 616
    :pswitch_0
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 619
    :pswitch_1
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    .line 622
    :pswitch_2
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    .line 625
    :pswitch_3
    const/4 v6, 0x2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    .line 628
    :pswitch_4
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    .line 631
    :pswitch_5
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    .line 634
    :pswitch_6
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 635
    .local v5, "id":I
    if-lez v5, :cond_0

    .line 636
    iget-object v6, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 640
    .end local v5    # "id":I
    :pswitch_7
    sget-object v6, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    .line 643
    :pswitch_8
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_1

    .line 646
    :pswitch_9
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 647
    .local v2, "animateLayoutChanges":Z
    if-eqz v2, :cond_0

    .line 648
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 652
    .end local v2    # "animateLayoutChanges":Z
    :pswitch_a
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    goto :goto_1

    .line 655
    :pswitch_b
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    goto :goto_1

    .line 658
    :pswitch_c
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    goto :goto_1

    .line 663
    .end local v3    # "attr":I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 664
    return-void

    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 585
    invoke-direct {p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 588
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 589
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 590
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 591
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 592
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 594
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 595
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 598
    :cond_1
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 600
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 603
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 604
    return-void
.end method

.method private notifyAnimationListener()V
    .locals 2

    .prologue
    .line 3551
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3552
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3554
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 3555
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    .line 3560
    .local v0, "end":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3563
    .end local v0    # "end":Ljava/lang/Runnable;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3564
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1989
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1992
    .end local p0    # "event":Landroid/view/MotionEvent;
    :goto_0
    return-object p0

    .restart local p0    # "event":Landroid/view/MotionEvent;
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    goto :goto_0
.end method

.method private recreateChildDisplayList(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 3599
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3600
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3601
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    .line 3602
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3603
    return-void

    :cond_0
    move v0, v1

    .line 3599
    goto :goto_0
.end method

.method private removeFromArray(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 4424
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4425
    .local v0, "children":[Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4426
    :cond_0
    aget-object v2, v0, p1

    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4428
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4429
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 4430
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    .line 4437
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_5

    .line 4438
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 4439
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 4443
    :cond_2
    :goto_1
    return-void

    .line 4431
    :cond_3
    if-ltz p1, :cond_4

    if-ge p1, v1, :cond_4

    .line 4432
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4433
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_0

    .line 4435
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 4440
    :cond_5
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_2

    .line 4441
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1
.end method

.method private removeFromArray(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 4447
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4448
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4450
    .local v1, "childrenCount":I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4451
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4453
    .local v2, "end":I
    if-ne p1, v2, :cond_0

    .line 4477
    :goto_0
    return-void

    .line 4457
    :cond_0
    if-ne v2, v1, :cond_1

    .line 4458
    move v3, p1

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 4459
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4460
    aput-object v5, v0, v3

    .line 4458
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4463
    .end local v3    # "i":I
    :cond_1
    move v3, p1

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 4464
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4463
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4469
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4471
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_3

    .line 4472
    aput-object v5, v0, v3

    .line 4471
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4476
    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5
    .param p1, "pointerIdBits"    # I

    .prologue
    .line 2419
    const/4 v1, 0x0

    .line 2420
    .local v1, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2421
    .local v2, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v2, :cond_2

    .line 2422
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2423
    .local v0, "next":Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 2424
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2425
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    .line 2426
    if-nez v1, :cond_0

    .line 2427
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2431
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2432
    move-object v2, v0

    .line 2433
    goto :goto_0

    .line 2429
    :cond_0
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2436
    :cond_1
    move-object v1, v2

    .line 2437
    move-object v2, v0

    .line 2438
    goto :goto_0

    .line 2439
    .end local v0    # "next":Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 4592
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v4, :cond_0

    .line 4593
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v4, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4596
    :cond_0
    const/4 v0, 0x0

    .line 4597
    .local v0, "clearChildFocus":Z
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v4, :cond_1

    .line 4598
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 4599
    const/4 v0, 0x1

    .line 4602
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4604
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 4605
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 4607
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4609
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4614
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4615
    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4618
    :cond_4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 4620
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4622
    if-eqz v0, :cond_5

    .line 4623
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 4624
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4625
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 4629
    :cond_5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 4631
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_6

    .line 4632
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 4635
    :cond_6
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v4, :cond_9

    .line 4636
    .local v3, "transientCount":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_a

    .line 4637
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4638
    .local v2, "oldIndex":I
    if-ge p1, v2, :cond_7

    .line 4639
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4636
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4610
    .end local v1    # "i":I
    .end local v2    # "oldIndex":I
    .end local v3    # "transientCount":I
    :cond_8
    iget-object v4, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_3

    .line 4611
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0

    .line 4635
    :cond_9
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    .line 4642
    .restart local v1    # "i":I
    .restart local v3    # "transientCount":I
    :cond_a
    return-void
.end method

.method private removeViewInternal(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4582
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4583
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 4584
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 4585
    const/4 v1, 0x1

    .line 4587
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeViewsInternal(II)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v7, 0x0

    .line 4684
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 4685
    .local v4, "focused":Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    .line 4686
    .local v2, "detach":Z
    :goto_0
    const/4 v1, 0x0

    .line 4688
    .local v1, "clearChildFocus":Z
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4689
    .local v0, "children":[Landroid/view/View;
    add-int v3, p1, p2

    .line 4691
    .local v3, "end":I
    move v5, p1

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_7

    .line 4692
    aget-object v6, v0, v5

    .line 4694
    .local v6, "view":Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_0

    .line 4695
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4698
    :cond_0
    if-ne v6, v4, :cond_1

    .line 4699
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 4700
    const/4 v1, 0x1

    .line 4703
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4705
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 4706
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 4708
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4710
    :cond_2
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4715
    :cond_3
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4716
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4719
    :cond_4
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 4721
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 4691
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "clearChildFocus":Z
    .end local v2    # "detach":Z
    .end local v3    # "end":I
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_5
    move v2, v7

    .line 4685
    goto :goto_0

    .line 4711
    .restart local v0    # "children":[Landroid/view/View;
    .restart local v1    # "clearChildFocus":Z
    .restart local v2    # "detach":Z
    .restart local v3    # "end":I
    .restart local v5    # "i":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_6
    if-eqz v2, :cond_3

    .line 4712
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    .line 4724
    .end local v6    # "view":Landroid/view/View;
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 4726
    if-eqz v1, :cond_8

    .line 4727
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 4728
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v7

    if-nez v7, :cond_8

    .line 4729
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 4732
    :cond_8
    return-void
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2342
    if-eqz p0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2344
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2345
    const/4 v0, 0x1

    .line 2347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    .line 2325
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2326
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2327
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2328
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 2329
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .prologue
    .line 5665
    if-eqz p2, :cond_0

    .line 5666
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5670
    :goto_0
    return-void

    .line 5668
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method private setLayoutMode(IZ)V
    .locals 1
    .param p1, "layoutMode"    # I
    .param p2, "explicitly"    # Z

    .prologue
    .line 5708
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 5709
    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 5710
    return-void
.end method

.method private static sign(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 3234
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1925
    .local p1, "outChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1944
    :goto_0
    return-void

    .line 1928
    :cond_0
    const/4 v4, 0x1

    invoke-static {p0, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v1

    .line 1930
    .local v1, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v2

    .line 1931
    .local v2, "childrenCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1932
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1933
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_1

    .line 1934
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1935
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1937
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1942
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childrenCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v4

    .restart local v2    # "childrenCount":I
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1089
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1091
    .local v4, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 1093
    .local v3, "descendantFocusability":I
    const/high16 v6, 0x60000

    if-eq v3, v6, :cond_2

    .line 1094
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1095
    or-int/lit8 p3, p3, 0x1

    .line 1098
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1099
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1101
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 1102
    aget-object v0, v1, v5

    .line 1103
    .local v0, "child":Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_1

    .line 1104
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1101
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1113
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v5    # "i":I
    :cond_2
    const/high16 v6, 0x40000

    if-ne v3, v6, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_5

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1117
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1119
    :cond_5
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 6385
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1214
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1216
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1217
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1219
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1220
    aget-object v0, v1, v3

    .line 1221
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 1222
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1219
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1225
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addTransientView(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 3953
    if-gez p2, :cond_0

    .line 3977
    :goto_0
    return-void

    .line 3956
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v2, :cond_1

    .line 3957
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 3958
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 3960
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 3961
    .local v1, "oldSize":I
    if-lez v1, :cond_4

    .line 3963
    const/4 v0, 0x0

    .local v0, "insertionIndex":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3964
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 3968
    :cond_2
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3969
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3974
    .end local v0    # "insertionIndex":I
    :goto_2
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3975
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3976
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    goto :goto_0

    .line 3963
    .restart local v0    # "insertionIndex":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3971
    .end local v0    # "insertionIndex":I
    :cond_4
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3972
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4067
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 4068
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 4084
    if-nez p1, :cond_0

    .line 4085
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4087
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4088
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 4089
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4090
    if-nez v0, :cond_1

    .line 4091
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4094
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4095
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 4108
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4109
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4110
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4111
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4112
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4144
    if-nez p1, :cond_0

    .line 4145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4151
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 4154
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4125
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4126
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .prologue
    .line 4289
    if-nez p1, :cond_0

    .line 4290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4292
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4293
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 4294
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4295
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 4496
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 4498
    .local v0, "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 4499
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 4500
    .restart local v0    # "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 4503
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 4504
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 4505
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/high16 v2, -0x80000000

    .line 4890
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 4892
    if-gez p2, :cond_0

    .line 4893
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4896
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 4898
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4899
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4902
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4904
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4905
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4907
    :cond_1
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1355
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1356
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1357
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 1358
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1359
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1360
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1361
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1363
    :cond_0
    return-void
.end method

.method buildOrderedChildList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3524
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3525
    .local v1, "count":I
    const/4 v7, 0x1

    if-le v1, v7, :cond_0

    invoke-direct {p0}, Landroid/view/ViewGroup;->hasChildWithZ()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    .line 3547
    :goto_0
    return-object v7

    .line 3527
    :cond_1
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    .line 3528
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    .line 3533
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    .line 3534
    .local v6, "useCustomOrder":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v3, v7, :cond_5

    .line 3536
    if-eqz v6, :cond_3

    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-virtual {p0, v7, v3}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 3537
    .local v0, "childIndex":I
    :goto_3
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v7, v0

    .line 3538
    .local v5, "nextChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getZ()F

    move-result v2

    .line 3541
    .local v2, "currentZ":F
    move v4, v3

    .line 3542
    .local v4, "insertIndex":I
    :goto_4
    if-lez v4, :cond_4

    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v7

    cmpl-float v7, v7, v2

    if-lez v7, :cond_4

    .line 3543
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 3530
    .end local v0    # "childIndex":I
    .end local v2    # "currentZ":F
    .end local v3    # "i":I
    .end local v4    # "insertIndex":I
    .end local v5    # "nextChild":Landroid/view/View;
    .end local v6    # "useCustomOrder":Z
    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_1

    .restart local v3    # "i":I
    .restart local v6    # "useCustomOrder":Z
    :cond_3
    move v0, v3

    .line 3536
    goto :goto_3

    .line 3545
    .restart local v0    # "childIndex":I
    .restart local v2    # "currentZ":F
    .restart local v4    # "insertIndex":I
    .restart local v5    # "nextChild":Landroid/view/View;
    :cond_4
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3534
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3547
    .end local v0    # "childIndex":I
    .end local v2    # "currentZ":F
    .end local v4    # "insertIndex":I
    .end local v5    # "nextChild":Landroid/view/View;
    :cond_5
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 5466
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public captureTransitioningViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6721
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 6733
    :cond_0
    :goto_0
    return-void

    .line 6724
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6725
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6727
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6728
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 6729
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6730
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 6728
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4173
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6393
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 6394
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 6396
    :cond_0
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childHasTransientState"    # Z

    .prologue
    .line 923
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v2

    .line 924
    .local v2, "oldHasTransientState":Z
    if-eqz p2, :cond_1

    .line 925
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 930
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v1

    .line 931
    .local v1, "newHasTransientState":Z
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    if-eq v2, v1, :cond_0

    .line 933
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :cond_0
    :goto_1
    return-void

    .line 927
    .end local v1    # "newHasTransientState":Z
    :cond_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_0

    .line 934
    .restart local v1    # "newHasTransientState":Z
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v3, "ViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not fully implement ViewParent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4304
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4305
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 964
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 967
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 5

    .prologue
    .line 6055
    iget-object v1, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6056
    .local v1, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v1, :cond_2

    .line 6057
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6058
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6059
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6060
    .local v3, "view":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    .line 6061
    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6063
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 6058
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6065
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6066
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6068
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    .line 977
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v1, :cond_0

    .line 978
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 984
    :goto_0
    return-void

    .line 980
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 981
    .local v0, "focused":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 982
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method computeOpticalInsets()Landroid/graphics/Insets;
    .locals 8

    .prologue
    .line 3200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3201
    const/4 v4, 0x0

    .line 3202
    .local v4, "left":I
    const/4 v6, 0x0

    .line 3203
    .local v6, "top":I
    const/4 v5, 0x0

    .line 3204
    .local v5, "right":I
    const/4 v0, 0x0

    .line 3205
    .local v0, "bottom":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v7, :cond_1

    .line 3206
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3207
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 3208
    invoke-virtual {v1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 3209
    .local v3, "insets":Landroid/graphics/Insets;
    iget v7, v3, Landroid/graphics/Insets;->left:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3210
    iget v7, v3, Landroid/graphics/Insets;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3211
    iget v7, v3, Landroid/graphics/Insets;->right:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3212
    iget v7, v3, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3205
    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3215
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-static {v4, v6, v5, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    .line 3217
    .end local v0    # "bottom":I
    .end local v2    # "i":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    :goto_1
    return-object v7

    :cond_2
    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_1
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "quality"    # Landroid/graphics/Bitmap$Config;
    .param p2, "backgroundColor"    # I
    .param p3, "skipChildren"    # Z

    .prologue
    .line 3169
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3170
    .local v2, "count":I
    const/4 v4, 0x0

    .line 3172
    .local v4, "visibilities":[I
    if-eqz p3, :cond_1

    .line 3173
    new-array v4, v2, [I

    .line 3174
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3175
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3176
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 3177
    aget v5, v4, v3

    if-nez v5, :cond_0

    .line 3178
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3174
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3183
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3185
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 3186
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 3187
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3186
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3191
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method public damageChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 5198
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->damageChildDeferred(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5234
    :cond_0
    :goto_0
    return-void

    .line 5202
    :cond_1
    move-object v3, p0

    .line 5204
    .local v3, "parent":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5205
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 5206
    iget v1, p1, Landroid/view/View;->mLeft:I

    .line 5207
    .local v1, "left":I
    iget v5, p1, Landroid/view/View;->mTop:I

    .line 5208
    .local v5, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_2

    .line 5209
    invoke-virtual {p1, p2}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    .line 5213
    :cond_2
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    move-object v4, v3

    .line 5214
    check-cast v4, Landroid/view/ViewGroup;

    .line 5215
    .local v4, "parentVG":Landroid/view/ViewGroup;
    iget v6, v4, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v6, :cond_3

    .line 5217
    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 5218
    const/4 v3, 0x0

    .line 5232
    .end local v4    # "parentVG":Landroid/view/ViewGroup;
    :goto_1
    if-nez v3, :cond_2

    goto :goto_0

    .line 5220
    .restart local v4    # "parentVG":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v4, v1, v5, p2}, Landroid/view/ViewGroup;->damageChildInParent(IILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    .line 5221
    iget v1, v4, Landroid/view/ViewGroup;->mLeft:I

    .line 5222
    iget v5, v4, Landroid/view/ViewGroup;->mTop:I

    goto :goto_1

    .line 5227
    .end local v4    # "parentVG":Landroid/view/ViewGroup;
    :cond_4
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 5228
    .local v2, "location":[I
    const/4 v6, 0x0

    aput v1, v2, v6

    .line 5229
    const/4 v6, 0x1

    aput v5, v2, v6

    .line 5230
    invoke-interface {v3, v2, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_1
.end method

.method public damageChildDeferred(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5177
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_2

    .line 5178
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 5179
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 5180
    :cond_0
    instance-of v1, v0, Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_1

    .line 5181
    check-cast v0, Landroid/view/ViewRootImpl;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 5182
    const/4 v1, 0x1

    .line 5187
    :goto_1
    return v1

    .line 5184
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5187
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected damageChildInParent(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 5243
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 5245
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 5246
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 5247
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 5250
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5253
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5254
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->transformRect(Landroid/graphics/Rect;)V

    .line 5257
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 5261
    :goto_0
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected debug(I)V
    .locals 6
    .param p1, "depth"    # I

    .prologue
    .line 5824
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 5827
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 5828
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 5829
    .local v3, "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5830
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5832
    .end local v3    # "output":Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_1

    .line 5833
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 5834
    .restart local v3    # "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5835
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5837
    .end local v3    # "output":Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5838
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5839
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 5840
    .local v0, "child":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 5838
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5843
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_3

    .line 5844
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 5845
    .restart local v3    # "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5846
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5848
    .end local v3    # "output":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4989
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4990
    .local v1, "count":I
    if-gtz v1, :cond_1

    .line 5001
    :cond_0
    return-void

    .line 4994
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4995
    .local v0, "children":[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4997
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 4998
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4999
    aput-object v4, v0, v2

    .line 4997
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 4948
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4949
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4927
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4928
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 4970
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 4971
    return-void
.end method

.method public dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .locals 5
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 828
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 838
    :cond_0
    :goto_0
    return v3

    .line 831
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 832
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 833
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 834
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 832
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 838
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 6278
    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 6279
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6280
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6281
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6282
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 6283
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6288
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-object p1

    .line 6281
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 8
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    .line 2843
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v7, 0x400000

    or-int/2addr v6, v7

    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2844
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2845
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v7, -0x400001

    and-int/2addr v6, v7

    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2847
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2848
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2849
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2850
    aget-object v0, v1, v3

    .line 2851
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v6

    invoke-virtual {v0, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2849
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2854
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v6, :cond_1

    const/4 v4, 0x0

    .line 2855
    .local v4, "transientCount":I
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    .line 2856
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2857
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v6

    invoke-virtual {v5, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2855
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2854
    .end local v4    # "transientCount":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    .line 2860
    .restart local v4    # "transientCount":I
    :cond_2
    return-void
.end method

.method dispatchCancelPendingInputEvents()V
    .locals 4

    .prologue
    .line 3784
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 3786
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3787
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3788
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3789
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 3788
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3791
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    .line 1339
    and-int/lit8 v4, p2, 0xc

    if-nez v4, :cond_0

    .line 1340
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1341
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1342
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1343
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1344
    aget-object v0, v1, v3

    .line 1345
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1343
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1349
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1319
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1320
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1321
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1322
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1323
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1325
    :cond_0
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 3053
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 3056
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 3059
    iput-boolean v3, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 3062
    iput-object v6, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 3063
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v5, :cond_0

    .line 3064
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {v5}, Landroid/view/DragEvent;->recycle()V

    .line 3065
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 3068
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3069
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3070
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3071
    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3070
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3073
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 3074
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v5, :cond_2

    .line 3075
    .local v3, "transientCount":I
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 3076
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3077
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3075
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3074
    .end local v3    # "transientCount":I
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    .line 3079
    .restart local v3    # "transientCount":I
    :cond_3
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3080
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .param p1, "hint"    # I

    .prologue
    .line 1245
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1246
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1247
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1248
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1249
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1251
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 19
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1376
    const/4 v11, 0x0

    .line 1377
    .local v11, "retval":Z
    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1378
    .local v14, "tx":F
    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/DragEvent;->mY:F

    .line 1380
    .local v15, "ty":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 1383
    .local v12, "root":Landroid/view/ViewRootImpl;
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    move-result-object v10

    .line 1385
    .local v10, "localPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1531
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v11, :cond_1

    .line 1533
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1535
    :cond_1
    return v11

    .line 1388
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1391
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    .line 1393
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 1399
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1400
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1401
    .local v6, "count":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1402
    .local v5, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_4

    .line 1403
    aget-object v4, v5, v8

    .line 1404
    .local v4, "child":Landroid/view/View;
    iget v0, v4, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v4, Landroid/view/View;->mPrivateFlags2:I

    .line 1405
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2

    .line 1406
    aget-object v17, v5, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    move-result v7

    .line 1407
    .local v7, "handled":Z
    if-eqz v7, :cond_2

    .line 1408
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1402
    .end local v7    # "handled":Z
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1395
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "children":[Landroid/view/View;
    .end local v6    # "count":I
    .end local v8    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 1414
    .restart local v5    # "children":[Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v8    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1415
    const/4 v11, 0x1

    goto :goto_0

    .line 1421
    .end local v5    # "children":[Landroid/view/View;
    .end local v6    # "count":I
    .end local v8    # "i":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1424
    .restart local v4    # "child":Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1425
    iget v0, v4, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v4, Landroid/view/View;->mPrivateFlags2:I

    .line 1426
    invoke-virtual {v4}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_3

    .line 1429
    .end local v4    # "child":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/DragEvent;->recycle()V

    .line 1432
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1438
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1439
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1445
    :pswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v10}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1453
    .local v13, "target":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v0, v13, :cond_9

    .line 1454
    invoke-virtual {v12, v13}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;)V

    .line 1456
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/DragEvent;->mAction:I

    .line 1458
    .local v3, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1460
    .local v16, "view":Landroid/view/View;
    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1461
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1462
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1463
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1465
    .end local v16    # "view":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1468
    if-eqz v13, :cond_8

    .line 1469
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1470
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1471
    iget v0, v13, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v13, Landroid/view/View;->mPrivateFlags2:I

    .line 1472
    invoke-virtual {v13}, Landroid/view/View;->refreshDrawableState()V

    .line 1474
    :cond_8
    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/DragEvent;->mAction:I

    .line 1478
    .end local v3    # "action":I
    :cond_9
    if-eqz v13, :cond_0

    .line 1479
    iget v0, v10, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1480
    iget v0, v10, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1482
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1484
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1485
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1502
    .end local v13    # "target":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1504
    .restart local v16    # "view":Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1505
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1506
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1508
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    goto/16 :goto_0

    .line 1514
    .end local v16    # "view":Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v10}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1515
    .restart local v13    # "target":Landroid/view/View;
    if-eqz v13, :cond_0

    .line 1517
    iget v0, v10, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1518
    iget v0, v10, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1519
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1520
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1521
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mRenderNode:Landroid/view/RenderNode;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->isRecordingFor(Ljava/lang/Object;)Z

    move-result v28

    .line 3336
    .local v28, "usingRenderNodeProperties":Z
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3337
    .local v10, "childrenCount":I
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3338
    .local v9, "children":[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    .line 3340
    .local v20, "flags":I
    and-int/lit8 v29, v20, 0x8

    if-eqz v29, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 3341
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v29

    if-nez v29, :cond_1

    const/4 v6, 0x1

    .line 3342
    .local v6, "buildCache":Z
    :goto_0
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v10, :cond_2

    .line 3343
    aget-object v7, v9, v21

    .line 3344
    .local v7, "child":Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-nez v29, :cond_0

    .line 3345
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 3346
    .local v23, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v7, v1, v2, v10}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 3347
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 3342
    .end local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 3341
    .end local v6    # "buildCache":Z
    .end local v7    # "child":Landroid/view/View;
    .end local v21    # "i":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 3351
    .restart local v6    # "buildCache":Z
    .restart local v21    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 3352
    .local v13, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 3353
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3356
    :cond_3
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 3358
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x9

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3359
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x11

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4

    .line 3362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v29, v0

    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 3366
    .end local v6    # "buildCache":Z
    .end local v13    # "controller":Landroid/view/animation/LayoutAnimationController;
    .end local v21    # "i":I
    :cond_4
    const/4 v11, 0x0

    .line 3367
    .local v11, "clipSaveCount":I
    and-int/lit8 v29, v20, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    const/4 v12, 0x1

    .line 3368
    .local v12, "clipToPadding":Z
    :goto_2
    if-eqz v12, :cond_5

    .line 3369
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 3370
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mRight:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mLeft:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mBottom:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3376
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x41

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3377
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x5

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3379
    const/16 v22, 0x0

    .line 3380
    .local v22, "more":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v18

    .line 3382
    .local v18, "drawingTime":J
    if-eqz v28, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertReorderBarrier()V

    .line 3383
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    if-nez v29, :cond_b

    const/16 v26, 0x0

    .line 3384
    .local v26, "transientCount":I
    :goto_3
    if-eqz v26, :cond_c

    const/16 v27, 0x0

    .line 3387
    .local v27, "transientIndex":I
    :goto_4
    if-eqz v28, :cond_d

    const/16 v24, 0x0

    .line 3389
    .local v24, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_5
    if-nez v24, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v29

    if-eqz v29, :cond_e

    const/4 v14, 0x1

    .line 3391
    .local v14, "customOrder":Z
    :goto_6
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_7
    move/from16 v0, v21

    if-ge v0, v10, :cond_14

    .line 3392
    :cond_7
    :goto_8
    if-ltz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 3394
    .local v25, "transientChild":Landroid/view/View;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_8

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_9

    .line 3396
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    .line 3398
    :cond_9
    add-int/lit8 v27, v27, 0x1

    .line 3399
    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 3400
    const/16 v27, -0x1

    goto :goto_8

    .line 3367
    .end local v12    # "clipToPadding":Z
    .end local v14    # "customOrder":Z
    .end local v18    # "drawingTime":J
    .end local v21    # "i":I
    .end local v22    # "more":Z
    .end local v24    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v25    # "transientChild":Landroid/view/View;
    .end local v26    # "transientCount":I
    .end local v27    # "transientIndex":I
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 3383
    .restart local v12    # "clipToPadding":Z
    .restart local v18    # "drawingTime":J
    .restart local v22    # "more":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v26

    goto :goto_3

    .line 3384
    .restart local v26    # "transientCount":I
    :cond_c
    const/16 v27, -0x1

    goto :goto_4

    .line 3387
    .restart local v27    # "transientIndex":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v24

    goto :goto_5

    .line 3389
    .restart local v24    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_e
    const/4 v14, 0x0

    goto :goto_6

    .line 3403
    .restart local v14    # "customOrder":Z
    .restart local v21    # "i":I
    :cond_f
    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v8

    .line 3404
    .local v8, "childIndex":I
    :goto_9
    if-nez v24, :cond_13

    aget-object v7, v9, v8

    .line 3406
    .restart local v7    # "child":Landroid/view/View;
    :goto_a
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_10

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_11

    .line 3407
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    .line 3391
    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    :cond_12
    move/from16 v8, v21

    .line 3403
    goto :goto_9

    .line 3404
    .restart local v8    # "childIndex":I
    :cond_13
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/View;

    move-object/from16 v7, v29

    goto :goto_a

    .line 3410
    .end local v8    # "childIndex":I
    :cond_14
    if-ltz v27, :cond_17

    .line 3412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 3413
    .restart local v25    # "transientChild":Landroid/view/View;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_15

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_16

    .line 3415
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    .line 3417
    :cond_16
    add-int/lit8 v27, v27, 0x1

    .line 3418
    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_14

    .line 3422
    .end local v25    # "transientChild":Landroid/view/View;
    :cond_17
    if-eqz v24, :cond_18

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 3425
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    if-eqz v29, :cond_19

    .line 3426
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3427
    .local v15, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v16, v29, -0x1

    .line 3429
    .local v16, "disappearingCount":I
    move/from16 v21, v16

    :goto_b
    if-ltz v21, :cond_19

    .line 3430
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 3431
    .restart local v7    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    .line 3429
    add-int/lit8 v21, v21, -0x1

    goto :goto_b

    .line 3434
    .end local v7    # "child":Landroid/view/View;
    .end local v15    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v16    # "disappearingCount":I
    :cond_19
    if-eqz v28, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertInorderBarrier()V

    .line 3436
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 3437
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 3440
    :cond_1b
    if-eqz v12, :cond_1c

    .line 3441
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3445
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    .line 3447
    and-int/lit8 v29, v20, 0x4

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1d

    .line 3448
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3451
    :cond_1d
    and-int/lit8 v29, v20, 0x10

    if-nez v29, :cond_1e

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x200

    move/from16 v29, v0

    if-nez v29, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v29

    if-eqz v29, :cond_1e

    if-nez v22, :cond_1e

    .line 3456
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x200

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3457
    new-instance v17, Landroid/view/ViewGroup$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 3462
    .local v17, "end":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3464
    .end local v17    # "end":Ljava/lang/Runnable;
    :cond_1e
    return-void
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3760
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3761
    .local v2, "count":I
    if-nez v2, :cond_1

    .line 3780
    :cond_0
    return-void

    .line 3765
    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3766
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3767
    aget-object v0, v1, v4

    .line 3770
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v9

    if-nez v9, :cond_4

    move v5, v7

    .line 3771
    .local v5, "nonActionable":Z
    :goto_1
    iget v9, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v10, 0x400000

    and-int/2addr v9, v10

    if-eqz v9, :cond_5

    move v3, v7

    .line 3772
    .local v3, "duplicatesState":Z
    :goto_2
    if-nez v5, :cond_2

    if-eqz v3, :cond_3

    .line 3773
    :cond_2
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    move-result-object v6

    .line 3774
    .local v6, "point":[F
    aput p1, v6, v8

    .line 3775
    aput p2, v6, v7

    .line 3776
    invoke-virtual {p0, v6, v0}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 3777
    aget v9, v6, v8

    aget v10, v6, v7

    invoke-virtual {v0, v9, v10}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 3766
    .end local v6    # "point":[F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "duplicatesState":Z
    .end local v5    # "nonActionable":Z
    :cond_4
    move v5, v8

    .line 3770
    goto :goto_1

    .restart local v5    # "nonActionable":Z
    :cond_5
    move v3, v8

    .line 3771
    goto :goto_2
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .prologue
    .line 2830
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2831
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2832
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2833
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2834
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2833
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2836
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3121
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3122
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2037
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 2039
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2044
    :goto_0
    return v0

    .line 2040
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2042
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2044
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 2001
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2002
    .local v3, "childrenCount":I
    if-eqz v3, :cond_7

    .line 2003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 2004
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 2006
    .local v8, "y":F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v6

    .line 2007
    .local v6, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v6, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    move v4, v10

    .line 2009
    .local v4, "customOrder":Z
    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2010
    .local v2, "children":[Landroid/view/View;
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_6

    .line 2011
    if-eqz v4, :cond_2

    invoke-virtual {p0, v3, v5}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v1

    .line 2012
    .local v1, "childIndex":I
    :goto_2
    if-nez v6, :cond_3

    aget-object v0, v2, v1

    .line 2014
    .local v0, "child":Landroid/view/View;
    :goto_3
    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v0, v9}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2010
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2007
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v2    # "children":[Landroid/view/View;
    .end local v4    # "customOrder":Z
    .end local v5    # "i":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .restart local v2    # "children":[Landroid/view/View;
    .restart local v4    # "customOrder":Z
    .restart local v5    # "i":I
    :cond_2
    move v1, v5

    .line 2011
    goto :goto_2

    .line 2012
    .restart local v1    # "childIndex":I
    :cond_3
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v0, v9

    goto :goto_3

    .line 2019
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2020
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2028
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    .end local v2    # "children":[Landroid/view/View;
    .end local v4    # "customOrder":Z
    .end local v5    # "i":I
    .end local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_5
    :goto_4
    return v10

    .line 2024
    .restart local v2    # "children":[Landroid/view/View;
    .restart local v4    # "customOrder":Z
    .restart local v5    # "i":I
    .restart local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2028
    .end local v2    # "children":[Landroid/view/View;
    .end local v4    # "customOrder":Z
    .end local v5    # "i":I
    .end local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_4
.end method

.method protected dispatchGetDisplayList()V
    .locals 8

    .prologue
    .line 3576
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3577
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3578
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 3579
    aget-object v0, v1, v5

    .line 3580
    .local v0, "child":Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 3581
    :cond_0
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 3578
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3584
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v7, :cond_3

    .line 3585
    iget-object v7, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v7}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 3586
    .local v6, "overlayView":Landroid/view/View;
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 3588
    .end local v6    # "overlayView":Landroid/view/View;
    :cond_3
    iget-object v7, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 3589
    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3590
    .local v3, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3591
    .local v4, "disappearingCount":I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 3592
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3593
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 3591
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3596
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "disappearingCount":I
    :cond_4
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1700
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1703
    .local v4, "action":I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    .line 1704
    .local v15, "interceptHover":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1706
    move-object/from16 v10, p1

    .line 1707
    .local v10, "eventNoHistory":Landroid/view/MotionEvent;
    const/4 v12, 0x0

    .line 1711
    .local v12, "handled":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1712
    .local v11, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1713
    if-nez v15, :cond_7

    const/16 v24, 0xa

    move/from16 v0, v24

    if-eq v4, v0, :cond_7

    .line 1714
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    .line 1715
    .local v22, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    .line 1716
    .local v23, "y":F
    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1717
    .local v8, "childrenCount":I
    if-eqz v8, :cond_7

    .line 1718
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v20

    .line 1719
    .local v20, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v20, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v24

    if-eqz v24, :cond_1

    const/4 v9, 0x1

    .line 1721
    .local v9, "customOrder":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1722
    .local v7, "children":[Landroid/view/View;
    const/16 v16, 0x0

    .line 1723
    .local v16, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v14, v8, -0x1

    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_6

    .line 1724
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v6

    .line 1725
    .local v6, "childIndex":I
    :goto_2
    if-nez v20, :cond_3

    aget-object v5, v7, v6

    .line 1727
    .local v5, "child":Landroid/view/View;
    :goto_3
    invoke-static {v5}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 1723
    :cond_0
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 1719
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childIndex":I
    .end local v7    # "children":[Landroid/view/View;
    .end local v9    # "customOrder":Z
    .end local v14    # "i":I
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .restart local v7    # "children":[Landroid/view/View;
    .restart local v9    # "customOrder":Z
    .restart local v14    # "i":I
    .restart local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_2
    move v6, v14

    .line 1724
    goto :goto_2

    .line 1725
    .restart local v6    # "childIndex":I
    :cond_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v5, v24

    goto :goto_3

    .line 1734
    .restart local v5    # "child":Landroid/view/View;
    :cond_4
    move-object v13, v11

    .line 1736
    .local v13, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v19, 0x0

    .line 1737
    .local v19, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    :goto_4
    if-nez v13, :cond_8

    .line 1738
    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v13

    .line 1739
    const/16 v21, 0x0

    .line 1759
    .local v21, "wasHovered":Z
    :goto_5
    if-eqz v16, :cond_b

    .line 1760
    move-object/from16 v0, v16

    iput-object v13, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1764
    :goto_6
    move-object/from16 v16, v13

    .line 1767
    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_c

    .line 1768
    if-nez v21, :cond_5

    .line 1770
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1789
    :cond_5
    :goto_7
    if-eqz v12, :cond_0

    .line 1793
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childIndex":I
    .end local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v19    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .end local v21    # "wasHovered":Z
    :cond_6
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 1798
    .end local v7    # "children":[Landroid/view/View;
    .end local v8    # "childrenCount":I
    .end local v9    # "customOrder":Z
    .end local v14    # "i":I
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_7
    :goto_8
    if-eqz v11, :cond_10

    .line 1799
    iget-object v5, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 1802
    .restart local v5    # "child":Landroid/view/View;
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v4, v0, :cond_e

    .line 1804
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1820
    :goto_9
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v18, v0

    .line 1821
    .local v18, "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1822
    move-object/from16 v11, v18

    .line 1823
    goto :goto_8

    .line 1743
    .end local v18    # "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v6    # "childIndex":I
    .restart local v7    # "children":[Landroid/view/View;
    .restart local v8    # "childrenCount":I
    .restart local v9    # "customOrder":Z
    .restart local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v14    # "i":I
    .restart local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v19    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .restart local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_8
    iget-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-ne v0, v5, :cond_a

    .line 1744
    if-eqz v19, :cond_9

    .line 1745
    iget-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1749
    :goto_a
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1750
    const/16 v21, 0x1

    .line 1751
    .restart local v21    # "wasHovered":Z
    goto :goto_5

    .line 1747
    .end local v21    # "wasHovered":Z
    :cond_9
    iget-object v11, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_a

    .line 1754
    :cond_a
    move-object/from16 v19, v13

    .line 1755
    iget-object v13, v13, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_4

    .line 1762
    .restart local v21    # "wasHovered":Z
    :cond_b
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_6

    .line 1773
    :cond_c
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_5

    .line 1774
    if-nez v21, :cond_d

    .line 1776
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1777
    const/16 v24, 0x9

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1778
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1780
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1782
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    goto :goto_7

    .line 1786
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v24

    or-int v12, v12, v24

    goto :goto_7

    .line 1809
    .end local v6    # "childIndex":I
    .end local v7    # "children":[Landroid/view/View;
    .end local v8    # "childrenCount":I
    .end local v9    # "customOrder":Z
    .end local v13    # "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v14    # "i":I
    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v19    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v21    # "wasHovered":Z
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_e
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_f

    .line 1810
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1813
    :cond_f
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1814
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1815
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1817
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_9

    .line 1826
    .end local v5    # "child":Landroid/view/View;
    :cond_10
    if-nez v12, :cond_13

    const/16 v17, 0x1

    .line 1827
    .local v17, "newHoveredSelf":Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v24, v0

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 1828
    if-eqz v17, :cond_11

    .line 1830
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1872
    :cond_11
    :goto_c
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_12

    .line 1873
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 1877
    :cond_12
    return v12

    .line 1826
    .end local v17    # "newHoveredSelf":Z
    :cond_13
    const/16 v17, 0x0

    goto :goto_b

    .line 1833
    .restart local v17    # "newHoveredSelf":Z
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v24, v0

    if-eqz v24, :cond_15

    .line 1835
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v4, v0, :cond_16

    .line 1837
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1849
    :goto_d
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 1852
    :cond_15
    if-eqz v17, :cond_11

    .line 1854
    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_18

    .line 1856
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1857
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_c

    .line 1841
    :cond_16
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_17

    .line 1842
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1844
    :cond_17
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1845
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1846
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1847
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_d

    .line 1858
    :cond_18
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_11

    .line 1860
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1861
    const/16 v24, 0x9

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1862
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1863
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1865
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    or-int v12, v12, v24

    .line 1866
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto/16 :goto_c
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1630
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1631
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1634
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1636
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1649
    :cond_1
    :goto_0
    return v0

    .line 1639
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1641
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1646
    :cond_3
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 1647
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1649
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1615
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1617
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1622
    :goto_0
    return v0

    .line 1618
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1620
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1622
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1657
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1659
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1664
    :goto_0
    return v0

    .line 1660
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1662
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1664
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2876
    const/4 v3, 0x0

    .line 2877
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2878
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    .line 2879
    if-eqz v3, :cond_0

    move v5, v3

    .line 2899
    :goto_0
    return v5

    .line 2884
    :cond_0
    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v2

    .line 2886
    .local v2, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    .line 2887
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 2888
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2889
    .local v0, "child":Landroid/view/View;
    iget v5, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_1

    .line 2890
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2891
    if-eqz v3, :cond_1

    .line 2897
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    move v5, v3

    goto :goto_0

    .line 2887
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2897
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2899
    const/4 v5, 0x0

    goto :goto_0

    .line 2897
    .end local v1    # "childCount":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v5
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 17
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    .line 2908
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 2909
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAssistBlocked()Z

    move-result v14

    if-nez v14, :cond_8

    .line 2910
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v14

    if-nez v14, :cond_8

    .line 2911
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 2912
    .local v4, "childrenCount":I
    if-lez v4, :cond_8

    .line 2913
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 2914
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v12

    .line 2915
    .local v12, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v6, 0x1

    .line 2917
    .local v6, "customOrder":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2918
    .local v3, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_8

    .line 2921
    if-eqz v6, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2966
    .local v2, "childIndex":I
    :cond_0
    :goto_2
    if-nez v12, :cond_7

    aget-object v1, v3, v2

    .line 2968
    .local v1, "child":Landroid/view/View;
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v5

    .line 2969
    .local v5, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v1, v5}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 2918
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2915
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childIndex":I
    .end local v3    # "children":[Landroid/view/View;
    .end local v5    # "cstructure":Landroid/view/ViewStructure;
    .end local v6    # "customOrder":Z
    .end local v8    # "i":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .restart local v3    # "children":[Landroid/view/View;
    .restart local v6    # "customOrder":Z
    .restart local v8    # "i":I
    :cond_2
    move v2, v8

    .line 2921
    goto :goto_2

    .line 2922
    :catch_0
    move-exception v7

    .line 2923
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    move v2, v8

    .line 2924
    .restart local v2    # "childIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v15, 0x17

    if-ge v14, v15, :cond_6

    .line 2926
    const-string v14, "ViewGroup"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad getChildDrawingOrder while collecting assist @ "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2931
    const/4 v6, 0x0

    .line 2932
    if-lez v8, :cond_0

    .line 2939
    new-array v11, v4, [I

    .line 2940
    .local v11, "permutation":[I
    new-instance v13, Landroid/util/SparseBooleanArray;

    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2942
    .local v13, "usedIndices":Landroid/util/SparseBooleanArray;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_4
    if-ge v9, v8, :cond_3

    .line 2943
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v14

    aput v14, v11, v9

    .line 2944
    aget v14, v11, v9

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2942
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2948
    :cond_3
    const/4 v10, 0x0

    .line 2949
    .local v10, "nextIndex":I
    move v9, v8

    :goto_5
    if-ge v9, v4, :cond_5

    .line 2950
    :goto_6
    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2951
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2953
    :cond_4
    aput v10, v11, v9

    .line 2954
    add-int/lit8 v10, v10, 0x1

    .line 2949
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2957
    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2958
    .restart local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x0

    :goto_7
    if-ge v9, v4, :cond_0

    .line 2959
    aget v14, v11, v9

    aget-object v14, v3, v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2958
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2963
    .end local v9    # "j":I
    .end local v10    # "nextIndex":I
    .end local v11    # "permutation":[I
    .end local v13    # "usedIndices":Landroid/util/SparseBooleanArray;
    :cond_6
    throw v7

    .line 2966
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v1, v14

    goto/16 :goto_3

    .line 2974
    .end local v2    # "childIndex":I
    .end local v3    # "children":[Landroid/view/View;
    .end local v4    # "childrenCount":I
    .end local v6    # "customOrder":Z
    .end local v8    # "i":I
    .end local v12    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_8
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x20000000

    .line 3129
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3130
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3131
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3132
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3133
    aget-object v0, v1, v3

    .line 3134
    .local v0, "c":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 3135
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3132
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3138
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x20000000

    .line 3101
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3102
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3103
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3104
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3105
    aget-object v0, v1, v3

    .line 3106
    .local v0, "c":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 3107
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3104
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3110
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 4
    .param p1, "screenState"    # I

    .prologue
    .line 2864
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2866
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2867
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2868
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2869
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2868
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2871
    :cond_0
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4
    .param p1, "activated"    # Z

    .prologue
    .line 3722
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3723
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3724
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3725
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 3724
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3727
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5
    .param p1, "pressed"    # Z

    .prologue
    .line 3731
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3732
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3733
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3734
    aget-object v0, v1, v3

    .line 3738
    .local v0, "child":Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3739
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 3733
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3742
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .prologue
    .line 3710
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3711
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3712
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3713
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 3712
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3715
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .prologue
    .line 2815
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2816
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2817
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2818
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2819
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2818
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2821
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .param p1, "visible"    # I

    .prologue
    .line 1587
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1589
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1590
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1591
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1592
    aget-object v0, v1, v3

    .line 1593
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1591
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1595
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3149
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3150
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 2085
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v31

    if-eqz v31, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAccessibilityFocusedViewOrHost()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 2086
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2089
    :cond_1
    const/16 v17, 0x0

    .line 2090
    .local v17, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v31

    if-eqz v31, :cond_22

    .line 2091
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2092
    .local v4, "action":I
    and-int/lit16 v6, v4, 0xff

    .line 2095
    .local v6, "actionMasked":I
    if-nez v6, :cond_2

    .line 2099
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2100
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2105
    :cond_2
    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_b

    .line 2107
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v31, v0

    const/high16 v32, 0x80000

    and-int v31, v31, v32

    if-eqz v31, :cond_9

    const/16 v16, 0x1

    .line 2108
    .local v16, "disallowIntercept":Z
    :goto_0
    if-nez v16, :cond_a

    .line 2109
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    .line 2110
    .local v21, "intercepted":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2122
    .end local v16    # "disallowIntercept":Z
    :goto_1
    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_5

    .line 2123
    :cond_4
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2127
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v31

    if-nez v31, :cond_6

    const/16 v31, 0x3

    move/from16 v0, v31

    if-ne v6, v0, :cond_c

    :cond_6
    const/4 v9, 0x1

    .line 2131
    .local v9, "canceled":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v31, v0

    const/high16 v32, 0x200000

    and-int v31, v31, v32

    if-eqz v31, :cond_d

    const/16 v27, 0x1

    .line 2132
    .local v27, "split":Z
    :goto_3
    const/16 v23, 0x0

    .line 2133
    .local v23, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    .line 2134
    .local v7, "alreadyDispatchedToNewTouchTarget":Z
    if-nez v9, :cond_1f

    if-nez v21, :cond_1f

    .line 2141
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v31

    if-eqz v31, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    move-result-object v12

    .line 2144
    .local v12, "childWithAccessibilityFocus":Landroid/view/View;
    :goto_4
    if-eqz v6, :cond_8

    if-eqz v27, :cond_7

    const/16 v31, 0x5

    move/from16 v0, v31

    if-eq v6, v0, :cond_8

    :cond_7
    const/16 v31, 0x7

    move/from16 v0, v31

    if-ne v6, v0, :cond_1f

    .line 2147
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2148
    .local v5, "actionIndex":I
    if-eqz v27, :cond_f

    const/16 v31, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v32

    shl-int v19, v31, v32

    .line 2153
    .local v19, "idBitsToAssign":I
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 2155
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2156
    .local v14, "childrenCount":I
    if-nez v23, :cond_18

    if-eqz v14, :cond_18

    .line 2157
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    .line 2158
    .local v29, "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v30

    .line 2161
    .local v30, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v26

    .line 2162
    .local v26, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v26, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v31

    if-eqz v31, :cond_10

    const/4 v15, 0x1

    .line 2164
    .local v15, "customOrder":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2165
    .local v13, "children":[Landroid/view/View;
    add-int/lit8 v18, v14, -0x1

    .local v18, "i":I
    :goto_7
    if-ltz v18, :cond_17

    .line 2166
    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v11

    .line 2168
    .local v11, "childIndex":I
    :goto_8
    if-nez v26, :cond_12

    aget-object v10, v13, v11

    .line 2175
    .local v10, "child":Landroid/view/View;
    :goto_9
    if-eqz v12, :cond_14

    .line 2176
    if-eq v12, v10, :cond_13

    .line 2165
    :goto_a
    add-int/lit8 v18, v18, -0x1

    goto :goto_7

    .line 2107
    .end local v5    # "actionIndex":I
    .end local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v9    # "canceled":Z
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v13    # "children":[Landroid/view/View;
    .end local v14    # "childrenCount":I
    .end local v15    # "customOrder":Z
    .end local v18    # "i":I
    .end local v19    # "idBitsToAssign":I
    .end local v21    # "intercepted":Z
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v27    # "split":Z
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2112
    .restart local v16    # "disallowIntercept":Z
    :cond_a
    const/16 v21, 0x0

    .restart local v21    # "intercepted":Z
    goto/16 :goto_1

    .line 2117
    .end local v16    # "disallowIntercept":Z
    .end local v21    # "intercepted":Z
    :cond_b
    const/16 v21, 0x1

    .restart local v21    # "intercepted":Z
    goto/16 :goto_1

    .line 2127
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 2131
    .restart local v9    # "canceled":Z
    :cond_d
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 2141
    .restart local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v27    # "split":Z
    :cond_e
    const/4 v12, 0x0

    goto :goto_4

    .line 2148
    .restart local v5    # "actionIndex":I
    .restart local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    :cond_f
    const/16 v19, -0x1

    goto :goto_5

    .line 2162
    .restart local v14    # "childrenCount":I
    .restart local v19    # "idBitsToAssign":I
    .restart local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "x":F
    .restart local v30    # "y":F
    :cond_10
    const/4 v15, 0x0

    goto :goto_6

    .restart local v13    # "children":[Landroid/view/View;
    .restart local v15    # "customOrder":Z
    .restart local v18    # "i":I
    :cond_11
    move/from16 v11, v18

    .line 2166
    goto :goto_8

    .line 2168
    .restart local v11    # "childIndex":I
    :cond_12
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    move-object/from16 v10, v31

    goto :goto_9

    .line 2179
    .restart local v10    # "child":Landroid/view/View;
    :cond_13
    const/4 v12, 0x0

    .line 2180
    add-int/lit8 v18, v14, -0x1

    .line 2183
    :cond_14
    invoke-static {v10}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v31

    if-eqz v31, :cond_15

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v31

    if-nez v31, :cond_16

    .line 2185
    :cond_15
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    goto :goto_a

    .line 2189
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v23

    .line 2190
    if-eqz v23, :cond_19

    .line 2193
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v31, v0

    or-int v31, v31, v19

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2223
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    :cond_17
    :goto_b
    if-eqz v26, :cond_18

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 2226
    .end local v13    # "children":[Landroid/view/View;
    .end local v15    # "customOrder":Z
    .end local v18    # "i":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_18
    if-nez v23, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1f

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v23, v0

    .line 2230
    :goto_c
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1e

    .line 2231
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v23, v0

    goto :goto_c

    .line 2197
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v13    # "children":[Landroid/view/View;
    .restart local v15    # "customOrder":Z
    .restart local v18    # "i":I
    .restart local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "x":F
    .restart local v30    # "y":F
    :cond_19
    invoke-static {v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2198
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 2200
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 2201
    if-eqz v26, :cond_1c

    .line 2203
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_d
    move/from16 v0, v22

    if-ge v0, v14, :cond_1a

    .line 2204
    aget-object v31, v13, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object/from16 v32, v0

    aget-object v32, v32, v22

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_1b

    .line 2205
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2212
    .end local v22    # "j":I
    :cond_1a
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 2213
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 2214
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v10, v1}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v23

    .line 2215
    const/4 v7, 0x1

    .line 2216
    goto :goto_b

    .line 2203
    .restart local v22    # "j":I
    :cond_1b
    add-int/lit8 v22, v22, 0x1

    goto :goto_d

    .line 2210
    .end local v22    # "j":I
    :cond_1c
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_e

    .line 2221
    :cond_1d
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    goto/16 :goto_a

    .line 2233
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v13    # "children":[Landroid/view/View;
    .end local v15    # "customOrder":Z
    .end local v18    # "i":I
    .end local v26    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_1e
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v31, v0

    or-int v31, v31, v19

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2239
    .end local v5    # "actionIndex":I
    .end local v12    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v14    # "childrenCount":I
    .end local v19    # "idBitsToAssign":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v31, v0

    if-nez v31, :cond_24

    .line 2241
    const/16 v31, 0x0

    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v17

    .line 2276
    :cond_20
    if-nez v9, :cond_21

    const/16 v31, 0x1

    move/from16 v0, v31

    if-eq v6, v0, :cond_21

    const/16 v31, 0x7

    move/from16 v0, v31

    if-ne v6, v0, :cond_2b

    .line 2279
    :cond_21
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2287
    .end local v4    # "action":I
    .end local v6    # "actionMasked":I
    .end local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v9    # "canceled":Z
    .end local v21    # "intercepted":Z
    .end local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v27    # "split":Z
    :cond_22
    :goto_f
    if-nez v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    if-eqz v31, :cond_23

    .line 2288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2290
    :cond_23
    return v17

    .line 2246
    .restart local v4    # "action":I
    .restart local v6    # "actionMasked":I
    .restart local v7    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v9    # "canceled":Z
    .restart local v21    # "intercepted":Z
    .restart local v23    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v27    # "split":Z
    :cond_24
    const/16 v25, 0x0

    .line 2247
    .local v25, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v28, v0

    .line 2248
    .local v28, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_10
    if-eqz v28, :cond_20

    .line 2249
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v24, v0

    .line 2250
    .local v24, "next":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_26

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_26

    .line 2251
    const/16 v17, 0x1

    .line 2270
    :cond_25
    move-object/from16 v25, v28

    .line 2271
    move-object/from16 v28, v24

    .line 2272
    goto :goto_10

    .line 2253
    :cond_26
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v31

    if-nez v31, :cond_27

    if-eqz v21, :cond_29

    :cond_27
    const/4 v8, 0x1

    .line 2255
    .local v8, "cancelChild":Z
    :goto_11
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v31

    if-eqz v31, :cond_28

    .line 2257
    const/16 v17, 0x1

    .line 2259
    :cond_28
    if-eqz v8, :cond_25

    .line 2260
    if-nez v25, :cond_2a

    .line 2261
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2265
    :goto_12
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2266
    move-object/from16 v28, v24

    .line 2267
    goto :goto_10

    .line 2253
    .end local v8    # "cancelChild":Z
    :cond_29
    const/4 v8, 0x0

    goto :goto_11

    .line 2263
    .restart local v8    # "cancelChild":Z
    :cond_2a
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_12

    .line 2280
    .end local v8    # "cancelChild":Z
    .end local v24    # "next":Landroid/view/ViewGroup$TouchTarget;
    .end local v25    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .end local v28    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_2b
    if-eqz v27, :cond_22

    const/16 v31, 0x6

    move/from16 v0, v31

    if-ne v6, v0, :cond_22

    .line 2281
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2282
    .restart local v5    # "actionIndex":I
    const/16 v31, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v32

    shl-int v20, v31, v32

    .line 2283
    .local v20, "idBitsToRemove":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto/16 :goto_f
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1672
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1673
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 1676
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1678
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1691
    :cond_1
    :goto_0
    return v0

    .line 1681
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1683
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1688
    :cond_3
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 1689
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1691
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 951
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4210
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 4211
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 4212
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 4214
    :cond_0
    return-void
.end method

.method dispatchViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4226
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 4227
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 4228
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 4230
    :cond_0
    return-void
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1293
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1294
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1295
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1296
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1297
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1299
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1201
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1202
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1203
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1204
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1205
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1207
    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4
    .param p1, "visible"    # I

    .prologue
    .line 1575
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1577
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1578
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1579
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1580
    aget-object v0, v1, v3

    .line 1581
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1579
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1583
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 1306
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1307
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1308
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1309
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1310
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1312
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3617
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 6303
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 6305
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 6306
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    .line 6307
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6311
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6312
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6314
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 6315
    aget-object v0, v1, v3

    .line 6316
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 6317
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 6314
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6321
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 7791
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7793
    const-string v2, "focus:descendantFocusability"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7794
    const-string v2, "drawing:clipChildren"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7795
    const-string v2, "drawing:clipToPadding"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7796
    const-string v2, "drawing:childrenDrawingOrderEnabled"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7797
    const-string v2, "drawing:persistentDrawingCache"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7799
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7800
    .local v1, "n":I
    const-string v2, "meta:__childCount__"

    int-to-short v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    .line 7801
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 7802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "meta:__child__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 7803
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 7801
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7805
    :cond_0
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6162
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 6163
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6164
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6165
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6166
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6167
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6169
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6178
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6181
    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-void

    .line 6171
    .restart local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 6172
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6174
    :cond_3
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 6175
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    .end local p0    # "this":Landroid/view/ViewGroup;
    :goto_0
    return-object p0

    .line 1049
    .restart local p0    # "this":Landroid/view/ViewGroup;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 1052
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outLocalPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 1541
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1542
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1543
    .local v1, "children":[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1544
    aget-object v0, v1, v3

    .line 1545
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1543
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1549
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1553
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findNamedViews(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6738
    .local p1, "namedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewGroup;->mGhostView:Landroid/view/GhostView;

    if-nez v3, :cond_1

    .line 6747
    :cond_0
    return-void

    .line 6741
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 6742
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6743
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6744
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6745
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 6743
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 7
    .param p1, "accessibilityId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1174
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 1175
    .local v3, "foundView":Landroid/view/View;
    if-eqz v3, :cond_1

    move-object v5, v3

    .line 1193
    :cond_0
    :goto_0
    return-object v5

    .line 1179
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1183
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1184
    .local v2, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1185
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 1186
    aget-object v0, v1, v4

    .line 1187
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 1188
    if-eqz v3, :cond_2

    move-object v5, v3

    .line 1189
    goto :goto_0

    .line 1185
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3893
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3912
    .end local p0    # "this":Landroid/view/ViewGroup;
    :goto_0
    return-object p0

    .line 3897
    .restart local p0    # "this":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3898
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3900
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3901
    aget-object v2, v3, v0

    .line 3903
    .local v2, "v":Landroid/view/View;
    if-eq v2, p2, :cond_1

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3904
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3906
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3907
    goto :goto_0

    .line 3900
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3912
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 3839
    iget v4, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v4, :cond_0

    .line 3858
    .end local p0    # "this":Landroid/view/ViewGroup;
    :goto_0
    return-object p0

    .line 3843
    .restart local p0    # "this":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3844
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3846
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3847
    aget-object v2, v3, v0

    .line 3849
    .local v2, "v":Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3850
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3852
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3853
    goto :goto_0

    .line 3846
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3858
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3866
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3885
    .end local p0    # "this":Landroid/view/ViewGroup;
    :goto_0
    return-object p0

    .line 3870
    .restart local p0    # "this":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3871
    .local v3, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3873
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3874
    aget-object v2, v3, v0

    .line 3876
    .local v2, "v":Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3877
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3879
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3880
    goto :goto_0

    .line 3873
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3885
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1159
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1160
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1161
    .local v2, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1162
    .local v1, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1163
    aget-object v0, v1, v3

    .line 1164
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 1166
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1162
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1169
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/high16 v2, 0x10000

    .line 6093
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6094
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 6095
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6096
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6098
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 6099
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6102
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 6103
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6107
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6108
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 6111
    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 6112
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 6115
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 6117
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6119
    :cond_3
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 850
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 858
    :goto_0
    return-object v0

    .line 855
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 749
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_2

    .line 762
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 764
    :cond_2
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 6244
    iget v8, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x200

    if-nez v8, :cond_0

    move v4, v7

    .line 6245
    .local v4, "meOpaque":Z
    :goto_0
    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 6261
    :goto_1
    return v7

    .end local v4    # "meOpaque":Z
    :cond_0
    move v4, v6

    .line 6244
    goto :goto_0

    .line 6249
    .restart local v4    # "meOpaque":Z
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 6250
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6251
    .local v1, "children":[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6252
    .local v2, "count":I
    const/4 v5, 0x1

    .line 6253
    .local v5, "noneOfTheChildrenAreTransparent":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 6254
    aget-object v0, v1, v3

    .line 6255
    .local v0, "child":Landroid/view/View;
    iget v8, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 6256
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 6257
    const/4 v5, 0x0

    .line 6253
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6261
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v6, v7

    :cond_6
    move v7, v6

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 5816
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5787
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 5805
    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2998
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5886
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_1

    .line 5887
    :cond_0
    const/4 v0, 0x0

    .line 5889
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 5875
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 3505
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 3824
    const/4 v0, 0x0

    return v0
.end method

.method getChildTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .prologue
    .line 3828
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_0

    .line 3829
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 3831
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 5381
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v7, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5382
    .local v4, "rect":Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v4, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5384
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_0

    .line 5385
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5388
    :cond_0
    iget v7, p1, Landroid/view/View;->mLeft:I

    iget v8, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int v0, v7, v8

    .line 5389
    .local v0, "dx":I
    iget v7, p1, Landroid/view/View;->mTop:I

    iget v8, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int v1, v7, v8

    .line 5391
    .local v1, "dy":I
    int-to-float v7, v0

    int-to-float v8, v1

    invoke-virtual {v4, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 5393
    if-eqz p3, :cond_2

    .line 5394
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_1

    .line 5395
    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v7, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 5397
    .local v3, "position":[F
    :goto_1
    const/4 v7, 0x0

    iget v8, p3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v3, v7

    .line 5398
    const/4 v7, 0x1

    iget v8, p3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aput v8, v3, v7

    .line 5399
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 5400
    const/4 v7, 0x0

    aget v7, v3, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p3, Landroid/graphics/Point;->x:I

    .line 5401
    const/4 v7, 0x1

    aget v7, v3, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p3, Landroid/graphics/Point;->y:I

    .line 5403
    .end local v3    # "position":[F
    :cond_1
    iget v7, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v0

    iput v7, p3, Landroid/graphics/Point;->x:I

    .line 5404
    iget v7, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v1

    iput v7, p3, Landroid/graphics/Point;->y:I

    .line 5407
    :cond_2
    iget v7, p0, Landroid/view/ViewGroup;->mRight:I

    iget v8, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int v6, v7, v8

    .line 5408
    .local v6, "width":I
    iget v7, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v8, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int v2, v7, v8

    .line 5410
    .local v2, "height":I
    const/4 v5, 0x1

    .line 5411
    .local v5, "rectIsVisible":Z
    iget-object v7, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5414
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    int-to-float v9, v6

    int-to-float v10, v2

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 5417
    :cond_4
    if-eqz v5, :cond_5

    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    const/16 v8, 0x22

    if-ne v7, v8, :cond_5

    .line 5419
    iget v7, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    int-to-float v7, v7

    iget v8, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    int-to-float v8, v8

    iget v9, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int v9, v6, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int v10, v2, v10

    int-to-float v10, v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 5423
    :cond_5
    if-eqz v5, :cond_6

    iget-object v7, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_6

    .line 5425
    iget-object v7, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget-object v10, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 5428
    :cond_6
    iget v7, v4, Landroid/graphics/RectF;->left:F

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v4, Landroid/graphics/RectF;->right:F

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 5430
    if-eqz v5, :cond_7

    iget-object v7, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v7, :cond_7

    .line 5431
    iget-object v7, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v7, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    .line 5433
    :cond_7
    return v5

    .line 5381
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "height":I
    .end local v4    # "rect":Landroid/graphics/RectF;
    .end local v5    # "rectIsVisible":Z
    .end local v6    # "width":I
    :cond_8
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    goto/16 :goto_0

    .line 5395
    .restart local v0    # "dx":I
    .restart local v1    # "dy":I
    .restart local v4    # "rect":Landroid/graphics/RectF;
    :cond_9
    const/4 v7, 0x2

    new-array v3, v7, [F

    goto/16 :goto_1
.end method

.method public getClipChildren()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 3645
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipToPadding()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 3702
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    return v0
.end method

.method getDeepestFocusedChild()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1013
    move-object v0, p0

    .line 1014
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 1015
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    .end local v0    # "v":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1018
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .restart local v0    # "v":Landroid/view/View;
    :goto_2
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 1020
    goto :goto_1
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 681
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 5510
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 6298
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 3

    .prologue
    .line 5752
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 5753
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    .line 5755
    .local v0, "inheritedLayoutMode":I
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 5757
    .end local v0    # "inheritedLayoutMode":I
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v1

    .line 5753
    :cond_1
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    goto :goto_0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 4680
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 6711
    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return v0
.end method

.method public getOverlay()Landroid/view/ViewGroupOverlay;
    .locals 2

    .prologue
    .line 3484
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_0

    .line 3485
    new-instance v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    .line 3487
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    return-object v0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 5689
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 3622
    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    .line 3626
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x22

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 3627
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3628
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 3629
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 3630
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 3631
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3633
    :cond_0
    return-void

    .line 3626
    .end local v0    # "clipToPadding":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchscreenBlocksFocus()Z
    .locals 2

    .prologue
    .line 1149
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransientView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4048
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4049
    :cond_0
    const/4 v0, 0x0

    .line 4051
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getTransientViewCount()I
    .locals 1

    .prologue
    .line 4015
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTransientViewIndex(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4030
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4031
    :cond_0
    const/4 v0, -0x1

    .line 4033
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 711
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 715
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 716
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1030
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1060
    iget v7, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return v5

    .line 1064
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 1065
    goto :goto_0

    .line 1068
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 1069
    .local v3, "descendantFocusability":I
    const/high16 v7, 0x60000

    if-eq v3, v7, :cond_0

    .line 1070
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1071
    .local v2, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1073
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 1074
    aget-object v0, v1, v4

    .line 1075
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 1076
    goto :goto_0

    .line 1073
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransientState()Z
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5858
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5859
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5860
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5861
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 5865
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 5860
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5865
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected internalSetPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3087
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 3089
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3090
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3094
    :goto_0
    return-void

    .line 3092
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 23
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 5008
    move-object/from16 v13, p0

    .line 5010
    .local v13, "parent":Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5011
    .local v5, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v5, :cond_9

    .line 5015
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x40

    const/16 v19, 0x40

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/4 v8, 0x1

    .line 5021
    .local v8, "drawAnimation":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 5022
    .local v7, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v18

    if-eqz v18, :cond_b

    if-nez v8, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v18

    if-nez v18, :cond_b

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-eqz v18, :cond_b

    const/4 v9, 0x1

    .line 5026
    .local v9, "isOpaque":Z
    :goto_1
    if-eqz v9, :cond_c

    const/high16 v12, 0x400000

    .line 5028
    .local v12, "opaqueFlag":I
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 5029
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v18, v0

    const/high16 v19, -0x80000000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5030
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v18, v0

    const v19, -0x8001

    and-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5033
    :cond_0
    iget-object v10, v5, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 5034
    .local v10, "location":[I
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v19, v0

    aput v19, v10, v18

    .line 5035
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v19, v0

    aput v19, v10, v18

    .line 5036
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 5038
    :cond_1
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5039
    .local v6, "boundingRect":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5041
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 5042
    iget-object v14, v5, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 5043
    .local v14, "t":Landroid/view/animation/Transformation;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v16

    .line 5044
    .local v16, "transformed":Z
    if-eqz v16, :cond_d

    .line 5045
    iget-object v15, v5, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 5046
    .local v15, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v14}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 5047
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-nez v18, :cond_2

    .line 5048
    invoke-virtual {v15, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 5056
    .end local v14    # "t":Landroid/view/animation/Transformation;
    .end local v16    # "transformed":Z
    :cond_2
    :goto_3
    invoke-virtual {v15, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5057
    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5064
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v15    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_3
    const/16 v17, 0x0

    .line 5065
    .local v17, "view":Landroid/view/View;
    instance-of v0, v13, Landroid/view/View;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v17, v13

    .line 5066
    check-cast v17, Landroid/view/View;

    .line 5069
    :cond_4
    if-eqz v8, :cond_5

    .line 5070
    if-eqz v17, :cond_f

    .line 5071
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x40

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 5079
    :cond_5
    :goto_4
    if-eqz v17, :cond_7

    .line 5080
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x3000

    move/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getSolidColor()I

    move-result v18

    if-nez v18, :cond_6

    .line 5082
    const/high16 v12, 0x200000

    .line 5084
    :cond_6
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const/high16 v19, 0x600000

    and-int v18, v18, v19

    const/high16 v19, 0x200000

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 5085
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const v19, -0x600001

    and-int v18, v18, v19

    or-int v18, v18, v12

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 5089
    :cond_7
    move-object/from16 v0, p2

    invoke-interface {v13, v10, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v13

    .line 5090
    if-eqz v17, :cond_8

    .line 5092
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    .line 5093
    .local v11, "m":Landroid/graphics/Matrix;
    invoke-virtual {v11}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-nez v18, :cond_8

    .line 5094
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5095
    .restart local v6    # "boundingRect":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5096
    invoke-virtual {v11, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5097
    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5103
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v11    # "m":Landroid/graphics/Matrix;
    :cond_8
    if-nez v13, :cond_3

    .line 5105
    .end local v7    # "childMatrix":Landroid/graphics/Matrix;
    .end local v8    # "drawAnimation":Z
    .end local v9    # "isOpaque":Z
    .end local v10    # "location":[I
    .end local v12    # "opaqueFlag":I
    .end local v17    # "view":Landroid/view/View;
    :cond_9
    return-void

    .line 5015
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 5022
    .restart local v7    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v8    # "drawAnimation":Z
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 5026
    .restart local v9    # "isOpaque":Z
    :cond_c
    const/high16 v12, 0x200000

    goto/16 :goto_2

    .line 5051
    .restart local v6    # "boundingRect":Landroid/graphics/RectF;
    .restart local v10    # "location":[I
    .restart local v12    # "opaqueFlag":I
    .restart local v14    # "t":Landroid/view/animation/Transformation;
    .restart local v16    # "transformed":Z
    :cond_d
    move-object v15, v7

    .restart local v15    # "transformMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_3

    .line 5054
    .end local v14    # "t":Landroid/view/animation/Transformation;
    .end local v15    # "transformMatrix":Landroid/graphics/Matrix;
    .end local v16    # "transformed":Z
    :cond_e
    move-object v15, v7

    .restart local v15    # "transformMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_3

    .line 5072
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v15    # "transformMatrix":Landroid/graphics/Matrix;
    .restart local v17    # "view":Landroid/view/View;
    :cond_f
    instance-of v0, v13, Landroid/view/ViewRootImpl;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v18, v13

    .line 5073
    check-cast v18, Landroid/view/ViewRootImpl;

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto/16 :goto_4
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 8
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const v4, 0x8000

    const/high16 v7, -0x80000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5116
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    .line 5118
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_4

    .line 5120
    aget v2, p1, v5

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 5122
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 5123
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 5126
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 5127
    .local v0, "left":I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 5129
    .local v1, "top":I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_2

    .line 5130
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5131
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 5134
    :cond_2
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5136
    aput v0, p1, v5

    .line 5137
    aput v1, p1, v6

    .line 5139
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v2, :cond_3

    .line 5140
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5143
    :cond_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 5165
    .end local v0    # "left":I
    .end local v1    # "top":I
    :goto_0
    return-object v2

    .line 5146
    :cond_4
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5148
    iget v2, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v2, p1, v5

    .line 5149
    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    aput v2, p1, v6

    .line 5150
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_6

    .line 5151
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 5157
    :goto_1
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v2, :cond_5

    .line 5158
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5161
    :cond_5
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 5154
    :cond_6
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_1

    .line 5165
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method invalidateInheritedLayoutMode(I)V
    .locals 4
    .param p1, "layoutModeOfRoot"    # I

    .prologue
    const/4 v3, -0x1

    .line 5726
    iget v2, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v2, p1, :cond_0

    const/high16 v2, 0x800000

    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5737
    :cond_0
    return-void

    .line 5731
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 5734
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5735
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    .line 5734
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2

    .prologue
    .line 5563
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2

    .prologue
    .line 5528
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 5640
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 5604
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLayoutModeOptical()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3196
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutSuppressed()Z
    .locals 1

    .prologue
    .line 6235
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    return v0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 2622
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2491
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    move-result-object v1

    .line 2492
    .local v1, "point":[F
    aput p1, v1, v4

    .line 2493
    aput p2, v1, v5

    .line 2494
    invoke-virtual {p0, v1, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 2495
    aget v2, v1, v4

    aget v3, v1, v5

    invoke-virtual {p3, v2, v3}, Landroid/view/View;->pointInView(FF)Z

    move-result v0

    .line 2496
    .local v0, "isInView":Z
    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 2497
    aget v2, v1, v4

    aget v3, v1, v5

    invoke-virtual {p4, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2499
    :cond_0
    return v0
.end method

.method public isTransitionGroup()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2638
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 2639
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 2642
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2639
    goto :goto_0

    .line 2641
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 2642
    .local v0, "outlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    sget-object v3, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-eq v0, v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6127
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    .prologue
    .line 6325
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 6326
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6327
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6328
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6329
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 6328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6331
    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 5441
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5442
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 5443
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 5445
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 5450
    :goto_0
    return-void

    .line 5448
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    goto :goto_0
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 4

    .prologue
    .line 1232
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1233
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1234
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1235
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1236
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1238
    :cond_0
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 5923
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 5925
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 5927
    .local v1, "childWidthMeasureSpec":I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 5930
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 5931
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 5950
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5952
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 5955
    .local v1, "childWidthMeasureSpec":I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 5959
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 5960
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 5902
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5903
    .local v3, "size":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5904
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 5905
    aget-object v0, v1, v2

    .line 5906
    .local v0, "child":Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 5907
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 5904
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5910
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method notifyChildOfDrag(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1561
    const/4 v0, 0x0

    .line 1562
    .local v0, "canAccept":Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1563
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1564
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1565
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1566
    iget v1, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1567
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1570
    :cond_0
    return v0
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .prologue
    .line 3005
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3006
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 3015
    :cond_0
    :goto_0
    return-void

    .line 3007
    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 3009
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3010
    :catch_0
    move-exception v0

    .line 3011
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 7
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x0

    .line 5354
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5355
    .local v1, "count":I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5356
    .local v0, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .line 5358
    .local v3, "invalidate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5359
    aget-object v4, v0, v2

    .line 5360
    .local v4, "v":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mTop:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mTop:I

    .line 5361
    iget v5, v4, Landroid/view/View;->mBottom:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mBottom:I

    .line 5362
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v5, :cond_0

    .line 5363
    const/4 v3, 0x1

    .line 5364
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    .line 5358
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5368
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    if-eqz v3, :cond_2

    .line 5369
    invoke-virtual {p0, v6, v6}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 5371
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5372
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 5271
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 5272
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 7
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "offsetFromChildToParent"    # Z
    .param p4, "clipToBounds"    # Z

    .prologue
    const/4 v6, 0x0

    .line 5292
    if-ne p1, p0, :cond_0

    .line 5344
    :goto_0
    return-void

    .line 5296
    :cond_0
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5301
    .local v2, "theParent":Landroid/view/ViewParent;
    :goto_1
    if-eqz v2, :cond_4

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_4

    if-eq v2, p0, :cond_4

    .line 5303
    if-eqz p3, :cond_2

    .line 5304
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 5306
    if-eqz p4, :cond_1

    move-object v1, v2

    .line 5307
    check-cast v1, Landroid/view/View;

    .line 5308
    .local v1, "p":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    .line 5310
    .local v0, "intersected":Z
    if-nez v0, :cond_1

    .line 5311
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .end local v0    # "intersected":Z
    .end local v1    # "p":Landroid/view/View;
    :cond_1
    :goto_2
    move-object p1, v2

    .line 5327
    check-cast p1, Landroid/view/View;

    .line 5328
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1

    .line 5315
    :cond_2
    if-eqz p4, :cond_3

    move-object v1, v2

    .line 5316
    check-cast v1, Landroid/view/View;

    .line 5317
    .restart local v1    # "p":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    .line 5319
    .restart local v0    # "intersected":Z
    if-nez v0, :cond_3

    .line 5320
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 5323
    .end local v0    # "intersected":Z
    .end local v1    # "p":Landroid/view/View;
    :cond_3
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 5333
    :cond_4
    if-ne v2, p0, :cond_6

    .line 5334
    if-eqz p3, :cond_5

    .line 5335
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 5338
    :cond_5
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 5342
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "parameter must be a descendant of this view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 5281
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 5282
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 4249
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4250
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 4251
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    .prologue
    .line 1263
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 1264
    if-nez p3, :cond_2

    .line 1265
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1281
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v0, :cond_1

    .line 1282
    if-nez p3, :cond_1

    .line 1283
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    .line 1286
    :cond_1
    return-void

    .line 1267
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1268
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 1274
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 6335
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_1

    .line 6336
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 6359
    :cond_0
    return-object v4

    .line 6339
    :cond_1
    const/4 v3, 0x0

    .line 6340
    .local v3, "need":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 6341
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 6342
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 6344
    .local v0, "childState":[I
    if-eqz v0, :cond_2

    .line 6345
    array-length v5, v0

    add-int/2addr v3, v5

    .line 6341
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6349
    .end local v0    # "childState":[I
    :cond_3
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 6351
    .local v4, "state":[I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 6352
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 6354
    .restart local v0    # "childState":[I
    if-eqz v0, :cond_4

    .line 6355
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 6351
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v7, 0x3f

    const/16 v6, 0xff

    const/16 v13, 0x8

    .line 3284
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 3288
    .local v1, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3289
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3291
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 3292
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3293
    .local v10, "c":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_0

    .line 3294
    invoke-virtual {v10}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v12

    .line 3296
    .local v12, "insets":Landroid/graphics/Insets;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v12, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v0

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, v12, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, v0

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, v12, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v5, v12, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v5

    add-int/lit8 v5, v0, -0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3291
    .end local v12    # "insets":Landroid/graphics/Insets;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3307
    .end local v10    # "c":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    invoke-static {v7, v6, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3308
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3310
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3315
    const/16 v0, 0x7f

    invoke-static {v7, v0, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3316
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3318
    invoke-direct {p0, v13}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v8

    .line 3319
    .local v8, "lineLength":I
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v9

    .line 3320
    .local v9, "lineWidth":I
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 3321
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3322
    .restart local v10    # "c":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_2

    .line 3323
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v6

    move-object v2, p1

    move-object v7, v1

    invoke-static/range {v2 .. v9}, Landroid/view/ViewGroup;->drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    .line 3320
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3328
    .end local v10    # "c":Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 3274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3275
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3276
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3278
    .end local v0    # "c":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 4255
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4256
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 4257
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2979
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2980
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2994
    :cond_0
    :goto_0
    return-void

    .line 2983
    :cond_1
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    .line 2984
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v4, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 2985
    .local v1, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2986
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 2987
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2988
    .local v2, "childrenForAccessibilityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 2989
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2990
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V

    .line 2988
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2992
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1985
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2726
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 6688
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 6696
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 3040
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 6681
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 6673
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 6650
    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 6651
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2786
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2787
    .local v2, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2788
    const/4 v6, 0x0

    .line 2789
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2790
    .local v5, "increment":I
    move v3, v2

    .line 2796
    .local v3, "end":I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2797
    .local v1, "children":[Landroid/view/View;
    move v4, v6

    .local v4, "i":I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2798
    aget-object v0, v1, v4

    .line 2799
    .local v0, "child":Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 2800
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2801
    const/4 v7, 0x1

    .line 2805
    .end local v0    # "child":Landroid/view/View;
    :goto_2
    return v7

    .line 2792
    .end local v1    # "children":[Landroid/view/View;
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v2, -0x1

    .line 2793
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2794
    .restart local v5    # "increment":I
    const/4 v3, -0x1

    .restart local v3    # "end":I
    goto :goto_0

    .line 2797
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "children":[Landroid/view/View;
    .restart local v4    # "i":I
    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    .line 2805
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 901
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 904
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 916
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6716
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 6642
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6662
    invoke-virtual {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    .line 6663
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 6664
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4223
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4239
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1331
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_0

    .line 1332
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1333
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 1335
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 4743
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 4744
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4745
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4746
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 4762
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4763
    .local v2, "count":I
    if-gtz v2, :cond_1

    .line 4816
    :cond_0
    :goto_0
    return-void

    .line 4767
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4768
    .local v0, "children":[Landroid/view/View;
    iput v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4770
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 4771
    .local v4, "focused":Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_7

    const/4 v3, 0x1

    .line 4772
    .local v3, "detach":Z
    :goto_1
    const/4 v1, 0x0

    .line 4774
    .local v1, "clearChildFocus":Z
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 4776
    add-int/lit8 v5, v2, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_9

    .line 4777
    aget-object v6, v0, v5

    .line 4779
    .local v6, "view":Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_2

    .line 4780
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4783
    :cond_2
    if-ne v6, v4, :cond_3

    .line 4784
    invoke-virtual {v6, v9}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 4785
    const/4 v1, 0x1

    .line 4788
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4790
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 4791
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 4793
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4795
    :cond_4
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4800
    :cond_5
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4801
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4804
    :cond_6
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 4806
    iput-object v9, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4807
    aput-object v9, v0, v5

    .line 4776
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v1    # "clearChildFocus":Z
    .end local v3    # "detach":Z
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_7
    move v3, v7

    .line 4771
    goto :goto_1

    .line 4796
    .restart local v1    # "clearChildFocus":Z
    .restart local v3    # "detach":Z
    .restart local v5    # "i":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_8
    if-eqz v3, :cond_5

    .line 4797
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 4810
    .end local v6    # "view":Landroid/view/View;
    :cond_9
    if-eqz v1, :cond_0

    .line 4811
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 4812
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v7

    if-nez v7, :cond_0

    .line 4813
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 4839
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 4840
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4843
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 4844
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 4847
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4849
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 4850
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 4852
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4854
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4859
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4860
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4863
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 4864
    return-void

    .line 4855
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_4

    .line 4856
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method public removeTransientView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3988
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v2, :cond_1

    .line 4002
    :cond_0
    :goto_0
    return-void

    .line 3991
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 3992
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 3993
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 3994
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3995
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3996
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3997
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3998
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    goto :goto_0

    .line 3992
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4515
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4516
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4517
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4519
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4560
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 4561
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4562
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4563
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4532
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    .line 4533
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 4576
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 4577
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4578
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4579
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 4547
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 4548
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 725
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 733
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 734
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 735
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 738
    :cond_2
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 740
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 865
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    const/high16 v1, 0x80000

    .line 2671
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_2

    .line 2686
    :cond_0
    :goto_1
    return-void

    .line 2671
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2676
    :cond_2
    if-eqz p1, :cond_3

    .line 2677
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2683
    :goto_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2684
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 2679
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_2
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2749
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 2751
    .local v0, "descendantFocusability":I
    sparse-switch v0, :sswitch_data_0

    .line 2763
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2753
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2760
    :cond_0
    :goto_0
    return v1

    .line 2755
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2756
    .local v1, "took":Z
    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2759
    .end local v1    # "took":Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2760
    .restart local v1    # "took":Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2751
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 873
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 874
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_1

    .line 881
    :cond_0
    :goto_0
    return v2

    .line 877
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 878
    .local v1, "propagate":Z
    if-eqz v1, :cond_0

    .line 881
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 6422
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 6423
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 6424
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 6426
    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6268
    if-eqz p1, :cond_0

    .line 6269
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 6270
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 6271
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 6274
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 4

    .prologue
    .line 6613
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 6615
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6616
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6617
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6618
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6619
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 6616
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6622
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 4

    .prologue
    .line 6549
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 6551
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6552
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6553
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6554
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6555
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 6552
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6558
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedPadding()V
    .locals 4

    .prologue
    .line 6597
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 6599
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6600
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6601
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6602
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6603
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedPadding()V

    .line 6600
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6606
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 4

    .prologue
    .line 6581
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 6583
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6584
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6585
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6586
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6587
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 6584
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6590
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 4

    .prologue
    .line 6565
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 6567
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6568
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6569
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6570
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6571
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 6568
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6574
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method resetSubtreeAccessibilityStateChanged()V
    .locals 4

    .prologue
    .line 3019
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3020
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3021
    .local v1, "children":[Landroid/view/View;
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3022
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3023
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3022
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3025
    :cond_0
    return-void
.end method

.method protected resolveDrawables()V
    .locals 4

    .prologue
    .line 6521
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 6522
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6523
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6524
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6525
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->areDrawablesResolved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6526
    invoke-virtual {v0}, Landroid/view/View;->resolveDrawables()V

    .line 6523
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6529
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    .prologue
    .line 6452
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v3

    .line 6453
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 6454
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6455
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6456
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6457
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6458
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 6455
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6462
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public resolveLayoutParams()V
    .locals 3

    .prologue
    .line 6536
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 6537
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6538
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6539
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6540
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutParams()V

    .line 6538
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6542
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 4

    .prologue
    .line 6506
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 6507
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6508
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6509
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6510
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6511
    invoke-virtual {v0}, Landroid/view/View;->resolvePadding()V

    .line 6508
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6514
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .locals 5

    .prologue
    .line 6433
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-result v3

    .line 6435
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 6436
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6437
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6438
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6439
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6440
    invoke-virtual {v0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 6437
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6444
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public resolveTextAlignment()Z
    .locals 5

    .prologue
    .line 6488
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v3

    .line 6489
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 6490
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6491
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6492
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6493
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6494
    invoke-virtual {v0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 6491
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6498
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public resolveTextDirection()Z
    .locals 5

    .prologue
    .line 6470
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v3

    .line 6471
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 6472
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6473
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6474
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6475
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6476
    invoke-virtual {v0}, Landroid/view/View;->resolveTextDirection()Z

    .line 6473
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6480
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .prologue
    .line 5487
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5488
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .param p1, "addsStates"    # Z

    .prologue
    .line 6369
    if-eqz p1, :cond_0

    .line 6370
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6375
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 6376
    return-void

    .line 6372
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "always"    # Z

    .prologue
    .line 5587
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 5588
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5546
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 5547
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 3158
    if-nez p1, :cond_0

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 3159
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3160
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3161
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3162
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 3161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3165
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5657
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 5658
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5625
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 5626
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 5
    .param p1, "clipChildren"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3657
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 3658
    .local v2, "previousValue":Z
    :goto_0
    if-eq p1, v2, :cond_3

    .line 3659
    invoke-direct {p0, v3, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3660
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v4, :cond_2

    .line 3661
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3662
    .local v0, "child":Landroid/view/View;
    iget-object v4, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v4, :cond_0

    .line 3663
    iget-object v4, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v4, p1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 3660
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3657
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "previousValue":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3666
    .restart local v1    # "i":I
    .restart local v2    # "previousValue":Z
    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3668
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 2
    .param p1, "clipToPadding"    # Z

    .prologue
    const/4 v1, 0x2

    .line 3682
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3683
    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3684
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3686
    :cond_0
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .param p1, "focusability"    # I

    .prologue
    .line 693
    sparse-switch p1, :sswitch_data_0

    .line 699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 703
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 704
    return-void

    .line 693
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/animation/LayoutAnimationController;

    .prologue
    .line 5497
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 5498
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 5499
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5501
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 6409
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 6410
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1
    .param p1, "layoutMode"    # I

    .prologue
    .line 5771
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_0

    .line 5772
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    .line 5773
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 5774
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5776
    :cond_0
    return-void

    .line 5773
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 4659
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_0

    .line 4660
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 4661
    .local v0, "previousTransition":Landroid/animation/LayoutTransition;
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 4662
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 4664
    .end local v0    # "previousTransition":Landroid/animation/LayoutTransition;
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 4665
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_1

    .line 4666
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v2, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 4668
    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 2
    .param p1, "split"    # Z

    .prologue
    .line 2610
    if-eqz p1, :cond_0

    .line 2611
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2615
    :goto_0
    return-void

    .line 2613
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 4206
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 4207
    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .param p1, "drawingCacheToKeep"    # I

    .prologue
    .line 5704
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 5705
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 3808
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3809
    return-void
.end method

.method public setTouchscreenBlocksFocus(Z)V
    .locals 4
    .param p1, "touchscreenBlocksFocus"    # Z

    .prologue
    .line 1129
    if-eqz p1, :cond_1

    .line 1130
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1131
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1133
    .local v0, "focusedChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1134
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 1135
    .local v1, "newFocus":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1136
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1143
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "newFocus":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setTransitionGroup(Z)V
    .locals 2
    .param p1, "isTransitionGroup"    # Z

    .prologue
    .line 2658
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2659
    if-eqz p1, :cond_0

    .line 2660
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2664
    :goto_0
    return-void

    .line 2662
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method shouldBlockFocusForTouchscreen()Z
    .locals 2

    .prologue
    .line 1153
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 6634
    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 770
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const v2, -0x10000001

    .line 778
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 781
    :try_start_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 784
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 788
    :goto_0
    return-object v0

    .line 784
    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw v0

    .line 788
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 5
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    const v4, -0x8000001

    .line 798
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    .line 802
    :try_start_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x8000000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 803
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 805
    .local v1, "mode":Landroid/view/ActionMode;
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 807
    sget-object v2, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    if-eq v1, v2, :cond_0

    .line 819
    .end local v1    # "mode":Landroid/view/ActionMode;
    :goto_0
    return-object v1

    .line 805
    :catchall_0
    move-exception v2

    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw v2

    .line 811
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    .line 813
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .line 816
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0

    .line 819
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startLayoutAnimation()V
    .locals 1

    .prologue
    .line 5474
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 5475
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5476
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5478
    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6143
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    .line 6144
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 6145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 6147
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6149
    :cond_1
    return-void
.end method

.method public suppressLayout(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    .prologue
    .line 6217
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 6218
    if-nez p1, :cond_0

    .line 6219
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    if-eqz v0, :cond_0

    .line 6220
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6221
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 6224
    :cond_0
    return-void
.end method

.method public transformPointToViewLocal([FLandroid/view/View;)V
    .locals 4
    .param p1, "point"    # [F
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2506
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 2507
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v3, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 2509
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2510
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2512
    :cond_0
    return-void
.end method

.method unFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 994
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    .line 995
    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 1000
    :goto_0
    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 998
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    goto :goto_0
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 6
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .prologue
    .line 1599
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 1601
    .local v0, "changed":Z
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1602
    .local v3, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1603
    .local v2, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1604
    aget-object v1, v2, v4

    .line 1605
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1603
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1607
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4160
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4163
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_1

    .line 4164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4166
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4167
    return-void
.end method
