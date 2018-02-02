.class Lcom/oneplus/camera/manual/ManualModeUI$32;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/base/SettingsValueChangedEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$32;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 1540
    check-cast p3, Lcom/oneplus/base/SettingsValueChangedEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/manual/ManualModeUI$32;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/SettingsValueChangedEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/SettingsValueChangedEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/base/SettingsValueChangedEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/SettingsValueChangedEventArgs;",
            ">;",
            "Lcom/oneplus/base/SettingsValueChangedEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1543
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/SettingsValueChangedEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$32;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap3(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/base/Settings;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1544
    return-void

    .line 1545
    :cond_0
    const-string/jumbo v0, "RawCapture"

    invoke-virtual {p3}, Lcom/oneplus/base/SettingsValueChangedEventArgs;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1547
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$32;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$32;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap4(Lcom/oneplus/camera/manual/ManualModeUI;)Lcom/oneplus/camera/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$32;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap22(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;Z)V

    .line 1541
    :cond_1
    return-void
.end method
