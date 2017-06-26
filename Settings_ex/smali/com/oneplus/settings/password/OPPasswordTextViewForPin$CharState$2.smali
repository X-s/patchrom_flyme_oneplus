.class Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPPasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 464
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isDelete:Z
    invoke-static {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$400(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->isDelete:Z
    invoke-static {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$402(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Z)Z

    .line 468
    :cond_0
    return-void
.end method
