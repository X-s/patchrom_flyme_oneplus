.class Lcom/android/systemui_ex/SwipeHelper$3;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canAnimViewBeDismissed:Z


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/systemui_ex/SwipeHelper$3;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui_ex/SwipeHelper$3;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui_ex/SwipeHelper$3;->val$canAnimViewBeDismissed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$3;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$3;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui_ex/SwipeHelper$3;->val$canAnimViewBeDismissed:Z

    # invokes: Lcom/android/systemui_ex/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui_ex/SwipeHelper;->access$1700(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;Z)V

    .line 516
    return-void
.end method
