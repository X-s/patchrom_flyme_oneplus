.class public Lcom/oneplus/gallery2/widget/FastScrollBar;
.super Landroid/widget/LinearLayout;
.source "FastScrollBar.java"

# interfaces
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;
    }
.end annotation


# static fields
.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field private static final HANDLE_FADE_IN_ANIMATION_DURATION:I = 0x64

.field private static final HANDLE_FADE_OUT_ANIMATION_DURATION:I = 0x1f4

.field private static final HANDLE_HIDE_DELAY:I = 0x3e8

.field private static final INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOULD_OF_SCROLLBY_OFFSET_Y:I = 0x5dc


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_GridViewColumns:I

.field private m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

.field private m_GroupHeight:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_GroupedRows:I

.field private m_HeaderGroup:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_HeaderHeight:I

.field private final m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;

.field private m_HideThumbAnimator:Landroid/animation/AnimatorSet;

.field private m_IsScrollBarThumbGrabbed:Z

.field private m_ItemHeight:I

.field private m_LastTouchY:F

.field private m_PaddingBottom:I

.field private m_PaddingLeft:I

.field private m_PaddingRight:I

.field private m_PaddingTop:I

.field private m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private m_ScrollBarDateIndex:Landroid/widget/TextView;

.field private m_ScrollBarHandlePosition:I

.field private m_ScrollBarThumb:Landroid/widget/ImageButton;

.field private final m_ScrollListener:Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;

.field public m_ScrollOffsetY:I

