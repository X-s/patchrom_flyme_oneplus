.class public Lcom/oneplus/drawable/RepeatTransitionDrawable;
.super Landroid/graphics/drawable/TransitionDrawable;
.source "RepeatTransitionDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/drawable/RepeatTransitionDrawable$1;,
        Lcom/oneplus/drawable/RepeatTransitionDrawable$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_Duration:I

.field private final m_Loops:I

.field private final m_TransitionRunnables:[Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/oneplus/drawable/RepeatTransitionDrawable;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/drawable/RepeatTransitionDrawable;->m_Duration:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oneplus/drawable/RepeatTransitionDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/RepeatTransitionDrawable;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I
    .param p3, "loops"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Runnable;

    new-instance v1, Lcom/oneplus/drawable/RepeatTransitionDrawable$1;

    invoke-direct {v1, p0}, Lcom/oneplus/drawable/RepeatTransitionDrawable$1;-><init>(Lcom/oneplus/drawable/RepeatTransitionDrawable;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 23
    new-instance v1, Lcom/oneplus/drawable/RepeatTransitionDrawable$2;

    invoke-direct {v1, p0}, Lcom/oneplus/drawable/RepeatTransitionDrawable$2;-><init>(Lcom/oneplus/drawable/RepeatTransitionDrawable;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 15
    iput-object v0, p0, Lcom/oneplus/drawable/RepeatTransitionDrawable;->m_TransitionRunnables:[Ljava/lang/Runnable;

    .line 41
    iput p2, p0, Lcom/oneplus/drawable/RepeatTransitionDrawable;->m_Duration:I

    .line 42
    iput p3, p0, Lcom/oneplus/drawable/RepeatTransitionDrawable;->m_Loops:I

    .line 38
    return-void
.end method


# virtual methods
.method public startRepeatTransition()V
    .locals 6

    .prologue
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 51
    .local v2, "startTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/drawable/RepeatTransitionDrawable;->m_Loops:I

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/oneplus/drawable/RepeatTransitionDrawable;->m_TransitionRunnables:[Ljava/lang/Runnable;

    rem-int/lit8 v4, v0, 0x2

    aget-object v1, v1, v4

    iget v4, p0, Lcom/oneplus/drawable/RepeatTransitionDrawable;->m_Duration:I

    mul-int/2addr v4, v0

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-virtual {p0, v1, v4, v5}, Lcom/oneplus/drawable/RepeatTransitionDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
