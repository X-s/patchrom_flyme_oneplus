.class Lcom/android/systemui_ex/recents/views/SwipeHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/SwipeHelper;->dismissChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/SwipeHelper;

.field final synthetic val$canAnimViewBeDismissed:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$3;->this$0:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$3;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$3;->val$canAnimViewBeDismissed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$3;->this$0:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$3;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 331
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$3;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper$3;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 334
    :cond_0
    return-void
.end method
