.class Lcom/android/systemui_ex/statusbar/phone/ScrimController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/ScrimController;->startScrimAnimation(Lcom/android/systemui_ex/statusbar/ScrimView;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

.field final synthetic val$scrim:Lcom/android/systemui_ex/statusbar/ScrimView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/ScrimController;Lcom/android/systemui_ex/statusbar/ScrimView;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$2;->val$scrim:Lcom/android/systemui_ex/statusbar/ScrimView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->access$200(Lcom/android/systemui_ex/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->access$200(Lcom/android/systemui_ex/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 281
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    # setter for: Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->access$202(Lcom/android/systemui_ex/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$2;->val$scrim:Lcom/android/systemui_ex/statusbar/ScrimView;

    const v1, 0x7f0f002b

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ScrimView;->setTag(ILjava/lang/Object;)V

    .line 284
    return-void
.end method
