.class Lcom/oneplus/camera/manual/ManualModeUI$12$1;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI$12;->onComponentFound(Lcom/oneplus/camera/ExposureController;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/camera/Camera$MeteringRect;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/manual/ManualModeUI$12;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/manual/ManualModeUI$12;

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$12$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1234
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;>;"
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$12$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$12;

    iget-object v0, v0, Lcom/oneplus/camera/manual/ManualModeUI$12;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap0(Lcom/oneplus/camera/manual/ManualModeUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    :cond_0
    check-cast p1, Lcom/oneplus/camera/ExposureController;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    sget-object v0, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$12$1;->this$1:Lcom/oneplus/camera/manual/ManualModeUI$12;

    iget-object v1, v1, Lcom/oneplus/camera/manual/ManualModeUI$12;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->getEV()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1232
    :cond_1
    return-void
.end method
