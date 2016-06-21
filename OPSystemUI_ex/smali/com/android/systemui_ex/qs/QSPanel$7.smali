.class Lcom/android/systemui_ex/qs/QSPanel$7;
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
    .line 550
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSPanel$7;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$7;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    # getter for: Lcom/android/systemui_ex/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui_ex/qs/QSPanel;->access$1200(Lcom/android/systemui_ex/qs/QSPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 553
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$7;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui_ex/qs/QSPanel;->setDetailRecord(Lcom/android/systemui_ex/qs/QSPanel$Record;)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->access$1300(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$Record;)V

    .line 554
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$7;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/qs/QSPanel;->mClosingDetail:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->access$1402(Lcom/android/systemui_ex/qs/QSPanel;Z)Z

    .line 555
    return-void
.end method
