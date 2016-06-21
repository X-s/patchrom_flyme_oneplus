.class Lcom/android/systemui_ex/SwipeHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/SwipeHelper;->snapChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/systemui_ex/SwipeHelper$5;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui_ex/SwipeHelper$5;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$5;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$5;->val$animView:Landroid/view/View;

    # invokes: Lcom/android/systemui_ex/SwipeHelper;->hideNotificationSwipeBackground(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->access$900(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$5;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/SwipeHelper;->access$1600(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$5;->val$animView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/SwipeHelper$Callback;->onChildSnappedBack(Landroid/view/View;)V

    .line 546
    return-void
.end method
