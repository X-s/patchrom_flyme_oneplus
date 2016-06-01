.class Lcom/oneplus/camera/location/UILocationManagerImpl$3;
.super Ljava/lang/Object;
.source "UILocationManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/location/UILocationManagerImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$3;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

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
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$3;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    # invokes: Lcom/oneplus/camera/location/UILocationManagerImpl;->stopLocationListeners()V
    invoke-static {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->access$200(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$3;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    # getter for: Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z
    invoke-static {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->access$300(Lcom/oneplus/camera/location/UILocationManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$3;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/camera/location/UILocationManagerImpl;->m_IsMonitoringSysLocationMode:Z
    invoke-static {v0, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->access$302(Lcom/oneplus/camera/location/UILocationManagerImpl;Z)Z

    .line 143
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$3;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$3;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    # getter for: Lcom/oneplus/camera/location/UILocationManagerImpl;->m_SysLocationModeChangedReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->access$400(Lcom/oneplus/camera/location/UILocationManagerImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$3;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    # invokes: Lcom/oneplus/camera/location/UILocationManagerImpl;->checkSystemLocationMode()V
    invoke-static {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->access$500(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    goto :goto_0
.end method
