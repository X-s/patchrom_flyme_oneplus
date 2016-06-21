.class Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardChargeAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->startCircleAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$4;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$4;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    # invokes: Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->stopCircleAnimation()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->access$800(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)V

    .line 223
    return-void
.end method
