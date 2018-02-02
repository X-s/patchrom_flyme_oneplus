.class Lcom/oneplus/camera/ui/ZoomBarImpl$14;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ZoomBarImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ZoomBarImpl;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$14;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 5
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Float;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Float;>;"
    const/high16 v3, 0x3f800000    # 1.0f

    .line 561
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 562
    .local v0, "maxZoom":F
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$14;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get12(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/ui/ZoomBarImpl$ZoomWheelDrawable;

    move-result-object v2

    cmpl-float v1, v0, v3

    if-ltz v1, :cond_0

    sub-float v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/oneplus/camera/ui/ZoomBarImpl$ZoomWheelDrawable;->setSegmentCount(I)V

    .line 563
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$14;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get10(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/widget/Wheel;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$14;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v2, v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap1(Lcom/oneplus/camera/ui/ZoomBarImpl;F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/Wheel;->setMaxValue(I)V

    .line 564
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$14;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get10(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/widget/Wheel;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$14;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$14;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get7(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/ZoomController;

    move-result-object v1

    sget-object v4, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v3, v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap1(Lcom/oneplus/camera/ui/ZoomBarImpl;F)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/oneplus/widget/Wheel;->setValue(I)V

    .line 565
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$14;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get10(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/widget/Wheel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/Wheel;->setCenterValue(I)V

    .line 559
    return-void

    .line 562
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
