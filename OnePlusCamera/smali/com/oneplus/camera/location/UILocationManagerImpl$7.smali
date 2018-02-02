.class Lcom/oneplus/camera/location/UILocationManagerImpl$7;
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
    .param p1, "this$0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

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
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 311
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v2, v3, :cond_1

    .line 313
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-wrap7(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    .line 314
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-get1(Lcom/oneplus/camera/location/UILocationManagerImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v1, v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-set0(Lcom/oneplus/camera/location/UILocationManagerImpl;Z)Z

    .line 317
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-get3(Lcom/oneplus/camera/location/UILocationManagerImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v2, v3, :cond_4

    .line 322
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v2}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-get2(Lcom/oneplus/camera/location/UILocationManagerImpl;)Z

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v3}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-wrap0(Lcom/oneplus/camera/location/UILocationManagerImpl;)Lcom/oneplus/base/Settings;

    move-result-object v3

    const-string/jumbo v4, "Location.Save"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 324
    iget-object v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    iget-object v3, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v3}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-get2(Lcom/oneplus/camera/location/UILocationManagerImpl;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-static {v2, v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-set2(Lcom/oneplus/camera/location/UILocationManagerImpl;Z)Z

    .line 325
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v0, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-set1(Lcom/oneplus/camera/location/UILocationManagerImpl;Z)Z

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-wrap1(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    .line 328
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-wrap2(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 324
    goto :goto_1

    .line 330
    :cond_4
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v2, :cond_0

    .line 331
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v0, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-set1(Lcom/oneplus/camera/location/UILocationManagerImpl;Z)Z

    goto :goto_0
.end method
