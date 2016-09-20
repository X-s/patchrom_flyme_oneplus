.class Lcom/oneplus/camera/manual/KnobView$2;
.super Ljava/lang/Object;
.source "KnobView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/KnobView;->setKnobViewRotationSmooth(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/KnobView;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/KnobView;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/oneplus/camera/manual/KnobView$2;->this$0:Lcom/oneplus/camera/manual/KnobView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 562
    .local v0, "updateRotation":F
    iget-object v1, p0, Lcom/oneplus/camera/manual/KnobView$2;->this$0:Lcom/oneplus/camera/manual/KnobView;

    float-to-double v2, v0

    # invokes: Lcom/oneplus/camera/manual/KnobView;->setKnobViewRotation(D)V
    invoke-static {v1, v2, v3}, Lcom/oneplus/camera/manual/KnobView;->access$200(Lcom/oneplus/camera/manual/KnobView;D)V

    .line 563
    return-void
.end method
