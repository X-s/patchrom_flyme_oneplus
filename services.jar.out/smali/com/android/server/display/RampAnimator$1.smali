.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    .prologue
    .line 135
    .local p1, "this$0":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 138
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get1(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    .line 139
    .local v2, "frameTimeNanos":J
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get3(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v8

    sub-long v8, v2, v8

    long-to-float v7, v8

    .line 140
    const v8, 0x3089705f    # 1.0E-9f

    .line 139
    mul-float v5, v7, v8

    .line 141
    .local v5, "timeDelta":F
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7, v2, v3}, Lcom/android/server/display/RampAnimator;->-set3(Lcom/android/server/display/RampAnimator;J)J

    .line 153
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->sBrightnessNoAnimation:Z

    if-eqz v7, :cond_2

    move v4, v6

    .line 155
    .local v4, "scale":F
    :goto_0
    cmpl-float v6, v4, v6

    if-nez v6, :cond_3

    .line 157
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    .line 179
    :goto_1
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v1

    .line 180
    .local v1, "oldCurrentValue":I
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-set2(Lcom/android/server/display/RampAnimator;I)I

    .line 182
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-eq v1, v6, :cond_0

    .line 183
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get6(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get5(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 186
    :cond_0
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-eq v6, v7, :cond_6

    .line 187
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-wrap0(Lcom/android/server/display/RampAnimator;)V

    .line 137
    :cond_1
    :goto_2
    return-void

    .line 153
    .end local v1    # "oldCurrentValue":I
    .end local v4    # "scale":F
    :cond_2
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    goto :goto_0

    .line 165
    .restart local v4    # "scale":F
    :cond_3
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get7(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    div-float v0, v6, v4

    .line 167
    .local v0, "amount":F
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-le v6, v7, :cond_4

    .line 168
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    add-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_1

    .line 172
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    const/high16 v7, 0x41f00000    # 30.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v0, v6

    if-gez v6, :cond_5

    .line 173
    const/high16 v0, 0x3f800000    # 1.0f

    .line 176
    :cond_5
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    goto/16 :goto_1

    .line 189
    .end local v0    # "amount":F
    .restart local v1    # "oldCurrentValue":I
    :cond_6
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-set1(Lcom/android/server/display/RampAnimator;Z)Z

    .line 190
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get4(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 191
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-get4(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    goto :goto_2
.end method
