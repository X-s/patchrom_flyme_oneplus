.class Lcom/oneplus/camera/SensorFocusControllerImpl$2;
.super Ljava/lang/Object;
.source "SensorFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/SensorFocusControllerImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/oneplus/camera/FocusController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 239
    check-cast p1, Lcom/oneplus/camera/FocusController;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->onComponentFound(Lcom/oneplus/camera/FocusController;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/FocusController;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/FocusController;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-set2(Lcom/oneplus/camera/SensorFocusControllerImpl;Lcom/oneplus/camera/FocusController;)Lcom/oneplus/camera/FocusController;

    .line 243
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-get2(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/FocusController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-get2(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/FocusController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$2$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$2$1;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl$2;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 265
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-get2(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/FocusController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$2$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$2$2;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl$2;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 279
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$2;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-get2(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/FocusController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FocusController;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$2$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$2$3;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl$2;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 239
    :cond_0
    return-void
.end method
