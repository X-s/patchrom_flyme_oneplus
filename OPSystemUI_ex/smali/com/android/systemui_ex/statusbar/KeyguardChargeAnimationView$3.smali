.class Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;
.super Ljava/lang/Object;
.source "KeyguardChargeAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 202
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->access$100(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 207
    .local v10, "animatedValue":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v11, v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleSize:[I
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->access$200(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)[I

    move-result-object v12

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    mul-int/lit16 v2, v11, 0xc8

    sub-int v2, v10, v2

    int-to-double v2, v2

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x4092c00000000000L    # 1200.0

    # invokes: Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->easeOutCubic(DDDD)D
    invoke-static/range {v1 .. v9}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->access$300(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;DDDD)D

    move-result-wide v2

    const-wide v4, 0x4071800000000000L    # 280.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const/16 v2, 0x118

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v12, v11

    .line 209
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAlpha:[I
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->access$400(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)[I

    move-result-object v1

    aget v12, v1, v11

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    mul-int/lit16 v2, v11, 0xc8

    sub-int v2, v10, v2

    int-to-double v2, v2

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x4092c00000000000L    # 1200.0

    # invokes: Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->easeInQuart(DDDD)D
    invoke-static/range {v1 .. v9}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->access$500(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;DDDD)D

    move-result-wide v2

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAlpha:[I
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->access$400(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)[I

    move-result-object v1

    aget v1, v1, v11

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sub-int v0, v12, v1

    .line 210
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPaint:[Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->access$600(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)[Landroid/graphics/Paint;

    move-result-object v1

    aget-object v1, v1, v11

    if-lez v0, :cond_0

    .end local v0    # "alpha":I
    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 207
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 210
    .restart local v0    # "alpha":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 213
    .end local v0    # "alpha":I
    :cond_1
    const/16 v1, 0x514

    if-le v10, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    iget-boolean v1, v1, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mChargingTextAnimation:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPlugged:Z
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->access$700(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->doChargingTextAnimation(Z)V

    .line 216
    :cond_2
    return-void
.end method
