.class Lcom/oneplus/camera/ui/ZoomBarImpl$1;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ZoomBarImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ZoomBarImpl;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 148
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get1(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get2(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/ZoomController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-set0(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)Z

    .line 151
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get2(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/ZoomController;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/ZoomController;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v4

    mul-float/2addr v1, v2

    add-float v0, v4, v1

    .line 152
    .local v0, "zoom":F
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get2(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/ZoomController;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ZoomController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-set0(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)Z

    .line 146
    .end local v0    # "zoom":F
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 142
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 138
    return-void
.end method
