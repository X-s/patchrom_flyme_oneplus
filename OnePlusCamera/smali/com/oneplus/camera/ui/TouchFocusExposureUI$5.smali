.class Lcom/oneplus/camera/ui/TouchFocusExposureUI$5;
.super Ljava/lang/Object;
.source "TouchFocusExposureUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TouchFocusExposureUI;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$5;->this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;

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
    .line 303
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$5;->this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-set0(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Z)Z

    .line 301
    :cond_0
    return-void
.end method
