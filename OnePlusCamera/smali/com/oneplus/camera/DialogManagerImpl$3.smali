.class Lcom/oneplus/camera/DialogManagerImpl$3;
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
        "Lcom/oneplus/base/ScreenSize;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/DialogManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/DialogManagerImpl;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/oneplus/camera/DialogManagerImpl$3;->this$0:Lcom/oneplus/camera/DialogManagerImpl;

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
            "Lcom/oneplus/base/ScreenSize;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/ScreenSize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/ScreenSize;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/ScreenSize;>;"
    iget-object v1, p0, Lcom/oneplus/camera/DialogManagerImpl$3;->this$0:Lcom/oneplus/camera/DialogManagerImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    # invokes: Lcom/oneplus/camera/DialogManagerImpl;->updateDefaultDialogParams(Lcom/oneplus/base/ScreenSize;)V
    invoke-static {v1, v0}, Lcom/oneplus/camera/DialogManagerImpl;->access$600(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/base/ScreenSize;)V

    .line 232
    return-void
.end method
