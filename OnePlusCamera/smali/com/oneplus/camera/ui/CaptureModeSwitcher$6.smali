.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

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
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_1

    .line 671
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->openInitialCaptureModesPanel()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$1500(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanel(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$3100(Lcom/oneplus/camera/ui/CaptureModeSwitcher;ZJ)V

    .line 675
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x1

    # setter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsFirstCaptureModesPanelOpen:Z
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$3202(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z

    goto :goto_0
.end method
