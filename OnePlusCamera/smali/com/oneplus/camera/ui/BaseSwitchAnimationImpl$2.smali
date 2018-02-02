.class Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$2;
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
        "Ljava/lang/Boolean;",
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
    .line 215
    iput-object p1, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    sget-object v1, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    const/16 v1, -0x2724

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->onFirstPreviewFrameReceived()V

    .line 218
    :cond_0
    return-void
.end method
