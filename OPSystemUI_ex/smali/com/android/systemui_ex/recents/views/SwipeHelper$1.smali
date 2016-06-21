.class Lcom/android/systemui_ex/recents/views/SwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/SwipeHelper;->dismissChildAnimated(Landroid/view/View;FLjava/lang/Runnable;JZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/SwipeHelper;

.field final synthetic val$canAnimViewBeDismissed:Z

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;->val$canAnimViewBeDismissed:Z

    iput-object p4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->onChildDismissedAnimated(Landroid/view/View;)V

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 286
    return-void
.end method
