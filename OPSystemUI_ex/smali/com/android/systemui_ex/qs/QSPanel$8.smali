.class Lcom/android/systemui_ex/qs/QSPanel$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/qs/QSPanel;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSPanel$8;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 562
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 563
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$8;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    # getter for: Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;
    invoke-static {v0}, Lcom/android/systemui_ex/qs/QSPanel;->access$600(Lcom/android/systemui_ex/qs/QSPanel;)Lcom/android/systemui_ex/qs/QSPanel$Record;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$8;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui_ex/qs/QSPanel;->setGridContentVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->access$1500(Lcom/android/systemui_ex/qs/QSPanel;Z)V

    .line 571
    :cond_0
    return-void
.end method
