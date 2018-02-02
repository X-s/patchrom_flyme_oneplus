.class Lcom/oneplus/camera/SmileCaptureControllerImpl$5;
.super Ljava/lang/Object;
.source "SmileCaptureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/SmileCaptureControllerImpl;->onInitialize()V
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
        "Lcom/oneplus/base/BaseActivity$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/SmileCaptureControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/SmileCaptureControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/SmileCaptureControllerImpl;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl$5;->this$0:Lcom/oneplus/camera/SmileCaptureControllerImpl;

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
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl$5;->this$0:Lcom/oneplus/camera/SmileCaptureControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->-wrap3(Lcom/oneplus/camera/SmileCaptureControllerImpl;)V

    .line 234
    :cond_0
    return-void
.end method
