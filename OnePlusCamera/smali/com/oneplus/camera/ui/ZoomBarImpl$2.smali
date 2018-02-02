.class Lcom/oneplus/camera/ui/ZoomBarImpl$2;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 276
    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 281
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap0(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get7(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/ZoomController;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 285
    .local v0, "currentZoom":F
    cmpl-float v1, v0, v3

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get7(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/ZoomController;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ZoomController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    sget-object v2, Lcom/oneplus/camera/ui/ZoomBarImpl;->EVENT_ZOOM_VALUE_CLICK:Lcom/oneplus/base/EventKey;

    sget-object v3, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-static {v1, v2, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap4(Lcom/oneplus/camera/ui/ZoomBarImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 279
    return-void

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get7(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/ZoomController;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ZoomController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method
