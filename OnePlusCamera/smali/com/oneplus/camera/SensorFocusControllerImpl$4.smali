.class Lcom/oneplus/camera/SensorFocusControllerImpl$4;
.super Ljava/lang/Object;
.source "SensorFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


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
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<[F>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/SensorFocusControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/SensorFocusControllerImpl;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$4;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

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
            "<[F>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<[F>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<[F>;"
    iget-object v1, p0, Lcom/oneplus/camera/SensorFocusControllerImpl$4;->this$0:Lcom/oneplus/camera/SensorFocusControllerImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-static {v1, v0}, Lcom/oneplus/camera/SensorFocusControllerImpl;->-wrap1(Lcom/oneplus/camera/SensorFocusControllerImpl;[F)V

    .line 313
    return-void
.end method
