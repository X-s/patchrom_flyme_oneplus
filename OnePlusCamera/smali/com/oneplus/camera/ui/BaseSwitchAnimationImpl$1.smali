.class Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$1;
.super Ljava/lang/Object;
.source "BaseSwitchAnimationImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->onInitialize()V
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
        "Lcom/oneplus/camera/OperationState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$1;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/OperationState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/OperationState;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$1;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    sget-object v1, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 208
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$1;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    const-wide/16 v2, 0x1388

    const/16 v1, -0x2724

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 204
    :cond_0
    return-void
.end method
