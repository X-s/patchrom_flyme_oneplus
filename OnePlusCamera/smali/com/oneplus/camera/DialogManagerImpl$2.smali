.class Lcom/oneplus/camera/DialogManagerImpl$2;
.super Ljava/lang/Object;
.source "DialogManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/DialogManagerImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/DialogManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/DialogManagerImpl;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oneplus/camera/DialogManagerImpl$2;->this$0:Lcom/oneplus/camera/DialogManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
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
    .line 222
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl$2;->this$0:Lcom/oneplus/camera/DialogManagerImpl;

    iget-object v1, p0, Lcom/oneplus/camera/DialogManagerImpl$2;->this$0:Lcom/oneplus/camera/DialogManagerImpl;

    # getter for: Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    invoke-static {v1}, Lcom/oneplus/camera/DialogManagerImpl;->access$500(Lcom/oneplus/camera/DialogManagerImpl;)Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/oneplus/camera/DialogManagerImpl;->dismissDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/DialogManagerImpl;->access$100(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V

    .line 224
    :cond_0
    return-void
.end method
