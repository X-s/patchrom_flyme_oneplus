.class Lcom/oneplus/camera/UIExposureControllerImpl$2;
.super Ljava/lang/Object;
.source "UIExposureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIExposureControllerImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/UIExposureControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIExposureControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/UIExposureControllerImpl;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oneplus/camera/UIExposureControllerImpl$2;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

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
    .line 119
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl$2;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/UIExposureControllerImpl;->-wrap1(Lcom/oneplus/camera/UIExposureControllerImpl;)V

    .line 117
    :cond_0
    return-void
.end method
