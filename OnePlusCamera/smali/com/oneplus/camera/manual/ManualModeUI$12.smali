.class Lcom/oneplus/camera/manual/ManualModeUI$12;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$12;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 1227
    check-cast p1, Lcom/oneplus/camera/ExposureController;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI$12;->onComponentFound(Lcom/oneplus/camera/ExposureController;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ExposureController;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/camera/ExposureController;

    .prologue
    .line 1229
    sget-object v0, Lcom/oneplus/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/camera/manual/ManualModeUI$12$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/manual/ManualModeUI$12$1;-><init>(Lcom/oneplus/camera/manual/ManualModeUI$12;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1227
    return-void
.end method