.field private m_ThumbPositionOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    const-class v0, Lcom/oneplus/gallery2/widget/FastScrollBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideThumbAnimator:Landroid/animation/AnimatorSet;

    .line 49
    new-instance v0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;-><init>(Lcom/oneplus/gallery2/widget/FastScrollBar;Lcom/oneplus/gallery2/widget/FastScrollBar$1;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollListener:Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;

    .line 54
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GroupHeight:Ljava/util/TreeMap;

    .line 55
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HeaderGroup:Ljava/util/TreeMap;

    .line 61
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ThumbPositionOffsetY:F

    .line 376
    new-instance v0, Lcom/oneplus/gallery2/widget/FastScrollBar$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/widget/FastScrollBar$3;-><init>(Lcom/oneplus/gallery2/widget/FastScrollBar;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;

    .line 70
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/widget/FastScrollBar;)Lcom/oneplus/gallery2/GridViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/widget/FastScrollBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;

    .prologue
    .line 34
    iget v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F

    return v0
.end method

.method static synthetic access$1002(Lcom/oneplus/gallery2/widget/FastScrollBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;
    .param p1, "x1"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/widget/FastScrollBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->getViewPortHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery2/widget/FastScrollBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;

    .prologue
    .line 34
    iget v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery2/widget/FastScrollBar;I)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->syncThumbLastTouchY(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery2/widget/FastScrollBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery2/widget/FastScrollBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->showScrollBarThumbInternal()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery2/widget/FastScrollBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->hideHandle()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/widget/FastScrollBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_IsScrollBarThumbGrabbed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/gallery2/widget/FastScrollBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_IsScrollBarThumbGrabbed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/widget/FastScrollBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;

    .prologue
    .line 34
    iget v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ThumbPositionOffsetY:F

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/gallery2/widget/FastScrollBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;
    .param p1, "x1"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ThumbPositionOffsetY:F

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/widget/FastScrollBar;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/widget/FastScrollBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->showOrHideDateIndex(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/oneplus/gallery2/widget/FastScrollBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideThumbAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/widget/FastScrollBar;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/gallery2/widget/FastScrollBar;F)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;
    .param p1, "x1"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setThumbPosition(F)V

    return-void
.end method

.method private calculateRow(I)I
    .locals 2
    .param p1, "itemCount"    # I

    .prologue
    .line 75
    iget v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewColumns:I

    div-int v1, p1, v0

    iget v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewColumns:I

    rem-int v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateViewPortHeight(I)I
    .locals 1
    .param p1, "itemRows"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ItemHeight:I

    mul-int/2addr v0, p1

    return v0
.end method

.method private getValueInRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "min":Ljava/lang/Object;, "TT;"
    .local p2, "max":Ljava/lang/Object;, "TT;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    instance-of v1, p3, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 216
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "min":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    check-cast p3, Ljava/lang/Float;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 217
    .local v0, "minimum":F
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "max":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 221
    .end local v0    # "minimum":F
    :goto_0
    return v1

    .line 220
    .restart local p1    # "min":Ljava/lang/Object;, "TT;"
    .restart local p2    # "max":Ljava/lang/Object;, "TT;"
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "min":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 221
    .local v0, "minimum":I
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "max":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private getViewPortHeight()I
    .locals 5

    .prologue
    .line 528
    iget-object v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    iget v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ItemHeight:I

    iget v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GroupedRows:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HeaderHeight:I

    iget-object v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/GridViewFragment;->getHeaderSize()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 533
    :goto_0
    return v2

    .line 531
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 532
    .local v0, "itemCount":I
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->calculateRow(I)I

    move-result v1

    .line 533
    .local v1, "itemRows":I
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->calculateViewPortHeight(I)I

    move-result v2

    goto :goto_0
.end method

.method private hideHandle()V
    .locals 4

    .prologue
    .line 178
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideThumbAnimator:Landroid/animation/AnimatorSet;

    .line 179
    iget-object v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 180
    .local v0, "scrollbarHandleAlpha":Landroid/animation/Animator;
    sget-object v1, Lcom/oneplus/gallery2/widget/FastScrollBar;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideThumbAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 182
    iget-object v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideThumbAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/gallery2/widget/FastScrollBar$2;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/widget/FastScrollBar$2;-><init>(Lcom/oneplus/gallery2/widget/FastScrollBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    iget-object v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideThumbAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 198
    return-void

    .line 179
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 85
    iput-object p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_Context:Landroid/content/Context;

    .line 86
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setOrientation(I)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setClipChildren(Z)V

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03000c

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    const v2, 0x7f060032

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/widget/FastScrollBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    .line 91
    iget-object v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    new-instance v3, Lcom/oneplus/gallery2/widget/FastScrollBar$1;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery2/widget/FastScrollBar$1;-><init>(Lcom/oneplus/gallery2/widget/FastScrollBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    const v2, 0x7f060031

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/widget/FastScrollBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f05007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_PaddingBottom:I

    .line 115
    const v2, 0x7f05007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_PaddingLeft:I

    .line 116
    const v2, 0x7f05007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_PaddingRight:I

    .line 117
    const v2, 0x7f05007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_PaddingTop:I

    .line 118
    return-void
.end method

.method private isScrollBarNeeded()Z
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->getViewPortHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    if-le v0, v1, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollRecyclerViewToPosition(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 500
    iget-object v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 501
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 502
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 504
    :cond_0
    return-void
.end method

.method private setRecyclerViewPosition(F)V
    .locals 30
    .param p1, "touchY"    # F

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageButton;->getHeight()I

    move-result v28

    sub-int v17, v27, v28

    .line 390
    .local v17, "scrollBarAvailableHeight":I
    const/16 v27, 0x0

    cmpg-float v27, p1, v27

    if-gtz v27, :cond_1

    .line 392
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F

    .line 393
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    move-object/from16 v27, v0

    sget-object v28, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v27 .. v28}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    if-gez v27, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/oneplus/gallery2/GridViewFragment;->setRecyclerViewScrollOffsetY(I)V

    .line 496
    .end local v17    # "scrollBarAvailableHeight":I
    :cond_0
    :goto_0
    return-void

    .line 411
    .restart local v17    # "scrollBarAvailableHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F

    move/from16 v27, v0

    sub-float v26, v27, p1

    .line 416
    .local v26, "yOffset":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v11, v26, v27

    .line 419
    .local v11, "offsetProportion":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F

    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->getViewPortHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    move/from16 v28, v0

    sub-int v24, v27, v28

    .line 423
    .local v24, "viewPortHeight":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v11

    const/high16 v28, -0x40800000    # -1.0f

    mul-float v14, v27, v28

    .line 426
    .local v14, "recyclerOffsetY":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const v28, 0x44bb8000    # 1500.0f

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_9

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F

    move/from16 v27, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v13, v27, v28

    .line 429
    .local v13, "proportion":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    move-object/from16 v27, v0

    sget-object v28, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v27 .. v28}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Boolean;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 431
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v23, v13, v27

    .line 432
    .local v23, "targetViewPortHeight":F
    const/4 v4, 0x0

    .line 433
    .local v4, "accumulateHeight":I
    const-wide/16 v18, 0x0

    .line 434
    .local v18, "targetGroupDateMillies":J
    const/16 v20, 0x0

    .line 435
    .local v20, "targetGroupMediaCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GroupHeight:Ljava/util/TreeMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 437
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Float;>;"
    int-to-float v0, v4

    move/from16 v28, v0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Float;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v27

    add-float v27, v27, v28

    cmpl-float v27, v27, v23

    if-ltz v27, :cond_4

    .line 439
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HeaderGroup:Ljava/util/TreeMap;

    move-object/from16 v27, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 446
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Float;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    move-object/from16 v27, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/oneplus/gallery2/GridViewFragment;->findHeaderInfo(Ljava/lang/Long;)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v6

    .line 447
    .local v6, "headInfo":Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    if-eqz v6, :cond_6

    .line 449
    iget v12, v6, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    .line 450
    .local v12, "position":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HeaderHeight:I

    move/from16 v27, v0

    add-int v4, v4, v27

    .line 451
    int-to-float v0, v4

    move/from16 v27, v0

    cmpg-float v27, v27, v23

    if-gez v27, :cond_3

    .line 453
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->calculateRow(I)I

    move-result v21

    .line 454
    .local v21, "targetGroupRows":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2
    move/from16 v0, v21

    if-gt v7, v0, :cond_3

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ItemHeight:I

    move/from16 v27, v0

    add-int v4, v4, v27

    .line 457
    int-to-float v0, v4

    move/from16 v27, v0

    cmpl-float v27, v27, v23

    if-ltz v27, :cond_5

    .line 459
    add-int/lit8 v27, v7, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewColumns:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    add-int/lit8 v27, v27, 0x1

    add-int v12, v12, v27

    .line 464
    .end local v7    # "i":I
    .end local v21    # "targetGroupRows":I
    :cond_3
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v12, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->scrollRecyclerViewToPosition(II)V

    .line 467
    int-to-float v0, v4

    move/from16 v27, v0

    sub-float v10, v27, v23

    .line 468
    .local v10, "offset":F
    int-to-float v0, v4

    move/from16 v27, v0

    sub-float v27, v27, v10

    move/from16 v0, v27

    float-to-int v4, v0

    .line 469
    mul-int/lit8 v27, v4, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    goto/16 :goto_0

    .line 443
    .end local v6    # "headInfo":Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .end local v10    # "offset":F
    .end local v12    # "position":I
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Float;>;"
    :cond_4
    int-to-float v0, v4

    move/from16 v28, v0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Float;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v27

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v4, v0

    .line 444
    goto/16 :goto_1

    .line 454
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Float;>;"
    .restart local v6    # "headInfo":Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .restart local v7    # "i":I
    .restart local v12    # "position":I
    .restart local v21    # "targetGroupRows":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 472
    .end local v7    # "i":I
    .end local v12    # "position":I
    .end local v21    # "targetGroupRows":I
    :cond_6
    sget-object v27, Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;

    const-string v28, "setRecyclerViewPosition() - Could not found targetGroupDate"

    invoke-static/range {v27 .. v28}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    .end local v4    # "accumulateHeight":I
    .end local v6    # "headInfo":Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v18    # "targetGroupDateMillies":J
    .end local v20    # "targetGroupMediaCount":I
    .end local v23    # "targetViewPortHeight":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    .line 475
    .local v9, "itemCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewColumns:I

    move/from16 v27, v0

    div-int v28, v9, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewColumns:I

    move/from16 v27, v0

    rem-int v27, v9, v27

    if-eqz v27, :cond_8

    const/16 v27, 0x1

    :goto_3
    add-int v16, v28, v27

    .line 476
    .local v16, "rowCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ItemHeight:I

    move/from16 v27, v0

    div-int v25, v17, v27

    .line 477
    .local v25, "visibleRows":I
    sub-int v16, v16, v25

    .line 478
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v13

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 480
    .local v22, "targetRow":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewColumns:I

    move/from16 v27, v0

    mul-int v27, v27, v22

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/widget/FastScrollBar;->scrollRecyclerViewToPosition(II)V

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ItemHeight:I

    move/from16 v27, v0

    mul-int v27, v27, v22

    sub-int v27, v27, v17

    mul-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    .line 484
    sget-object v27, Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "setRecyclerPosition() - offSetY: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " rowCount: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " targetRow: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " proportion:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    .end local v16    # "rowCount":I
    .end local v22    # "targetRow":I
    .end local v25    # "visibleRows":I
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 488
    .end local v9    # "itemCount":I
    .end local v13    # "proportion":F
    :cond_9
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 489
    .local v15, "roundOffsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v1, v15}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 490
    sget-object v27, Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "setRecyclerPosition() - offSetY: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    move/from16 v27, v0

    sub-int v27, v27, v15

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    goto/16 :goto_0
.end method

.method private setThumbPosition(F)V
    .locals 7
    .param p1, "proportion"    # F

    .prologue
    .line 232
    iget-object v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

    .line 233
    .local v0, "handleHeight":I
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    sub-int/2addr v6, v0

    int-to-float v6, v6

    mul-float/2addr v6, p1

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/oneplus/gallery2/widget/FastScrollBar;->getValueInRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 234
    .local v3, "targetY":I
    iget-object v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setY(F)V

    .line 236
    iget-object v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 239
    iget-object v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 240
    .local v1, "indexHeight":I
    sub-int v4, v0, v1

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v2, v4, v5

    .line 241
    .local v2, "offsetY":F
    iget-object v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    int-to-float v5, v3

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setY(F)V

    .line 244
    .end local v1    # "indexHeight":I
    .end local v2    # "offsetY":F
    :cond_0
    return-void
.end method

.method private setThumbPositionByMotionEvent(F)V
    .locals 6
    .param p1, "y"    # F

    .prologue
    .line 248
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    iget-object v5, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    float-to-int v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/gallery2/widget/FastScrollBar;->getValueInRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 249
    .local v2, "targetY":I
    sget-object v3, Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setThumbPositionByMotionEvent() - targetY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " m_ScrollBarHandlePosition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 252
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 255
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 256
    .local v0, "indexHeight":I
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v1, v3, v4

    .line 257
    .local v1, "offsetY":F
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    int-to-float v4, v2

    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setY(F)V

    .line 259
    .end local v0    # "indexHeight":I
    .end local v1    # "offsetY":F
    :cond_0
    return-void
.end method

.method private showHandle()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 157
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->isScrollBarNeeded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 160
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 162
    .local v1, "scrollbarHandleAlpha":Landroid/animation/Animator;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 163
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 161
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showOrHideDateIndex(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->updateDateIndexText()V

    .line 146
    return-void
.end method

.method private showScrollBarThumbInternal()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 659
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideThumbAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideThumbAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 663
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->showHandle()V

    .line 664
    :cond_1
    return-void
.end method

.method private syncScrollOffsetY(I)I
    .locals 4
    .param p1, "viewPortHeight"    # I

    .prologue
    .line 508
    iget v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F

    iget v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ThumbPositionOffsetY:F

    add-float/2addr v2, v3

    div-float v0, v1, v2

    .line 510
    .local v0, "scrollBarProportion":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery2/widget/FastScrollBar;->scrollRecyclerViewToPosition(II)V

    .line 513
    const/high16 v0, 0x3f800000    # 1.0f

    .line 515
    :cond_0
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private syncThumbLastTouchY(I)F
    .locals 3
    .param p1, "viewPortHeight"    # I

    .prologue
    .line 520
    iget v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 521
    .local v0, "touchProportion":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 522
    const/high16 v0, 0x3f800000    # 1.0f

    .line 523
    :cond_0
    iget v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    iget-object v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    return v1
.end method

.method private updateDateIndexText()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment;->findDateForScrollBarDateIndex()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustThumbPosition()V
    .locals 15

    .prologue
    .line 580
    iget-object v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v12}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 583
    .local v3, "firstVisiblePosition":I
    iget-object v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v12}, Landroid/support/v7/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    .line 584
    .local v2, "firstCompleteVisiblePosition":I
    if-nez v2, :cond_1

    .line 586
    const/4 v12, 0x0

    iput v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    .line 587
    const/4 v12, 0x0

    iput v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    const/4 v12, -0x1

    if-eq v3, v12, :cond_0

    .line 593
    iget-object v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v13, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 595
    iget-object v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v12, v3}, Lcom/oneplus/gallery2/GridViewFragment;->findHeaderInfo(I)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v4

    .line 596
    .local v4, "headerinfo":Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    if-eqz v4, :cond_0

    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, "accumulateHeight":I
    iget-object v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GroupHeight:Ljava/util/TreeMap;

    invoke-virtual {v12}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 602
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Float;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    iget-object v13, v4, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;->dateInMilliSec:Ljava/lang/Long;

    invoke-virtual {v12, v13}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 606
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Float;>;"
    :cond_2
    iget v12, v4, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    sub-int v12, v3, v12

    iget v13, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewColumns:I

    div-int v13, v12, v13

    iget v12, v4, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    sub-int v12, v3, v12

    iget v14, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewColumns:I

    rem-int/2addr v12, v14

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_2
    add-int v7, v13, v12

    .line 607
    .local v7, "rowDiff":I
    iget v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HeaderHeight:I

    iget v13, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ItemHeight:I

    mul-int/2addr v13, v7

    add-int/2addr v12, v13

    add-int/2addr v0, v12

    .line 609
    mul-int/lit8 v12, v0, -0x1

    iput v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    .line 611
    iget-object v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v12, v3}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v8

    .line 612
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v12

    iget-object v13, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v13

    sub-int v11, v12, v13

    .line 613
    .local v11, "viewVisibleHeight":I
    iget v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    add-int/2addr v12, v11

    iput v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    .line 627
    .end local v0    # "accumulateHeight":I
    .end local v4    # "headerinfo":Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "rowDiff":I
    .end local v11    # "viewVisibleHeight":I
    :goto_3
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->getViewPortHeight()I

    move-result v12

    iget v13, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    sub-int v10, v12, v13

    .line 629
    .local v10, "viewPortHeight":I
    iget v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v10, :cond_3

    .line 630
    mul-int/lit8 v12, v10, -0x1

    iput v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    .line 632
    :cond_3
    iget v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v10

    div-float v6, v12, v13

    .line 633
    .local v6, "proportion":F
    invoke-direct {p0, v6}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setThumbPosition(F)V

    .line 636
    invoke-direct {p0, v10}, Lcom/oneplus/gallery2/widget/FastScrollBar;->syncThumbLastTouchY(I)F

    move-result v12

    iput v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F

    .line 638
    sget-object v12, Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustThumbPosition() - 3 m_ScrollOffsetY: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " proportion: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " viewPortHeight: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    .end local v6    # "proportion":F
    .end local v8    # "view":Landroid/view/View;
    .end local v10    # "viewPortHeight":I
    .restart local v0    # "accumulateHeight":I
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Float;>;"
    .restart local v4    # "headerinfo":Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    int-to-float v13, v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v13

    float-to-int v0, v12

    .line 605
    goto/16 :goto_1

    .line 606
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Float;>;"
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 618
    .end local v0    # "accumulateHeight":I
    .end local v4    # "headerinfo":Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    iget v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewColumns:I

    div-int v12, v3, v12

    iget v13, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ItemHeight:I

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    .line 620
    iget-object v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v12, v3}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v8

    .line 621
    .restart local v8    # "view":Landroid/view/View;
    iget v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ItemHeight:I

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v13

    iget-object v14, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v9, v12, v13

    .line 622
    .local v9, "viewInVisibleHeight":I
    iget v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    sub-int/2addr v12, v9

    iput v12, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    goto/16 :goto_3
