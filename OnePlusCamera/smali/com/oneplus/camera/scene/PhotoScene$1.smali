.class Lcom/oneplus/camera/scene/PhotoScene$1;
.super Ljava/lang/Object;
.source "PhotoScene.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/scene/PhotoScene;
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
.field final synthetic this$0:Lcom/oneplus/camera/scene/PhotoScene;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/scene/PhotoScene;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/scene/PhotoScene;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oneplus/camera/scene/PhotoScene$1;->this$0:Lcom/oneplus/camera/scene/PhotoScene;

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
    .line 94
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene$1;->this$0:Lcom/oneplus/camera/scene/PhotoScene;

    invoke-static {v1}, Lcom/oneplus/camera/scene/PhotoScene;->-wrap0(Lcom/oneplus/camera/scene/PhotoScene;)Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 97
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoScene$1;->this$0:Lcom/oneplus/camera/scene/PhotoScene;

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/scene/PhotoScene;->checkSceneModeValid(Lcom/oneplus/camera/Camera;)V

    .line 92
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_0
    return-void
.end method
