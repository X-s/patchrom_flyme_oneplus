.class Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$18;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->showFocusIndicator(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$18;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$18;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-get4(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_IN_ANIMATING:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v0, v1, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$18;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap4(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 1627
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$18;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap5(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    .line 1622
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1618
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$18;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_IN_ANIMATING:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap4(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 1612
    return-void
.end method