.end method

.method public isDependencyThread()Z
    .locals 1

    .prologue
    .line 669
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryApplication;->isDependencyThread()Z

    move-result v0

    return v0
.end method

.method public isScrollBarThumbGrabbed()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_IsScrollBarThumbGrabbed:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_IsScrollBarThumbGrabbed:Z

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x1

    .line 320
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 204
    iput p2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    .line 206
    sget-object v0, Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged() - m_ScrollBarHandlePosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m_ScrollBarThumb.getHeight(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 326
    iget-boolean v5, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_IsScrollBarThumbGrabbed:Z

    if-nez v5, :cond_0

    .line 372
    :goto_0
    return v3

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 330
    .local v0, "action":I
    sget-object v5, Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTouchEvent() - actin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  event.getY(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    packed-switch v0, :pswitch_data_0

    .line 365
    iget-object v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v4, v10, v11}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 366
    iget-object v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 367
    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_IsScrollBarThumbGrabbed:Z

    .line 368
    invoke-direct {p0, v8}, Lcom/oneplus/gallery2/widget/FastScrollBar;->showOrHideDateIndex(I)V

    .line 372
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 335
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 338
    .local v1, "eventY":F
    iget v5, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I

    iget-object v6, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarThumb:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v2, v5

    .line 341
    .local v2, "scrollBarAvailableHeight":F
    iget v5, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ThumbPositionOffsetY:F

    sub-float/2addr v1, v5

    .line 342
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/oneplus/gallery2/widget/FastScrollBar;->getValueInRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    int-to-float v1, v5

    .line 344
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setThumbPositionByMotionEvent(F)V

    .line 347
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setRecyclerViewPosition(F)V

    .line 349
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->showScrollBarThumbInternal()V

    .line 352
    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/widget/FastScrollBar;->showOrHideDateIndex(I)V

    move v3, v4

    .line 353
    goto :goto_0

    .line 356
    .end local v1    # "eventY":F
    .end local v2    # "scrollBarAvailableHeight":F
    :pswitch_1
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v5, v10, v11}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 357
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 358
    :cond_2
    iput-boolean v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_IsScrollBarThumbGrabbed:Z

    .line 359
    invoke-direct {p0, v8}, Lcom/oneplus/gallery2/widget/FastScrollBar;->showOrHideDateIndex(I)V

    .line 362
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ThumbPositionOffsetY:F

    move v3, v4

    .line 363
    goto/16 :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public prepareGroupRowsAndHeight(Ljava/util/TreeMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, "headermap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GroupHeight:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->clear()V

    .line 560
    iget-object v7, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HeaderGroup:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->clear()V

    .line 561
    invoke-virtual {p1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/TreeMap;

    iput-object v7, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HeaderGroup:Ljava/util/TreeMap;

    .line 563
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 565
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 566
    .local v5, "mediaCounts":I
    invoke-direct {p0, v5}, Lcom/oneplus/gallery2/widget/FastScrollBar;->calculateRow(I)I

    move-result v6

    .line 567
    .local v6, "rowCount":I
    iget v7, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HeaderHeight:I

    iget v8, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ItemHeight:I

    mul-int/2addr v8, v6

    add-int/2addr v7, v8

    int-to-float v1, v7

    .line 568
    .local v1, "groupHeight":F
    iget-object v7, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GroupHeight:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 571
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v1    # "groupHeight":F
    .end local v5    # "mediaCounts":I
    .end local v6    # "rowCount":I
    :cond_0
    const/4 v3, 0x0

    .line 572
    .local v3, "itemRows":I
    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 573
    .local v4, "mediaCount":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/oneplus/gallery2/widget/FastScrollBar;->calculateRow(I)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_1

    .line 574
    .end local v4    # "mediaCount":Ljava/lang/Integer;
    :cond_1
    iput v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GroupedRows:I

    .line 576
    return-void
.end method

.method public setGridViewColumn(I)V
    .locals 0
    .param p1, "columns"    # I

    .prologue
    .line 538
    iput p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewColumns:I

    .line 539
    return-void
.end method

.method public setGridViewFragment(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    .line 554
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->getHeaderManager()Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->getGroupedandMediaCountMap()Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->prepareGroupRowsAndHeight(Ljava/util/TreeMap;)V

    .line 555
    return-void
.end method

.method public setGridViewItemHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 548
    iput p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ItemHeight:I

    .line 549
    return-void
.end method

.method public setHeaderHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 543
    iput p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HeaderHeight:I

    .line 544
    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 227
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollListener:Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 228
    return-void
.end method

.method public setScrollBarBackground(I)V
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_PaddingLeft:I

    iget v2, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_PaddingTop:I

    iget v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_PaddingRight:I

    iget v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_PaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 129
    :cond_0
    return-void
.end method

.method public setScrollBarTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarDateIndex:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public showScrollBarThumb(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 650
    if-eqz p1, :cond_1

    .line 651
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->showScrollBarThumbInternal()V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
