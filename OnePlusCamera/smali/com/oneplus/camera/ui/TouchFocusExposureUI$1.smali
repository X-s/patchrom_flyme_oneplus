.class Lcom/oneplus/camera/ui/TouchFocusExposureUI$1;
.super Ljava/lang/Object;
.source "TouchFocusExposureUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TouchFocusExposureUI;->bindToFocusController()Z
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
        "Lcom/oneplus/camera/FocusState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$1;->this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;

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
            "Lcom/oneplus/camera/FocusState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/FocusState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/FocusState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/FocusState;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$1;->this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FocusState;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-wrap0(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Lcom/oneplus/camera/FocusState;)V

    .line 103
    return-void
.end method
