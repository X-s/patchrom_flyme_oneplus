.class Lcom/android/systemui_ex/SwipeHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


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

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/systemui_ex/SwipeHelper$2;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui_ex/SwipeHelper$2;->val$animView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui_ex/SwipeHelper$2;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui_ex/SwipeHelper$2;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$2;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # setter for: Lcom/android/systemui_ex/SwipeHelper;->mDismissSwipingRight:Z
    invoke-static {v0, v2}, Lcom/android/systemui_ex/SwipeHelper;->access$1402(Lcom/android/systemui_ex/SwipeHelper;Z)Z

    .line 499
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$2;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$2;->val$animView:Landroid/view/View;

    # invokes: Lcom/android/systemui_ex/SwipeHelper;->hideNotificationSwipeBackground(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->access$900(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)V

    .line 500
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$2;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$2;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui_ex/SwipeHelper;->getTranslation(Landroid/view/View;)F
    invoke-static {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->access$1500(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$2;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/SwipeHelper;->access$1600(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$2;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$2;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$2;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$2;->val$animView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 509
    return-void
.end method
