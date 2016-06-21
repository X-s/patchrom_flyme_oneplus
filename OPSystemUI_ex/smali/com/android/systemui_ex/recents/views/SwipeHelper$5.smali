.class Lcom/android/systemui_ex/recents/views/SwipeHelper$5;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/SwipeHelper;->snapChild(Landroid/view/View;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/SwipeHelper;

.field final synthetic val$canAnimViewBeDismissed:Z

.field final synthetic val$changeLockedState:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/SwipeHelper;ZLandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->this$0:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    iput-boolean p2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->val$canAnimViewBeDismissed:Z

    iput-object p3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->val$changeLockedState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 356
    iget-boolean v1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->val$canAnimViewBeDismissed:Z

    if-eqz v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    check-cast v0, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 361
    .local v0, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskView;->isLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->this$0:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 366
    .end local v0    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->val$changeLockedState:Z

    if-nez v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->this$0:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    iget-object v1, v1, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->this$0:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->access$000(Lcom/android/systemui_ex/recents/views/SwipeHelper;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->onSwipeChanged(Landroid/view/View;F)V

    .line 369
    :cond_1
    return-void
.end method
