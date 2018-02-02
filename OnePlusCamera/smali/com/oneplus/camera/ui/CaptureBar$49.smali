.class Lcom/oneplus/camera/ui/CaptureBar$49;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->onInitialize()V
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
        "Lcom/oneplus/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 5
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    const/4 v3, 0x0

    .line 2185
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-static {v2, v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap2(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/camera/capturemode/CaptureMode;)Z

    .line 2188
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get16(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Settings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2190
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get16(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Settings;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureBar;->-get30(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2191
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->-set8(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Settings;)Lcom/oneplus/base/Settings;

    .line 2193
    :cond_0
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v0, :cond_1

    .line 2195
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap3(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Settings;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-set8(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Settings;)Lcom/oneplus/base/Settings;

    .line 2196
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get16(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Settings;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureBar;->-get30(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2198
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap54(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2199
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap52(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2200
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap51(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2201
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap40(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2202
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap44(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2203
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureMode;

    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-static {v4, v2}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap1(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/capturemode/CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-static {v4, v2}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap1(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/capturemode/CaptureMode;)Z

    move-result v2

    :goto_0
    invoke-static {v3, v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap48(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/camera/capturemode/CaptureMode;Z)V

    .line 2204
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap45(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2205
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap46(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2206
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$49;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap50(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 2182
    return-void

    .line 2203
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
