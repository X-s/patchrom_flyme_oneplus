.class Lcom/oneplus/camera/manual/ManualModeUI$10;
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
        "Lcom/oneplus/camera/scene/SceneManager;",
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
    .line 1206
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$10;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 1209
    check-cast p1, Lcom/oneplus/camera/scene/SceneManager;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/manual/ManualModeUI$10;->onComponentFound(Lcom/oneplus/camera/scene/SceneManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/scene/SceneManager;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/camera/scene/SceneManager;

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$10;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set16(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/scene/SceneManager;)Lcom/oneplus/camera/scene/SceneManager;

    .line 1212
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$10;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap19(Lcom/oneplus/camera/manual/ManualModeUI;)V

    .line 1209
    return-void
.end method
