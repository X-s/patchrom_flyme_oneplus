.class Lcom/oneplus/camera/ui/CameraWizardImpl$1;
.super Ljava/lang/Object;
.source "CameraWizardImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraWizardImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CameraWizardImpl;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

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
    .line 119
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get3(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "Wizard.SimpleModesSwitch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-wrap5(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    goto :goto_0
.end method
