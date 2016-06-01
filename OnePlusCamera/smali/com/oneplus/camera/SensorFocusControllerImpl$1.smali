.class Lcom/oneplus/camera/SensorFocusControllerImpl$1;
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
        "Lcom/oneplus/camera/ExposureController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 181
    check-cast p1, Lcom/oneplus/camera/ExposureController;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->onComponentFound(Lcom/oneplus/camera/ExposureController;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ExposureController;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/ExposureController;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    # setter for: Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;
    invoke-static {v0, p1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->access$002(Lcom/oneplus/camera/SensorFocusControllerImpl;Lcom/oneplus/camera/ExposureController;)Lcom/oneplus/camera/ExposureController;

    .line 186
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    # getter for: Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z
    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->access$100(Lcom/oneplus/camera/SensorFocusControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    # getter for: Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;
    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->access$000(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/ExposureController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    # getter for: Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;
    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->access$000(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/ExposureController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z
    invoke-static {v0, v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->access$102(Lcom/oneplus/camera/SensorFocusControllerImpl;Z)Z

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    # getter for: Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;
    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->access$000(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/ExposureController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    # getter for: Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;
    invoke-static {v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->access$000(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/ExposureController;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$1;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    # getter for: Lcom/oneplus/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;
    invoke-static {v1}, Lcom/oneplus/camera/SensorFocusControllerImpl;->access$000(Lcom/oneplus/camera/SensorFocusControllerImpl;)Lcom/oneplus/camera/ExposureController;

    sget-object v1, Lcom/oneplus/camera/ExposureController;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SensorFocusControllerImpl$1$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SensorFocusControllerImpl$1$1;-><init>(Lcom/oneplus/camera/SensorFocusControllerImpl$1;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 205
    :cond_1
    return-void
.end method
