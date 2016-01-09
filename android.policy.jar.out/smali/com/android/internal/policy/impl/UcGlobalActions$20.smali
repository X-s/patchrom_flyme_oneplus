.class Lcom/android/internal/policy/impl/UcGlobalActions$20;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;->onHidePowerLogo(II)V
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
    .line 1849
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$20;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1868
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$20;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/UcGlobalActions;->onShutDown()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4700(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    .line 1864
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1857
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1853
    return-void
.end method
