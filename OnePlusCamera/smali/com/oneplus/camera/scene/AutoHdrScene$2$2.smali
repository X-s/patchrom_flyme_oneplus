.class Lcom/oneplus/camera/scene/AutoHdrScene$2$2;
.super Ljava/lang/Object;
.source "AutoHdrScene.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/scene/AutoHdrScene$2;->run()V
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
        "Lcom/oneplus/camera/Camera$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/scene/AutoHdrScene$2;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/scene/AutoHdrScene$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/scene/AutoHdrScene$2;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/oneplus/camera/scene/AutoHdrScene$2$2;->this$1:Lcom/oneplus/camera/scene/AutoHdrScene$2;

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
            "Lcom/oneplus/camera/Camera$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/Camera$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/Camera$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/Camera$State;>;"
    const/4 v3, 0x0

    .line 175
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene$2$2;->this$1:Lcom/oneplus/camera/scene/AutoHdrScene$2;

    iget-object v0, v0, Lcom/oneplus/camera/scene/AutoHdrScene$2;->this$0:Lcom/oneplus/camera/scene/AutoHdrScene;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-static {v0, v2, v3, v3, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 173
    :cond_0
    return-void
.end method
