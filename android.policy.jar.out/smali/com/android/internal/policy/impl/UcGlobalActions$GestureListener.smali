.class Lcom/android/internal/policy/impl/UcGlobalActions$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "UcGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 1875
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GestureListener;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcGlobalActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/UcGlobalActions$1;

    .prologue
    .line 1875
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UcGlobalActions$GestureListener;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GestureListener;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryVelocityY:F
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4802(Lcom/android/internal/policy/impl/UcGlobalActions;F)F

    .line 1880
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
