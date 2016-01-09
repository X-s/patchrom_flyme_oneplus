.class Lcom/android/internal/policy/impl/UcGlobalActions$13;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;->onShowPowerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$13;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x1

    .line 1551
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$13;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2300(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcPowerOffView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$13;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2300(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcPowerOffView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcPowerOffView;->clearAnimation()V

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$13;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation1:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2402(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z

    .line 1556
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$13;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation1:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2400(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$13;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation2:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2500(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$13;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mTouchValid:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2602(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z

    .line 1559
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1547
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1543
    return-void
.end method
